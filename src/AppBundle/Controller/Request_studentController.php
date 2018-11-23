<?php

namespace AppBundle\Controller;

use Symfony\Component\HttpFoundation\Response;

use AppBundle\Entity\Student;
use AppBundle\Entity\Project;
use AppBundle\Entity\Request_student;
use AppBundle\Form\ProjectType;
use Doctrine\DBAL\DBALException;
use Doctrine\DBAL\Exception\NotNullConstraintViolationException;
use Doctrine\DBAL\Exception\UniqueConstraintViolationException;
use Doctrine\ORM\EntityManager;
use PHPExcel_IOFactory;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\Filesystem\Filesystem;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;

class Request_studentController extends Controller
{
    /**
     * @Route("/user/student/requestStudent/new", name="user_student_reqcom")
     * @Method({"GET", "POST"})
     */
    public function newRequestStudentAction(Request $request)
    {
        $current_convocatory = $this->getUser()->getCurrentConvocatory();
        if(!$this->get('app.functionsHelper')->isConvocatoryValid($current_convocatory)) {
            $request->getSession()
                ->getFlashBag()
                ->add('error', 'Convocatoria antigua (Solo lectura)')
            ;
            return $this->redirectToRoute('panel_students');
        }

        $btn_submit = $request->get('btn_submit');
        $file = $request->files->get('file_uploaded');

        $error = "";

        if(isset($btn_submit)) {
            if(isset($file)) {
                $routeDirectory = '../web/uploads/assets';
                $file = $request->files->get('file_uploaded');
                $fileName = md5(uniqid()) . '.' . $file->guessExtension();
                $original_name = $file->getClientOriginalName();
                $file->move($routeDirectory, $fileName);
                $path = $routeDirectory . '/' . $fileName;

                $file_entity = new UploadedFile ($path, $original_name);

                $objReader = PHPExcel_IOFactory::createReader('Excel2007');
                $objReader->setLoadSheetsOnly('Alumnos'); // Especificamos la hoja de cálculo
                $objPHPExcel = $objReader->canRead($file_entity);

                if ($objPHPExcel) { //El archivo es válido
                    $objPHPExcel = $objReader->load($file_entity);

                    $worksheet = $objPHPExcel->getActiveSheet();
                    $cells = $worksheet->toArray();

                    $entityManager = $this->getDoctrine()->getManager();
                    $emCov = $entityManager->getRepository('AppBundle:Convocatory');
                    $currentConvocatory = $this->getUser()->getCurrentConvocatory();
                    $currentYear = $emCov->find($currentConvocatory)->getSchoolYear();

                    for ($i = 1; $i < $worksheet->getHighestRow(); $i++) {
                        if ($cells[$i][0] == null) {
                            break;
                        }
                        try{
                            $request_student = new Request_student();
                            $request_student->setNameCompany($cells[$i][0]);
                            $request_student->setCif($cells[$i][1]);
                            $request_student->setHeadquartersOfWork($cells[$i][2]);
                            $request_student->setHeadquartersPrincipal($cells[$i][3]);
                            $request_student->setContactPerson($cells[$i][4]);
                            

                            $entityManager->persist($request_student);
                            $entityManager->flush();
                        }catch (DBALException $e){
                            $error = 'Ha sucedido un problema en la fila ('. $i .') del documento.';
                            break;
                        }
                    }

                    if($error == "") {
                        $request->getSession()
                            ->getFlashBag()
                            ->add('success', 'Solicitudes creadas');
                        $fileSystem = new Filesystem();
                        $fileSystem->remove($path);
                        return $this->redirectToRoute('panel_students', ['_fragment' => 'solemp']);
                    }

                } else {//Si el archivo no es válido
                    $error = "El archivo no es válido";
                }
                $fileSystem = new Filesystem();
                $fileSystem->remove($path);
            }else{
                $error = "No has subido ningún archivo";
            }
        }
        return $this->render('user/student/request_student/new.html.twig', array(
            'title' => "Subir datos de alumnos",
            'error' => $error,
        ));
    }

    /**
     * @Route("/user/student/requestStudent/massiveSelect", name="user_student_massive_request_student")
     */
    public function massiveAction(Request $request)
    {
        $current_convocatory = $this->getUser()->getCurrentConvocatory();
        if(!$this->get('app.functionsHelper')->isConvocatoryValid($current_convocatory)) {
            $request->getSession()
                ->getFlashBag()
                ->add('error', 'Convocatoria antigua (Solo lectura)')
            ;
            return $this->redirectToRoute('user_fct');
        }

        $type = 'success';
        $msg = "";
        $numerrors = 0;

        $btnSave = $request->get('savemassive');
        $btnDelete = $request->get('deletemassive');

        if(isset($btnSave)){ // Pulsado botón guardar
            $solicitudes = $request->get('solc');

            if(!$solicitudes){
                $type = 'error';
                $msg = 'Solicitudes no seleccionadas';
            }else{
                $em = $this->getDoctrine()->getManager();
                foreach ($solicitudes as $key => $value){
                    $request_company = $this->get('app.requestCompany')->getRequest($key);
                    $newCompany = new Student();
                    $newCompany->setName($request_company->getNameCompany());
                    $newCompany->setCif($request_company->getCif());
                    $newCompany->setPhone($request_company->getPhone());
                    $newCompany->setEmail($request_company->getEmail());
                    $newCompany->setSchoolYear($request_company->getSchoolYear());
     

                    try{
                        $validator = $this->get('validator');
                        $errorCode = $validator->validate($newCompany)->getIterator();
                        if(!isset($errorCode[0]) || $errorCode[0]->getCode() != '23bd9dbf-6b9b-41cd-a99e-4844bcf3077f'){
                            $em->persist($newCompany);
                            $em->flush();

                            $em->remove($request_company);
                            $em->flush();

                        }else{
                            $msg = 'Ya existe '.$newCompany->getName();
                            $request->getSession()
                                ->getFlashBag()
                                ->add('error', $msg)
                            ;
                            $numerrors++;
                        }

                    }catch (DBALException $e){
                        $numerrors++;
                        $msg = "Error inesperado";
                        $request->getSession()
                            ->getFlashBag()
                            ->add('error', $msg)
                        ;
                        break;
                    }

                }
                if($numerrors > 0 && $numerrors == count($solicitudes)){ // No se ha creado ninguna empresa
                    $type = 'error';
                    $msg = 'No se ha creado ninguna empresa';
                }else{
                    $type = 'success';
                    $msg = 'Se ha creado '. (count($solicitudes) - $numerrors) .' de '. count($solicitudes);
                }
            }

        }else if(isset($btnDelete)){ // Pulsado botón borrar
            $solicitudes = $request->get('solc');

            if(!$solicitudes){
                $type = 'error';
                $msg = 'Solicitudes no seleccionadas';
            }else{
                foreach ($solicitudes as $key => $value){
                    $request_company = $this->get('app.requestCompany')->getRequest($key);

                    try{
                        $em = $this->getDoctrine()->getManager();
                        $em->remove($request_company);
                        $em->flush();
                        $msg = 'Solicitudes borradas';
                    }catch (DBALException $e){
                        $numerrors++;
                        switch ($e->getPrevious()->errorInfo[1]){
                            case 1451:
                                $msg = "La solicitud se está usando";
                                break;
                            default:
                                $msg = "Error inesperado";
                                break;
                        }

                        $request->getSession()
                            ->getFlashBag()
                            ->add('error', $msg)
                        ;
                        break;
                    }

                }
                if($numerrors > 0){
                    $type = 'error';
                    $msg = 'Ha ocurrido '.$numerrors.' error/es';
                }
            }

        }else{
            $type = 'error';
            $msg = 'No has pulsado ningún botón';
        }

        $request->getSession()
            ->getFlashBag()
            ->add($type, $msg)
        ;

        return $this->redirectToRoute('user_fct', ['_fragment' => 'solemp']);
    }
}