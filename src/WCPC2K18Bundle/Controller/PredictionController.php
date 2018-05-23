<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace WCPC2K18Bundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use WCPC2K18Bundle\Entity\Rencontre;
use WCPC2K18Bundle\Entity\Equipe;
use Symfony\Component\HttpFoundation\Request;
/**
 * Description of PredictionController
 *
 * @author jean-yves
 */
class PredictionController extends Controller {
   
    function addAction() {
        
        /*creation d'une valeur test*/
          $prediction = new \WCPC2K18Bundle\Entity\Prediction;
          $score = new \WCPC2K18Bundle\Entity\Score;

          $rencontreCour =  $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Rencontre');
          $rencontre= $rencontreCour->find(28);
          
          
         $userCour=$this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:User');
         $user= $userCour->find(1);
          /*creation du score*/
          $score->setNbButTrDom(0);
          $score->setNbButTrExt(2);    
          
          $prediction->setScore($score);
          $prediction->setRencontre($rencontre);
          $prediction->setUser($user);
          
        
        
        
            $predictionCour = $this->getDoctrine()->getManager();
            $predictionCour->persist($score);
            $predictionCour->persist($prediction);

            $predictionCour->flush();
            return $this->redirectToRoute("rencontre");
        
        
    }
    
    function userpredictionAction($id){

        $predictionRepository=$this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Prediction');
        $listePredictions= $predictionRepository->findby(["user" => $id]);
        return $this->render("WCPC2K18Bundle:prediction:userPrediction.html.twig", array('listePredictions' => $listePredictions));
    }
   
    
    
}
