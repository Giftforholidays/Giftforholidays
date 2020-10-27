<?php

namespace App\Controller\Admin;

use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('Giftforholidays')
            ->setTitle('<img src="..."> Gift <span class="text-small">Holiday</span>')
            ->setFaviconPath('favicon.svg')
            ->setTranslationDomain('Welcome-to-Gift-World')

            // there's no need to define the "text direction" explicitly because
            // its default value is inferred dynamically from the user locale
            ->setTextDirection('ltr');
    }

    public function configureMenuItems(): iterable
    {
        return [
            yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home'),
        // yield MenuItem::linkToCrud('The Label', 'icon class', EntityClass::class);
        MenuItem::section('Blog'),
            MenuItem::linkToCrud('Categories', 'fa fa-tags', Category::class),
            MenuItem::linkToCrud('Blog Posts', 'fa fa-file-text', BlogPost::class),

            MenuItem::section('Users'),
            MenuItem::linkToCrud('Comments', 'fa fa-comment', Comment::class),
            MenuItem::linkToCrud('Users', 'fa fa-user', User::class)
        ];
    }
}
