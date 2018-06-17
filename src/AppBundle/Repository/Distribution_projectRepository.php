<?php

namespace AppBundle\Repository;

/**
 * Distribution_projectRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methodp below.
 */

class Distribution_projectRepository extends \Doctrine\ORM\EntityRepository

{
    public function getDistribution(){
        return $this->findAll();
    }

    public function getDistributionConvocatory($convocatory)
    {
        return $this->getEntityManager()->createQuery("
                                      SELECT dp.id ,pj.name as project_name, CONCAT(us.first_name,' ',us.last_name) 
                                      as user_name, CONCAT(st.first_name,' ',st.last_name) as student_name
                                      FROM AppBundle:Distribution_project dp,
                                      AppBundle:Project pj,AppBundle:Student st,
                                      AppBundle:User us 
                                      WHERE dp.user = us.id 
                                      AND dp.student = st.id 
                                      AND dp.project = pj.id
                                      AND st.convocatory = ".intval($convocatory)." ")->getArrayResult();
    }

    public function getDistributionByProject($project,$convocatory)
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('st')
            ->from('AppBundle:Student', 'st')
            ->join('st.distribution_project', 'dp')
            ->join('dp.project', 'pr')
            ->where('pr.id = :project_id')
            ->andWhere('st.convocatory = :convocatory_id')
            ->setParameter('project_id', $project)
            ->setParameter('convocatory_id', $convocatory);

        return $qb->getQuery()->getResult();
    }

    public function getProjectsTutor($tutor,$convocatory)
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('pj')
            ->from('AppBundle:Project', 'pj')
            ->join('pj.distribution_project', 'dp')
            ->join('dp.student', 'st')
            ->where('dp.user = :tutor')
            ->andWhere('st.convocatory = :convocatory_id')
            ->setParameter('convocatory_id', $convocatory)
            ->setParameter('tutor', $tutor);

        return $qb->getQuery()->getResult();
    }

    public function getAllForStudent($idStudent)
    {
        return $this->findBy(['student'=>$idStudent]);
    }
}
