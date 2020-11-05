<?php


namespace App\Controller;


use App\Entity\Category;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DefaultController extends AbstractController
{

    /**
     *  Page/Action: Accueil
     *
     */
    public function index()
    {
        $products = $this->getDoctrine()
            ->getRepository(Product::class)
            ->findBy([], ['id' => 'DESC'], 30);

        $categories = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findBy([], ['id' => 'DESC']);

        return $this->render('default/index.html.twig', ['products' => $products, 'categories' => $categories]);
    }

    /**
     * @param $alias
     * @Route("/category/{alias}",name="default_category", methods={"GET"})
     */
    public function category($alias)
    {
        $category = $this->getDoctrine()
            ->getRepository(Category::class)
            ->findOneBy(['alias' => $alias]);
        $products = $category->getProducts();
        return $this->render('default/category.html.twig', ['products' => $products]);
    }

    /**
     * @param Product|null $product
     * @return Response
     * @Route("/product/{id}", name="default_product", methods={"GET"})
     */
    public function product(Product $product = null)
    {

        // Si le produit n'est pas trouvé redirection vers index
        if (null === $product) {
            return $this->redirectToRoute('index');
        }

        return $this->render('default/product.html.twig', [
            'product' => $product
        ]);
    }
}