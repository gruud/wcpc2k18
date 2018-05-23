<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Entity;
/**
 * Description of Score
 *
 * @author jean-yves
 */
class Score {
    private $id;
    private $nbButTrDom;
    private $nbButProlDom;
    private $nbTabDom;
    private $nbButTrExt;
    private $nbButProlExt;
    private $nbTabExt;
    private $prolongation;
    private $tirAuBut;
    private $rencontre;
    
    
    function getId() {
        return $this->id;
    }

    function getNbButTrDom() {
        return $this->nbButTrDom;
    }

    function getNbButProlDom() {
        return $this->nbButProlDom;
    }

    function getNbTabDom() {
        return $this->nbTabDom;
    }

    function getNbButTrExt() {
        return $this->nbButTrExt;
    }

    function getNbButProlExt() {
        return $this->nbButProlExt;
    }

    function getNbTabExt() {
        return $this->nbTabExt;
    }

    function getProlongation() {
        return $this->prolongation;
    }

    function getTirAuBut() {
        return $this->tirAuBut;
    }

    function getRencontre() {
        return $this->rencontre;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNbButTrDom($nbButTrDom) {
        $this->nbButTrDom = $nbButTrDom;
    }

    function setNbButProlDom($nbButProlDom) {
        $this->nbButProlDom = $nbButProlDom;
    }

    function setNbTabDom($nbTabDom) {
        $this->nbTabDom = $nbTabDom;
    }

    function setNbButTrExt($nbButTrExt) {
        $this->nbButTrExt = $nbButTrExt;
    }

    function setNbButProlExt($nbButProlExt) {
        $this->nbButProlExt = $nbButProlExt;
    }

    function setNbTabExt($nbTabExt) {
        $this->nbTabExt = $nbTabExt;
    }

    function setProlongation($prolongation) {
        $this->prolongation = $prolongation;
    }

    function setTirAuBut($tirAuBut) {
        $this->tirAuBut = $tirAuBut;
    }

    function setRencontre($rencontre) {
        $this->rencontre = $rencontre;
    }


    
}
