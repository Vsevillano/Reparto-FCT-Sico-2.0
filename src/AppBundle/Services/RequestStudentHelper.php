<?php

namespace AppBundle\Services;


use AppBundle\Entity\Company;
use AppBundle\Entity\Request_student;
use AppBundle\Repository\CompanyRepository;
use AppBundle\Repository\StudentRepository;
use Doctrine\ORM\EntityManager;

class RequestStudentHelper
{
    private $em;

    public function __construct(EntityManager $em)
    {
        $this->em = $em;
    }


    public function getRequest($id)
    {
        /** @var Request_student $requestStudent*/
        $requestStudent = $this->em->getRepository("AppBundle:Request_student");
        return $requestStudent->find($id);
    }
}