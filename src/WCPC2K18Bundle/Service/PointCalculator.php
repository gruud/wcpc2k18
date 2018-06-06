<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
namespace WCPC2K18Bundle\Service;

use WCPC2K18Bundle\Entity\Prediction;
use WCPC2K18Bundle\Entity\Rencontre;

/**
 * Description of PointCalculator
 *
 * @author jean-yves
 */



class PointCalculator {
    //put your code here
    
    /**
     * Calcul le nombre de point pour un prediction
     * @param Prediction $prediction
     */
    public function rencontreCalculator(Prediction $prediction ){
     
     $compteur = 0;
     $rencontre = $prediction->getRencontre();
     $butDom = $rencontre->getNbButTrDom() + $rencontre->getNbButProlDom()+ $rencontre->getNbTabDom();
     $butExt= $rencontre->getNbButTrExt() + $rencontre->getNbButProlExt()+ $rencontre->getNbTabExt();
     
     // calcul des conditions 
     $vainqueurDom = (((($butDom > $butExt) && ($prediction->getNbButTrDom() > $prediction->getNbButTrExt()))));
     $vainqueurExt = (((($butDom < $butExt) && ($prediction->getNbButTrDom() < $prediction->getNbButTrExt()))));
     
     
     if ($vainqueurDom || $vainqueurExt)
     {
          echo "vainqueur";
         $compteur = 3;
     }
         
      
     if ((($butDom - $butExt) == ($prediction->getNbButTrDom()- $prediction->getNbButTrExt())) || (($butExt - $butDom) == ($prediction->getNbButTrExt()- $prediction->getNbButTrDom())))
     {
         echo "difference de but";
         $compteur = 4;
     }
     
     if($butDom == $prediction->getNbButTrDom() and $butExt == $prediction->getNbButTrExt() ){
          echo "la totale";
         $compteur = 5;
                        
     }
     
     if ($prediction->getDouble()){
         $compteur = $compteur*2;
     }
     
     return $compteur;
     
    }
    
   
}
