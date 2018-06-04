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
    public function rencontreCalculator(Prediction $prediction ){
     
     $compteur = 0;
     $rencontre = $prediction->getRencontre();
     $butDom = $rencontre->getNbButTrDom() + $rencontre->getNbButProlDom()+ $rencontre->getNbTabDom();
     $butExt= $rencontre->getNbButTrExt() + $rencontre->getNbButProlExt()+ $rencontre->getNbTabExt();
     
     if (($butDom < $butExt and $prediction->getNbButTrDom() < $prediction->getNbButTrExt()) or ($butExt > $butDom == $prediction->getNbButTrExt() > $prediction->getNbButTrDom()))
     {
         $compteur = 3;
     }
     
      
     if (($butDom - $butExt == $prediction->getNbButTrDom()- $prediction->getNbButTrExt()) or ($butExt - $butDom == $prediction->getNbButTrExt()- $prediction->getNbButTrDom()))
     {
         $compteur = 4;
     }
     
     if($butDom == $prediction->getNbButTrDom() and $butExt == $prediction->getNbButTrExt() ){
         $compteur = 5;
                        
     }
     
     if ($prediction->getDouble()){
         $compteur = $compteur*2;
     }
     
    }
    
   
}
