<?php


namespace App\Controller;


use App\Entity\Category;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{

    /**
     *  Page/Action: Accueil
     */
    public function index()
    {
        $products =$this->getDoctrine()
            ->getRepository(Product::class)
            ->findBy([],['id'=>'DESC'], 8);
        return $this->render('default/index.html.twig', ['products'=>$products]);
    }
    /**
     * Page /Action: Categorie
     * @Route("/{alias}", name="default_category", methods={"GET"})
     */

    public function category($alias)
    {
        $category=$this->getDoctrine()
            ->getRepository(Category::class)
            ->findOneBy(['alias'=>$alias]);
        $products=$category->getProducts();
        return $this->render('default/category.html.twig', ['products'=>$products]);
    }

    /**
     * @param $id
     * @return \Symfony\Component\HttpFoundation\Response
     * @Route("/{category}{alias}{id}", name="default_product", methods={"GET"})
     */
    public function product($id)
    {
        $product=$this->getDoctrine()
            ->getRepository(Product::class)
            ->find($id);
       return $this->render('default/product.html.twig',['product'=>$product]);
    }
}