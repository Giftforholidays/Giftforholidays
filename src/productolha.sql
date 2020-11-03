-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 nov. 2020 à 17:38
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `giftforholidays`
--

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `user_id`, `name`, `alias`, `description`, `color`, `created_at`, `image`) VALUES
(9, 3, 2, 'Couverture de laine', 'Couverture-de-laine', 'Couverture de laine chaude de l’Ukraine jeter la couverture sur le lit jeter un tapis sur le sol un cadeau pour un anniversaire et un tapis de laine pendaison de crémaillère\r\n71,42 €+', 'gris', '2020-11-02 13:39:32', 'Couverture-de-laine-5fa00c17a85e9.jpeg'),
(10, 3, 2, 'Boîte  de bijoux', 'Boite-de-bijoux', 'Boîte peinte de bijoux, boîte en bois rond d\'Ukraine, boîte d\'anneau pour des femmes, cadeau ukrainien pour la maman, décor en bois de cercueil de bijoux\r\n28,57 €+', 'blanc', '2020-11-02 13:42:45', 'Boite-de-bijoux-5fa00cd611199.jpeg'),
(11, 3, 2, 'Lviv street', 'Lviv-street', 'Le paysage urbain de Lviv par l’auteur original.\r\nPeinture à l\'huile sur toile naturelle avec une civière en bois.\r\nSigné par l\'artiste.\r\nTaille 70x50 cm.', 'rgb', '2020-11-02 14:28:22', 'Lviv-street-5fa01786cf5b5.jpeg'),
(12, 3, 2, 'Cuir sac à main', 'Cuir-sac-a-main', 'Sac en cuir spacieux, bourse en gros cuir, sac besace marron, chaud usiné sac à bandoulière sac à main, marron bandoulière sac, brun, sac avec des animaux\r\n\r\nModèle « Dans la forêt »', 'brun', '2020-11-02 14:31:08', 'Cuir-sac-a-main-5fa0182d1a214.jpeg'),
(13, 3, 2, 'Stylo', 'Stylo', 'Petrykivka Painting Pen - Ballpoint Floral Pen vintage Biro Ball Pen In Case Hand Painted Flowers Petrykivka Ukrainian Gift Souvenir Ukraine', 'noir', '2020-11-02 14:34:34', 'Stylo-5fa018fa7dd49.jpeg'),
(14, 3, 2, 'Echecs en bois', 'Echecs-en-bois', 'Made in Ukraine Handmade Chess 3in1\r\nTilleul utilisé laqué.\r\n\r\n100% Nouveau! 100% authentique! 100% fait main!\r\nTaille: 30/60cm (12\"/24 »)lorsqu’il est fermé, 60cm/60cm (24\"/24 ») lorsqu’il est ouvert.\r\nPoids = 3kg(+-).\r\nPièces de jeu inclus.', 'noir blanc', '2020-11-02 14:38:18', '2checs-en-bois-5fa019db021be.jpeg'),
(15, 3, 2, 'Femme ukrainienne', 'Femme-ukrainienne', 'Femme de figurine ukrainienne brodant des années 1970. Figurine en porcelaine de l’époque soviétique. La fille brode un rushnyk. La jeune fille est vêtue de vêtements nationaux ukrainiens. Sur sa tête se trouve une couronne ukrainienne de fleurs. . ', 'blanc', '2020-11-02 14:41:47', 'Femme-ukrainienne-5fa01aabbc86c.jpeg'),
(16, 3, 2, 'KOBZAR', 'KOBZAR', 'Classique de la littérature ukrainienne, Taras Shevchenko.\r\n\'Kobzar\' - poèmes et versets, langue ukrainienne.\r\nGrande lecture pour ceux qui apprennent l’ukrainien. Beau cadeau pour les amateurs de livres rares.\r\n\r\nÉdition Kiev \"Dnieper\" 1971 ', 'blanc', '2020-11-02 14:45:15', 'Kobzar-5fa01b7bf1426.jpeg'),
(17, 3, 2, 'Nappe brodée', 'Nappe-brodee', 'Linge de table dans le style traditionnel ukrainien. Bon type de tissu durable et de bonne qualité qui vous servira pendant de nombreuses années!\r\nTissu: 40%PES, 22%cotton, 5%lin, 33%acrilyc (broderie). Broderie : tissu tissé', 'blanc', '2020-11-02 14:51:13', 'Nappe-brodee-5fa01ce21b4d8.jpeg'),
(18, 3, 2, 'Couronne ukrainienne', 'Couronne-ukrainienne', 'Couronne ukrainienne avec des rubans complétera parfaitement l’image d’un adulte et d’un enfant.\r\nLa couronne est faite sur une base métallique.\r\nUne couronne peut être portée sans rubans comme un cerceau régulier.', 'rgb', '2020-11-02 14:54:10', 'Couronne-ukrainienne-5fa01d92e04f8.jpeg'),
(19, 3, 2, 'Alphabet ukrainien', 'Alphabet-ukrainien', 'Jeu éducatif permettra de familiariser votre enfant avec des lettres, apprendre à faire des mots et de lire. Le jeu servira de bon tutoriel pour l’enfant et aidera à préparer pour l’école. Les lettres sont sculptées et facilement retirées du cadre.', 'brun', '2020-11-02 14:57:10', 'Alphabet-ukrainien-5fa01e470d4be.jpeg'),
(20, 3, 2, 'Chien', 'Chien', 'Ce chien ukrainien de poupée molle avec la broderie de machine était la main\r\nfabriqué à partir de lin par un artiste ukrainien. Contemporain, nouveau, dans un\r\nétat parfait. Il semble beaucoup mieux en personne.\r\nTraditions ukrainiennes.', 'gris', '2020-11-02 15:02:21', 'Chien-5fa01f7d7964e.jpeg'),
(21, 3, 2, 'Livre pour enfant \'Telesik\'', 'Livre-pour-enfant-Telesik', 'Livre vintage pour les enfants en ukrainien \'Telsik\', conte populaire. Livre parfait pour les enfants et ceux qui apprennent ou enseignent l’Ukraine\r\n\r\nAnnée de publication 1987, 15 p.\r\nLivre de poche, 7,7 x 10,2 pouces', 'gris', '2020-11-02 15:05:40', 'Telesik-5fa020449b4c4.jpeg'),
(22, 3, 2, 'Encyclopédie', 'Encyclopedie', 'Livre ukrainien pour enfants de 6 ans et plus.\r\n« 1000 noms d’animaux ». Encyclopédie.\r\n40 pages. numéro de l’année 2018. Nouveau.\r\nlangue ukrainienne.', 'vert', '2020-11-02 15:10:13', '1000-noms-d-animaux-5fa02155616ed.jpeg'),
(23, 3, 2, 'Poupée', 'Poupee', 'Ils sont créés dans des motifs ukrainiens, et leurs costumes ne peuvent être admirés, parce que toutes les tenues sont cousues à partir de tissu de haute qualité et idéalement adapté pour la coloration nationale. ', 'blanc', '2020-11-02 15:13:08', 'Pouree-5fa022051c87a.jpeg'),
(24, 3, 2, 'Kit créatif \"Kolobok\"', 'Kit-creatif-Kolobok', 'Ces kits créatifs vont emmener votre enfant dans le monde de l’imagination, de la fantaisie et de l’art. Vous découvrirez à quel point votre enfant est talentueux dans la peinture et aussi ce kit créatif sera une excellente idée pour un jeu de rouleaux! ', 'rgb', '2020-11-02 15:18:40', 'Kolobok-5fa0235053e6f.jpeg'),
(25, 3, 2, 'Maison en bois', 'Maison-en-bois', 'Idéal pour les jeux d\'histoire de vos enfants. Aussi, vous pouvez colorier ce jouet avec votre enfant.\r\n\r\nCe fascinant jouet en bois est fabriqué à la main et sain poncé lisse. Matériel écologiquement propre sans produits chimiques ni adhésifs. La surface', 'bois', '2020-11-02 15:25:39', 'Maison-en-bois-5fa024f3620ee.jpeg'),
(26, 3, 2, 'Ceinture en cuir', 'Ceinture-en-cuir', 'Largeur: 4 cm.\r\nCeinture en cuir Bull épaisseur 4 -4,5 mm.\r\nBoucle de Metall.\r\nCire, coupes finies et franges.\r\nHandmade.\r\nFabriqué en Ukraine.', 'noir', '2020-11-02 15:32:40', 'Ceinture-5fa02698ce89d.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
