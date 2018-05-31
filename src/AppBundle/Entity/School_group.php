<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * School_group
 *
 * @ORM\Table(name="School_group")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\School_groupRepository")
 */
class School_group
{
    /**
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @Assert\NotBlank()
     * @ORM\Column(name="course", type="integer", nullable=false)
     */
    private $course;

    /**
     * @Assert\NotBlank()
     * @ORM\Column(name="gr", type="string", nullable=false)
     */
    private $gr;

    /**
     * @Assert\NotBlank()
     * @ORM\ManyToOne(targetEntity="Cycle", inversedBy="school_groups")
     * @ORM\JoinColumn(nullable=false)
     */
    private $cycle;

    /**
     * @ORM\OneToMany(targetEntity="Student", mappedBy="group")
     */
    private $students_groups;

    /**
     * @ORM\OneToMany(targetEntity="Distribution_module_teacher", mappedBy="group")
     */
    private $distributions_module_teacher;

    /**
     * @ORM\OneToMany(targetEntity="Module", mappedBy="group")
     */
    private $modules;

    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set cycle
     *
     * @param \AppBundle\Entity\Cycle $cycle
     *
     * @return School_group
     */
    public function setCycle(\AppBundle\Entity\Cycle $cycle)
    {
        $this->cycle = $cycle;

        return $this;
    }

    /**
     * Get cycle
     *
     * @return \AppBundle\Entity\Cycle
     */
    public function getCycle()
    {
        return $this->cycle;
    }

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->distributions_module_teacher = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Add distributionsModuleTeacher
     *
     * @param \AppBundle\Entity\Distribution_module_teacher $distributionsModuleTeacher
     *
     * @return School_group
     */
    public function addDistributionsModuleTeacher(\AppBundle\Entity\Distribution_module_teacher $distributionsModuleTeacher)
    {
        $this->distributions_module_teacher[] = $distributionsModuleTeacher;

        return $this;
    }

    /**
     * Remove distributionsModuleTeacher
     *
     * @param \AppBundle\Entity\Distribution_module_teacher $distributionsModuleTeacher
     */
    public function removeDistributionsModuleTeacher(\AppBundle\Entity\Distribution_module_teacher $distributionsModuleTeacher)
    {
        $this->distributions_module_teacher->removeElement($distributionsModuleTeacher);
    }

    /**
     * Get distributionsModuleTeacher
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getDistributionsModuleTeacher()
    {
        return $this->distributions_module_teacher;
    }

    /**
     * Add student
     *
     * @param \AppBundle\Entity\Student $student
     *
     * @return School_group
     */
    public function addStudent(\AppBundle\Entity\Student $student)
    {
        $this->students_groups[] = $student;

        return $this;
    }

    /**
     * Remove student
     *
     * @param \AppBundle\Entity\Student $student
     */
    public function removeStudent(\AppBundle\Entity\Student $student)
    {
        $this->students_groups->removeElement($student);
    }

    /**
     * Get students
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getStudents()
    {
        return $this->students_groups;
    }

    public function __toString()
    {
        return (string)$this->getCourse() . $this->getCycle() . "-" . $this->getGr();
    }

    /**
     * Add studentsGroup
     *
     * @param \AppBundle\Entity\Student $studentsGroup
     *
     * @return School_group
     */
    public function addStudentsGroup(\AppBundle\Entity\Student $studentsGroup)
    {
        $this->students_groups[] = $studentsGroup;

        return $this;
    }

    /**
     * Remove studentsGroup
     *
     * @param \AppBundle\Entity\Student $studentsGroup
     */
    public function removeStudentsGroup(\AppBundle\Entity\Student $studentsGroup)
    {
        $this->students_groups->removeElement($studentsGroup);
    }

    /**
     * Get studentsGroups
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getStudentsGroups()
    {
        return $this->students_groups;
    }

    /**
     * Add module
     *
     * @param \AppBundle\Entity\Module $module
     *
     * @return School_group
     */
    public function addModule(\AppBundle\Entity\Module $module)
    {
        $this->modules[] = $module;

        return $this;
    }

    /**
     * Remove module
     *
     * @param \AppBundle\Entity\Module $module
     */
    public function removeModule(\AppBundle\Entity\Module $module)
    {
        $this->modules->removeElement($module);
    }

    /**
     * Get modules
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getModules()
    {
        return $this->modules;
    }

    /**
     * Set course
     *
     * @param integer $course
     *
     * @return School_group
     */
    public function setCourse($course)
    {
        $this->course = $course;

        return $this;
    }

    /**
     * Get course
     *
     * @return integer
     */
    public function getCourse()
    {
        return $this->course;
    }

    /**
     * Set gr
     *
     * @param string $gr
     *
     * @return School_group
     */
    public function setGr($gr)
    {
        $this->gr = $gr;

        return $this;
    }

    /**
     * Get gr
     *
     * @return string
     */
    public function getGr()
    {
        return $this->gr;
    }
}
