<?php


namespace App\Controller;


use App\Entity\Category;
use App\Entity\Product;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;



class ProductController extends AbstractController
{
    /**
     * @Route ("/product/créer-un-cadeau",name="product_create",methods={"GET|POST"})
     */
    public function createProduct(Request $request,SluggerInterface $slugger)
    {
        $product = new Product();
#FIXME Temporaire
#$user = $this->getDoctrine(User::class)
        #->getRepository::class)
        #->find();
#$product->setUser($user);

        $product->setCreatedAt(new \ DateTime());

        $form = $this->createFormBuilder($product)
            ->add('name',TextType::class)
            ->add('category', EntityType::class,
                ['class' => Category::class, 'choice_label' => 'name',])
            ->add('description', textareaType::class)
            ->add('image',FileType::class)
            ->add('submit',submitType::class)
            ->getForm();
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            # dump($request);
            # dd($product);
            $product->setAlias($slugger->slug($product->getName()));
            $em = $this->getDoctrine()->getManager();
            $em->persist($product);
            $em->flush();

            $this->addFlash('notice','Votre idée Cadeaux est bien prise en compte');
          #  return $this->redirectToRoute('',[

           # ]);

        }
        return $this ->render('product/create.html.twig', ['form'=>$form->createView()]);
    }
}