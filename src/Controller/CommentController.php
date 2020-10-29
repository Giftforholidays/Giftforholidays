<?php


namespace App\Controller;


use App\Entity\Comment;
use App\Entity\User;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class CommentController extends \Symfony\Bundle\FrameworkBundle\Controller\AbstractController
{
    /**
     * Formulaire permettant de créer un commentaire
     * @Route("/comment/creer-un-commentaire", name="comment_create", methods={"GET|POST"})
     *
     */
    public function createComment(Request $request, SluggerInterface $slugger)
    {
        #1a. Création d'un nouveau Comment
        $comment = new Comment();

        #1b. Récupérer le user connecté
        $user = $this->getUser();

        $comment->setUser($user);

        #1c. Ajout de la date de rédaction du commentaire
        $comment->setDate(new \ DateTime());

        #2. Création d'un formulaire avec $comment
        $form = $this->createFormBuilder($comment)

            #2a. Note du commentaire (Liste déroulante)
            ->add('note', ChoiceType::class, [
               'choices'=> [
                   'choices' => [
                       '1' => 1,
                       '2' => 2,
                       '3' => 3,
                       '4' => 4,
                       '5' => 5,
                   ],
            ]])

            #2b. Texte du commentaire
            ->add('commentaire', TextareaType::class)

            #2d. Boutton Submit du commentaire
            ->add('submit', SubmitType::class)

            #2e. Permet de récupérer le formulaire généré
            ->getForm();

        #3. Demande à Symfony de récupérer les infos dans la request.
        $form->handleRequest($request);

        #4. Vérifie si le formulaire est soumis et valide
        if ($form->isSubmitted() && $form->isValid()) {

            #4a. Sauvegarde dans la BDD
            /**
             * Qu'est-ce que le Entity Manager (em) ?
             * C'st une classe qui sait comment sauvegarder d'autres classes.
             */
            $em = $this->getDoctrine()->getManager(); # Récupération du EM
            $em->persist($comment); # Demande pour sauvegarder en BDD $post
            $em->flush(); # On exécute la demande

            #4b. Notification / Confirmation
            $this->addFlash('notice', 'Votre commentaire est en ligne !');

        }

        #5. Transmission du formulaire à la vue
        return $this->render('comment/create.html.twig', [
            'form' => $form->createView()
        ]);

    }
}