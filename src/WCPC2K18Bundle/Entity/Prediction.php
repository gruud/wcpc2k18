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
    private $rencontre;
    private $user;
    private $double;
    private $nbButTrDom;
    private $nbButTrExt;


    
    
    function getId() {
        return $this->id;
    }

    function getRencontre() {
        return $this->rencontre;
    }

    function getUser() {
        return $this->user;
    }

    function getDouble() {
        return $this->double;
    }

    function getNbButTrDom() {
        return $this->nbButTrDom;
    }

    function getNbButTrExt() {
        return $this->nbButTrExt;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setRencontre($rencontre) {
        $this->rencontre = $rencontre;
    }

    function setUser($user) {
        $this->user = $user;
    }

    function setDouble($double) {
        $this->double = $double;
    }

    function setNbButTrDom($nbButTrDom) {
        $this->nbButTrDom = $nbButTrDom;
    }

    function setNbButTrExt($nbButTrExt) {
        $this->nbButTrExt = $nbButTrExt;
    }




    


}
