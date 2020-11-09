<?php


namespace App\Controller;


use App\Entity\User;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{
/**
 * Formulaire d'inscription d'un User
 * @Route ("/membre/inscription",name="user_create", methods={"GET|POST"})
 */
public function createUser(Request $request,UserPasswordEncoderInterface $encoder)
{
    $user = new User();
    $user->setRoles(['ROLE_USER']);

    $form = $this->createFormBuilder($user)
        ->add('firstname',TextType::class,[
            'label'=>'Prénom'])
        ->add('lastname',TextType::class,[
            'label'=>'nom'])
        ->add('email',EmailType::class)
        ->add('password',PasswordType::class, [
            'label'=>'Mot de Passe' ])
        ->add('submit',SubmitType::class, [
            'label'=>'Envoi'])

        ->getForm();

    $form->handleRequest($request);
    if($form->isSubmitted() && $form->isValid()) {
        $user->setPassword(
         $encoder->encodePassword($user, $user->getPassword())
        );

        $em = $this->getDoctrine()->getManager();
        $em->persist($user);
        $em->flush();

        $this->addFlash('notice', 'Félicitation pour votre inscription !');

        #Redirection
        return $this->redirectToRoute('index');
    } #endif

    return $this->render('user/create.html.twig', [
     'form' =>$form->createView()
    ]);
}
}