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
    private $flag20;
    private $flag32;
    private $flag64;
    private $flagsvg;
    
    
    
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

    function getFlag20() {
        return $this->flag20;
    }

    function getFlag32() {
        return $this->flag32;
    }

    function getFlag64() {
        return $this->flag64;
    }

    function getFlagsvg() {
        return $this->flagsvg;
    }

    function setFlag20($flag20) {
        $this->flag20 = $flag20;
    }

    function setFlag32($flag32) {
        $this->flag32 = $flag32;
    }

    function setFlag64($flag64) {
        $this->flag64 = $flag64;
    }

    function setFlagsvg($flagsvg) {
        $this->flagsvg = $flagsvg;
    }




    
}
