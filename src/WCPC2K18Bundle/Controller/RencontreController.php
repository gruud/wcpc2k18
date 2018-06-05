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
use WCPC2K18Bundle\Entity\Prediction;
use Symfony\Component\HttpFoundation\Request;

/**
 * Description of RencontreController
 *
 * @author jean-yves
 */
class RencontreController extends Controller {

    /**
     * Ajout d'un match dasn la competition
     * @param Request $request
     * @return type
     */
    public function addAction(Request $request) {



        $rencontre = new Rencontre();

        $form = $this->createForm('WCPC2K18Bundle\Form\RencontreType', $rencontre);

        $form->handleRequest($request);

        if ($form->isValid()) {



            $rencontreCour = $this->getDoctrine()->getManager();

            $rencontreCour->persist($rencontre);

            $rencontreCour->flush();

            return $this->redirectToRoute("rencontre");
        }
        return $this->render("WCPC2K18Bundle:rencontre:addRencontre.html.twig", array('form' => $form->createView()));
    }

    /**
     * Affichage de tout les matchs
     * @return type
     */
    public function affichageAction() {


        $manager = $this->getDoctrine()->getManager();

        $rencontres = $manager->getRepository("WCPC2K18Bundle:Rencontre")->findAll();

        return $this->render("WCPC2K18Bundle:rencontre:rencontre.html.twig", array('rencontres' => $rencontres));
    }

    /**
     * ???? lol ?????
     * @return type
     */
    public function matchAction() {

        $manager = $this->getDoctrine()->getManager();

        $rencontres = $manager->getRepository("WCPC2K18Bundle:Rencontre")->findBy(array(), array('date' => 'asc'));


        return $this->render("WCPC2K18Bundle:rencontre:match.html.twig", array('rencontres' => $rencontres));
    }

    /**
     * Mise à jour du score
     */

    /**
     * Mise à jour du score définitif et calcul des points
     * 
     * @param type $domTR
     * @param type $extTR
     * @param type $prol
     * @param type $domProl
     * @param type $extProl
     * @param type $tab
     * @param type $tabDom
     * @param type $tabExt
     * @param Rencontre $rencontre
     */
    public function majscoreAction(Request $request, $referenceRencontre) {

        /* recuperation des infos de la rencontre */

        $rencontreRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Rencontre');
        $rencontre = $rencontreRepository->find($referenceRencontre);
        //creer un formulaire basé sur la rencontre
        $form = $this->get('form.factory')->create(new \WCPC2K18Bundle\Form\RencontreType(), $rencontre);
        $form->handleRequest($request);


        if ($form->isValid() and $form->isSubmitted()) {

            $rencontreCour = $this->getDoctrine()->getManager();
            $rencontreCour->persist($rencontre);

            $rencontreCour->flush();
            $predictions = $rencontre->getPredictions();

            foreach ($predictions as $prediction) {
                $user = $prediction->getUser();
                
                

                $nbpoints = \WCPC2K18Bundle\Service\PointCalculator::rencontreCalculator($prediction) + $user->getPoints();
                
                $user->setPoints($nbpoints);
             
                
                // mise à jour du nombre de points du joueur en base
                
                $userRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:User');
                $user = $userRepository->find($prediction->getUser()->getId());
                $userCourant = $this->getDoctrine()->getManager();
                $userCourant->persist($user);

                $userCourant->flush();
            }
echo $nbpoints;
            /* selection des pronostics concernés par cette rencontre */
        }
        
        return $this->render("WCPC2K18Bundle:rencontre:addRencontre.html.twig", array('form' => $form->createView()));
    }

}
