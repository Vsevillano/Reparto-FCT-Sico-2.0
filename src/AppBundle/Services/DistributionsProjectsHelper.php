<?php

namespace AppBundle\Services;


use AppBundle\Repository\ProjectRepository;
use Doctrine\ORM\EntityManager;

class DistributionsProjectsHelper
{
    private $em;

    public function __construct(EntityManager $em)
    {
        $this->em = $em;
    }

    public function getAllDistribution(){
        return $this->em->getRepository("AppBundle:Distribution_project")->getDistribution();
    }
}