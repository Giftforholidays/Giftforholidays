<?php


namespace App\Controller;


use App\Entity\Comment;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;

class CommentController extends AbstractController
{
    /**
     * Formulaire permettant de créer un commentaire
     * @param int $idProduct
     * @param Request $request
     * @param SluggerInterface $slugger
     * @return Response
     */
    public function createComment(int $idProduct, Request $request, SluggerInterface $slugger)
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
            ->setAction($this->generateUrl('ajax_comment_create'))

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

            ->add('productId', HiddenType::class, [
                'data' => $idProduct,
                'mapped' => false
            ])

            #2d. Boutton Submit du commentaire
            ->add('submit', SubmitType::class, [
                'label' => 'Déposer un commentaire'
            ])

            #2e. Permet de récupérer le formulaire généré
            ->getForm();

        #5. Transmission du formulaire à la vue
        return $this->render('comment/create.html.twig', [
            'form' => $form->createView()
        ]);

    }

    /**
     * @Route("/ajax/comment/create", name="ajax_comment_create", methods={"POST"});
     * @param Request $request
     */
    public function ajaxComment(Request $request)
    {
        # Récupération du commentaire
        $commentData = $request->get('form');

        # Récupération du produit
        $product = $this->getDoctrine()->getRepository(Product::class)->find($commentData['productId']);

        # Création d'un commentaire
        $comment = new Comment();
        $comment->setUser($this->getUser());
        $comment->setProduct($product);
        $comment->setCommentaire($commentData['commentaire']);
        $comment->setNote($commentData['note']);

        # Enregistrement dans la BDD
        $em = $this->getDoctrine()->getManager();
        $em->persist($comment);
        $em->flush();

        # Retour du commentaire a la requete AJAX
        return $this->json([
            'comment' => [
                'firstname' => $comment->getUser()->getFirstname(),
                'commentaire' => $comment->getCommentaire(),
                'note' => $comment->getNote(),
                'date' => $comment->getDate()
            ]
        ]);
    }

}