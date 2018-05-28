<?php

namespace AppBundle\Repository;

/**
 * Distribution_module_teacherRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class Distribution_module_teacherRepository extends \Doctrine\ORM\EntityRepository
{
    public function getDistributions()
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('t.id, m.initials module, CONCAT(u.first_name, \' \', u.last_name) teacher, g.name gr, c.course course, t.hours hours')
            ->from('AppBundle:Distribution_module_teacher', 't')
            ->join('t.module', 'm')
            ->join('t.teacher', 'u')
            ->join('t.group', 'g')
            ->join('t.schoolYear', 'c');

        return $qb->getQuery()->getArrayResult();
    }

    public function getDistributionsLastYear()
    {
        /** @var SchoolYearRepository $syRepo */
        $syRepo = $this->_em->getRepository('AppBundle:SchoolYear');
        $lastSchoolYear = $syRepo->getLastCourse();

        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('t.id, m.initials module, CONCAT(u.first_name, \' \', u.last_name) teacher, g.name gr, c.course course, t.hours hours')
            ->from('AppBundle:Distribution_module_teacher', 't')
            ->join('t.module', 'm')
            ->join('t.teacher', 'u')
            ->join('t.group', 'g')
            ->join('t.schoolYear', 'c')
            ->where('t.schoolYear = :schoolYear_id')
            ->setParameter('schoolYear_id', $lastSchoolYear);

        return $qb->getQuery()->getArrayResult();
    }

    public function getDistribution($course)
    {
        $qb = $this->getEntityManager()->createQueryBuilder()
            ->select('t.id, m.initials module, CONCAT(u.first_name, \' \', u.last_name) teacher, g.name gr, c.course course, t.hours hours')
            ->from('AppBundle:Distribution_module_teacher', 't')
            ->join('t.module', 'm')
            ->join('t.teacher', 'u')
            ->join('t.group', 'g')
            ->join('t.schoolYear', 'c')
            ->where('c.course=:course')
            ->setParameter('course', $course);

        return $qb->getQuery()->getArrayResult();
    }
}
