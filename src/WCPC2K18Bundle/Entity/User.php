<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Entity;


use FOS\UserBundle\Model\User as BaseUser;

/**
 * Description of User
 *
 * @author jean-yves
 */
class User extends BaseUser {
    
   protected $id;
   protected $nom;
   protected $prenom;
   protected $service;
   protected $predictions;
   protected $points;
   
   function getId() {
       return $this->id;
   }

   function getNom() {
       return $this->nom;
   }

   function getPrenom() {
       return $this->prenom;
   }

   function getService() {
       return $this->service;
   }

   function getPredictions() {
       return $this->predictions;
   }

   function setId($id) {
       $this->id = $id;
   }

   function setNom($nom) {
       $this->nom = $nom;
   }

   function setPrenom($prenom) {
       $this->prenom = $prenom;
   }

   function setService($service) {
       $this->service = $service;
   }

   function setPredictions($predictions) {
       $this->predictions = $predictions;
   }

   function getPoints() {
       return $this->points;
   }

   function setPoints($points) {
       $this->points = $points;
   }


}
