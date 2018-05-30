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
 * Description of RencontreController
 *
 * @author jean-yves
 */
class RencontreController extends Controller {
    
 public function addAction(Request $request) {
        $rencontre = new Rencontre();
        $formBuilder = $this->get('form.factory')->createBuilder('form', $rencontre);

        $formBuilder
                ->add('date', 'datetime')
                ->add('lieu', 'text')
                ->add('equipeDom',
                      'entity',
                       array ('class'=> 'WCPC2K18Bundle\Entity\Equipe',
                      'property' => 'nom',
                       'label' => 'Domicile',
                       'multiple' => false,
                       'required' => true))
                ->add('equipeExt',
                      'entity',
                       array ('class'=> 'WCPC2K18Bundle\Entity\Equipe',
                      'property' => 'nom',
                       'label' => 'Visiteur',
                       'multiple' => false,
                       'required' => true))
                ->add('journee', 'text')
                         
                ->add('save', 'submit');
        $form = $formBuilder->getForm();

        $form->handleRequest($request);

        if ($form->isValid()) {



            $rencontreCour = $this->getDoctrine()->getManager();

            $rencontreCour->persist($rencontre);

            $rencontreCour->flush();

            return $this->redirectToRoute("rencontre");
        }
        return $this->render("WCPC2K18Bundle:rencontre:addRencontre.html.twig", array('form' => $form->createView()));
    }   
    
    
    public function affichageAction() {
        

        $manager = $this->getDoctrine()->getManager();

        $rencontres = $manager->getRepository("WCPC2K18Bundle:Rencontre")->findAll();

        return $this->render("WCPC2K18Bundle:rencontre:rencontre.html.twig", array('rencontres' => $rencontres));
    }
    
    public function matchAction() {

        $manager = $this->getDoctrine()->getManager();

        $rencontres = $manager->getRepository("WCPC2K18Bundle:Rencontre")->findBy(array(), array('date'=> 'asc'));
        
      
        return $this->render("WCPC2K18Bundle:rencontre:match.html.twig", array('rencontres' => $rencontres));
    }
    
    
    
    
}
