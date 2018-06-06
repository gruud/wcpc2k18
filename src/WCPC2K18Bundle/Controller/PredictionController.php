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
    /* test si un user a deja fait un pronostic */

    /**
     * 
     * @param type $user
     * @param type $rencontre
     * @return boolean
     */
    function userPredictionExist($user, $rencontre) {

        $predictionRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Prediction');
        $listePredictions = $predictionRepository->findby(["user" => $user, "rencontre" => $rencontre]);
        return count($listePredictions);
    }

    /**
     * 
     * test si la date de la encontre est dépassée
     * 
     * @param type $rencontre
     * @return type
     */
    function rencontrePerime($rencontre) {
        $rencontreRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Rencontre');
        $listeRencontre = $rencontreRepository->findby(["id" => $rencontre]);
        $date1 = new \DateTime("now");
        return ( $date1 < $listeRencontre[0]->getdate()->sub(new \DateInterval('PT1H')) );
    }

    /**
     * 
     * @param Request $request
     * @param type $referenceRencontre
     * @return type
     */
    
    
    
    function pronosticAction(Request $request, $referenceRencontre) {

        $user = $this->get('security.token_storage')->getToken()->getUser();

        /* recuperation des infos de la rencontre */
        $rencontreRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Rencontre');
        $rencontre = $rencontreRepository->find($referenceRencontre);
        $prediction = new \WCPC2K18Bundle\Entity\Prediction;
      
        if ($this->userPredictionExist($user, $rencontre)) {

            $predictionRepository = $this->getDoctrine()->getManager()->getRepository('WCPC2K18Bundle:Prediction');
            $listePredictions = $predictionRepository->findby(["user" => $user, "rencontre" => $rencontre]);
            $prediction = $listePredictions[0];
            $form = $this->get('form.factory')->create(new \WCPC2K18Bundle\Form\PredictionType(), $prediction);
            $form->handleRequest($request);

            if ($form->isValid()) {

                $predictionCour = $this->getDoctrine()->getManager();
                $predictionCour->persist($prediction);

                $predictionCour->flush();
            }



            //$this->rencontrePerime($rencontre);
            //return $this->render("WCPC2K18Bundle:prediction:userPrediction.html.twig", array('listePredictions' => $listePredictions));
            return $this->render("WCPC2K18Bundle:prediction:addPrediction.html.twig", array('form' => $form->createView(), 'rencontre' => $rencontre, 'user' => $user));
        } else {

            /* creation du formulaire prediction */

            $prediction->setRencontre($rencontre);
            $prediction->setUser($user);


            $form = $this->get('form.factory')->create(new \WCPC2K18Bundle\Form\PredictionType(), $prediction);

            //\Doctrine\Common\Util\Debug::dump($prediction);


            $form->handleRequest($request);

            if ($form->isValid()) {

                $predictionCour = $this->getDoctrine()->getManager();
                $predictionCour->persist($prediction);

                $predictionCour->flush();
            }


            /* On affiche le formulaire */
            return $this->render("WCPC2K18Bundle:prediction:addPrediction.html.twig", array('form' => $form->createView(), 'rencontre' => $rencontre, 'user' => $user));
        }
    }

}
