<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace WCPC2K18Bundle\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use WCPC2K18Bundle\Entity\Competition;
use Symfony\Component\HttpFoundation\Request;

/**
 * Description of CompetitionController
 *
 * @author jean-yves
 */
class CompetitionController extends Controller {
    
    
        public function affichageAction() {

        $manager = $this->getDoctrine()->getManager();

        $competitions = $manager->getRepository("WCPC2K18Bundle:Competition")->findAll();

        return $this->render("WCPC2K18Bundle:competition:competition.html.twig", array('competitions' => $competitions));
    }
    
        public function affichagecompetAction($id) {
            $manager = $this->getDoctrine()->getManager();
            
            $competition = $manager->getRepository("WCPC2K18Bundle:Competition")->find($id);
            
            return $this->render("WCPC2K18Bundle:default:accueil.html.twig", array('competition' => $competition));
        }
}
