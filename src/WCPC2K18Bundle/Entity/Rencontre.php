<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Entity;
/**
 * Description of Rencontre
 *
 * @author jean-yves
 */
class Rencontre {
    private $id;
    private $date;
    private $lieu;
    private $competition;
    private $equipeDom;
    private $equipeExt;
    private $predictions;
    private $journee;
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

    function getDate() {
        return $this->date;
    }

    function getLieu() {
        return $this->lieu;
    }

    function getCompetition() {
        return $this->competition;
    }

    function getEquipeDom() {
        return $this->equipeDom;
    }

    function getEquipeExt() {
        return $this->equipeExt;
    }

    function getPredictions() {
        return $this->predictions;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setDate($date) {
        $this->date = $date;
    }

    function setLieu($lieu) {
        $this->lieu = $lieu;
    }

    function setCompetition($competition) {
        $this->competition = $competition;
    }

    function setEquipeDom($equipeDom) {
        $this->equipeDom = $equipeDom;
    }

    function setEquipeExt($equipeExt) {
        $this->equipeExt = $equipeExt;
    }

    function setPredictions($predictions) {
        $this->predictions = $predictions;
    }

    
    function getJournee() {
        return $this->journee;
    }

    function setJournee($journee) {
        $this->journee = $journee;
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


    
    
    
                
    //put your code here
}
