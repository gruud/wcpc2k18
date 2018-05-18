<?php

namespace WCPC2K18Bundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction()
    {
        return $this->render('WCPC2K18Bundle:Default:accueil.html.twig');
    }
}
