-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 02 nov. 2020 à 17:21
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

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
(1, 1, 1, 'stick à lèvre', 'stick-a-levre', 'stick à levre avec boite rouge et sytle chinois classic', 'rouge', '2020-10-30 11:01:28', 'FemmeStickALevreStyleChinoisclassic-5f9be47976691.jpeg'),
(3, 4, 1, 'decoupage labin', 'decoupage-labin', 'decoupage  sur un papier rouge avec le motive labin, pour décorer sur le vitrine', 'rouge', '2020-10-30 16:49:43', 'decoupagelapin-5f9c361911a43.jpeg'),
(5, 3, 3, 'Noeux chinois avec cloch', 'Noeux-chinois-avec-cloch', 'noeux chinois multicouleur motif poisson avec cloch', 'multicouleur', '2020-10-30 19:19:21', 'noeux-chinois-avec-cloch-5f9c59297c9b0.jpeg'),
(6, 4, 1, 'lanterne rouge', 'lanterne-rouge', 'Lanterne rouge en matière carton', 'rouge', '2020-11-02 15:07:48', 'lanterne-rouge-5fa012b5d3ea6.jpeg'),
(7, 4, 1, 'marquette attraction', 'marquette-attraction', 'mini marquette avec petit jardin d\'attration en multicouleur', 'multicouleur', '2020-11-02 15:09:48', 'maquette-d-attraction-5fa0132e523bb.png'),
(8, 4, 1, 'fleur décoratif', 'fleur-decoratif', 'une décoration avec un cadre noir et fleur rouge', 'noir et rouge', '2020-11-02 15:13:49', 'decoration-fleur-5fa0141f4fa9e.jpeg'),
(9, 4, 1, 'kit de thé', 'kit-de-the', 'kit de thé avec  4 thé différence: Gouji noir, thé fleur avec mieil, the noir parfumé, thé vert, chaque thé avec différent boite', 'rouge, noir, jaune et vert', '2020-11-02 15:22:52', 'kit-de-the-5fa01640954d4.jpeg'),
(10, 4, 1, 'kit de table', 'kit-de-table', 'kit de table avec des bol et assiette motif poisson chat et lotus', 'rouge, blanc', '2020-11-02 15:48:25', 'kit-table-5fa01c3aa87de.jpeg'),
(11, 4, 3, 'eventaille avec 4 plantes', 'eventaille-avec-4-plantes', 'eventaille doré avec 4 plantes (caligraphie en poeme et fleur correpondant) de Chrysenthème , banboo, orchidée et fleur de prunier', 'doré, noir et rouge', '2020-11-02 15:59:42', 'eventaille-avec-4-plantes-5fa01edf558f6.jpeg'),
(12, 4, 3, 'cadre avec soie motif panda', 'cadre-avec-soie-motif-panda', 'cadre de chene avec le tissue de soie motif panda', 'doré, noir et rouge', '2020-11-02 16:03:14', 'cadre-avec-la-peiture-Panda-5fa01fb298116.jpeg'),
(13, 4, 3, 'marque page en bamboo avec 4 motif des plantes', 'marque-page-en-bamboo-avec-4-motif-des-plantes', 'marque parge en bamboo avec motif  bamboo, chrysamthème, orchiée, fleur de prunier', 'chaine claire, ou foncé', '2020-11-02 16:39:10', 'marque-page-avec-4-maitres-des-plantes-5fa028210973d.jpeg'),
(14, 4, 4, 'mini Pingfeng', 'mini-Pingfeng', 'MIni Pingfeng motif masque de l\'opéra de Pékin', 'multicouleur', '2020-11-02 16:42:38', 'mini-Pingfeng-avec-masque-opera-de-pekin-5fa028ef557f9.jpeg'),
(15, 4, 4, 'décoration gru doré', 'decoration-gru-dore', 'cadre de décoration motif noyer foncé avec grue dorée relief et poeme avec meme sujet', 'chene fonce et dore', '2020-11-02 16:46:28', 'decoration-avec-gru-dore-5fa029d4988dc.jpeg'),
(16, 4, 4, 'décoration avec poisson et lotus rouge', 'decoration-avec-poisson-et-lotus-rouge', 'cadre de décoration motif noyer noir avec poisson et lotus relief', 'noir et rouge', '2020-11-02 16:48:14', 'decoration-poisson-et-lotus-5fa02a3f09e14.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
