<?php

namespace AppBundle\Repository;

/**
 * CallsRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ConvocatoryRepository extends \Doctrine\ORM\EntityRepository
{
    public function getAllConvocatories()
    {
        return $this->findAll();
    }

    public function getConvocatories($convocatory = null)
    {
        $query = "AND cv.id = " . intval($convocatory) . "";

        if (!$convocatory) {
            $query = "";
        }

        return $this->getEntityManager()->createQuery("
                                      SELECT cv.id as id, CONCAT(sy.course,' ', cv.convocatory) as convocatory
                                      FROM AppBundle:Convocatory cv,
                                      AppBundle:SchoolYear sy
                                      WHERE cv.schoolYear = sy.id
                                      ORDER BY sy.course DESC
                                      " . $query . " ")->getArrayResult();
    }

    public function getIdCourseByConvocatory($convocatory)
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('u.id')
            ->from('AppBundle:Convocatory', 't')
            ->join('t.schoolYear', 'u')
            ->where('t.id=:convocatory_id')
            ->setParameter('convocatory_id', $convocatory);

        return $qb->getQuery()->getArrayResult()[0]['id'];
    }
}
