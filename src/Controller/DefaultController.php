<?php


namespace App\Controller;


use App\Entity\Category;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

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
        return $this->render('default/index.html.twig');
    }

    public function category($alias)
    {
        $category =$this->getDoctrine()
            ->getRepository(Category::class)
            ->findOneBy(['alias'=>$alias]);
        $products=$category->getProducts();
        return $this->render('default/category.html.twig', ['products'=>$products]);
    }

    public function product($id)
    {
        $product=$this->getDoctrine()
            ->getRepository(Product::class)
            ->find($id);
        return $this->render('default/product.html.twig', ['product'=>$product]);
    }
}