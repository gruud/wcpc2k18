<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Entity;
/**
 * Description of Equipe
 *
 * @author jean-yves
 */
class Equipe {
     private $id;
    private $nom;
    private $pays;
    private $entraineur;
    private $rencontresDom;
    private $rencontresExt;
    private $groupe;
    
    
    function getId() {
        return $this->id;
    }

    function getNom() {
        return $this->nom;
    }

    function getPays() {
        return $this->pays;
    }

    function getEntraineur() {
        return $this->entraineur;
    }

    function getRencontresDom() {
        return $this->rencontresDom;
    }

    function getRencontresExt() {
        return $this->rencontresExt;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNom($nom) {
        $this->nom = $nom;
    }

    function setPays($pays) {
        $this->pays = $pays;
    }

    function setEntraineur($entraineur) {
        $this->entraineur = $entraineur;
    }

    function setRencontresDom($rencontresDom) {
        $this->rencontresDom = $rencontresDom;
    }

    function setRencontresExt($rencontresExt) {
        $this->rencontresExt = $rencontresExt;
    }
    
    function getGroupe() {
        return $this->groupe;
    }

    function setGroupe($groupe) {
        $this->groupe = $groupe;
    }




    
}
