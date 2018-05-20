<?php

namespace AppBundle\Repository;

/**
 * Distribution_companyRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class Distribution_companyRepository extends \Doctrine\ORM\EntityRepository
{
    public function getDistributionsCompanies()
    {

        return $this->getEntityManager()->createQuery("
                                      SELECT ds.id ,cp.name as company_name, CONCAT(us.first_name,' ',us.last_name) as user_name, CONCAT(st.first_name,' ',st.last_name) as student_name
                                      FROM AppBundle:Distribution_company ds,
                                      AppBundle:Company cp,AppBundle:Student st,
                                      AppBundle:User us 
                                      WHERE ds.user = us.id 
                                      AND ds.student = st.id 
                                      AND ds.company = cp.id")->getArrayResult();
    }

    public function getDistributionsCompaniesConvocatory($convocatory)
    {
        return $this->getEntityManager()->createQuery("
                                      SELECT ds.id ,cp.name as company_name, CONCAT(us.first_name,' ',us.last_name) as user_name, CONCAT(st.first_name,' ',st.last_name) as student_name
                                      FROM AppBundle:Distribution_company ds,
                                      AppBundle:Company cp,AppBundle:Student st,
                                      AppBundle:User us 
                                      WHERE ds.user = us.id 
                                      AND ds.student = st.id 
                                      AND ds.company = cp.id
                                      AND st.convocatory = ".intval($convocatory)." ")->getArrayResult();
    }


    public function getDistributionBYCompany($company)
    {
        return $this->findBy(['company'=>$company]);
    }




}
