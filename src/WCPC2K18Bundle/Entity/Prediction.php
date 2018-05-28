<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Entity;
/**
 * Description of Prediiction
 *
 * @author jean-yves
 */
class Prediction {
    //put your code here
    private $id;
    private $score;
    private $rencontre;
    private $user;
    private $double;
    private $nbButTrDom;
    private $nbButProlDom;
    private $nbTabDom;
    private $nbButTrExt;
    private $nbButProlExt;
    private $nbTabExt;
    private $prolongation;
    private $tirAuBut;

    
    
    function getId() {
        return $this->id;
    }

    function getScore() {
        return $this->score;
    }

    function getRencontre() {
        return $this->rencontre;
    }

    function getUser() {
        return $this->user;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setScore($score) {
        $this->score = $score;
    }

    function setRencontre($rencontre) {
        $this->rencontre = $rencontre;
    }

    function setUser($user) {
        $this->user = $user;
    }

    function getDouble() {
        return $this->double;
    }

    function setDouble($double) {
        $this->double = $double;
    }


    


}
