<?php


namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class DefaultController extends AbstractController
{

    /**
     *  Page/Action: Accueil
     */
    public function index()
    {
        return $this->render('default/index.html.twig');
    }

}