<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace WCPC2K18Bundle\Entity;


use Doctrine\Common\Collections\ArrayCollection;
/**
 * Description of Competiton
 *
 * @author jean-yves
 */
class Competition {
    //put your code here
    private $id;
    private $nom;
    private $date;
    private $lieu;
    private $rencontres;
    
    
    function __construct() {
        $this->rencontres = new ArrayCollection();
    }
    
    function getId() {
        return $this->id;
    }

    function getNom() {
        return $this->nom;
    }

    function getDate() {
        return $this->date;
    }

    function getLieu() {
        return $this->lieu;
    }

    function getRencontres() {
        return $this->rencontres;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNom($nom) {
        $this->nom = $nom;
    }

    function setDate($date) {
        $this->date = $date;
    }

    function setLieu($lieu) {
        $this->lieu = $lieu;
    }

    function setRencontres($rencontres) {
        $this->rencontres = $rencontres;
    }

    

            
}
