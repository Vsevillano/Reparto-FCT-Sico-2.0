<?php

namespace AppBundle\Repository;

/**
 * StudentRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class StudentRepository extends \Doctrine\ORM\EntityRepository
{
    public function getAllStudents($convocatory = null)
    {
        return $this->findAll();
    }

    public function getAllStudentsConvocatory($convocatory){
        return $this->findBy(Array("convocatory"=>$convocatory));
    }

    public function getAllStudentsWithGroup()
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('t, u.name, w.convocatory, x.course')
            ->from('AppBundle:Student', 't')
            ->join('t.group', 'u')
            ->join('t.convocatory', 'w')
            ->join('w.schoolYear', 'x');

        return $qb->getQuery()->getArrayResult();
    }
}
