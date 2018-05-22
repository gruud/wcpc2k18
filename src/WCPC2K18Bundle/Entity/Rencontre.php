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
    private $score;
    private $journee;
    
    
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

    
    function getScore() {
        return $this->score;
    }

    function getJournee() {
        return $this->journee;
    }

    function setScore($score) {
        $this->score = $score;
    }

    function setJournee($journee) {
        $this->journee = $journee;
    }

            
    //put your code here
}
