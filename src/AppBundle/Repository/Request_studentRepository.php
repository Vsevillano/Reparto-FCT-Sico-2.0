<?php

namespace AppBundle\Repository;

/**
 * Request_studentRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class Request_studentRepository extends \Doctrine\ORM\EntityRepository
{
     public function getAllStudents($convocatory = null)
    {
        return $this->findAll();
    }
}
