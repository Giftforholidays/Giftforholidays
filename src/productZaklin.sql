-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 03 nov. 2020 à 17:14
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

UPDATE `product` SET `id` = 61,`category_id` = 1,`user_id` = 1,`name` = 'Algérie robe',`alias` = 'robe',`description` = 'La robe Kabyle n’a pas toujours eu la forme qu’elle a aujourd’hui\r\nL’ancienne robe Kabyle été faite de laine blanche tissée, une seule pièce ouverte par une fente sur la poitrine. Les anciennes robes Kabyles n’avaient pas de manches, mais étaient assez gr',`color` = 'multicolor',`created_at` = '2020-11-03 13:54:48',`image` = 'a0d942898afa114df14649b1a3ffde42.jpg' WHERE `product`.`id` = 61;
UPDATE `product` SET `id` = 62,`category_id` = 1,`user_id` = 1,`name` = 'Chypre collier',`alias` = 'collier',`description` = 'Collier rouge profond trapu, collier feutré, collier de boule de feutre, cadeau de bijoux pour elle, collier rouge, cadeau de amie, cadeau de Noel pour elle :\r\n\r\nCe collier de perles de laine est fait à la main par moi, Kerstin. Les perles de laine sont s',`color` = 'rouge',`created_at` = '2020-11-03 13:56:06',`image` = 'il-794xN-861391879-gktz-5fa15366615f1.jpeg' WHERE `product`.`id` = 62;
UPDATE `product` SET `id` = 63,`category_id` = 1,`user_id` = 1,`name` = 'Croatie cravate',`alias` = 'cravate',`description` = 'Cravat CROATA Clasicum\r\nNos cravates  pleines de couleurs et customisées sont vraiment cool. Par exemple notre cravate en tissue de soie Jacquard luxueuse et parfait pour les occasions festives. Ou choisissez notre cravate beige/or, une combinaison magnif',`color` = 'bleu',`created_at` = '2020-11-03 13:57:07',`image` = '010100-004153-5fa153a376c8c.jpeg' WHERE `product`.`id` = 63;
UPDATE `product` SET `id` = 64,`category_id` = 1,`user_id` = 1,`name` = 'Egypte décoration murale',`alias` = 'decoration-murale',`description` = 'DÉE CADEAU DE NOEL : UN PAPYRUS ÉGYPTIEN MAAT ET ISIS\r\nIdée de cadeau de noël et idée de décoration, ce papyrus représente une célèbre scène avec la déesse Maât et la déesse Isis-Hathor. Magnifique et incontournable élément de décoration murale ce papyrus',`color` = 'dorée',`created_at` = '2020-11-03 13:58:07',`image` = '5b690ba94bfa13295e4b47ff.jpg\r\n\r\n' WHERE `product`.`id` = 64;
UPDATE `product` SET `id` = 65,`category_id` = 1,`user_id` = 1,`name` = 'Espagne étole',`alias` = 'Etole',`description` = 'Cadeau parfait: excellent vêtements d\'automne et d\'hiver, élégant et beau, vous pouvez l\'acheter pour vous-même ou pour votre famille et vos amis . Il peut être utilisé comme cadeau d\'anniversaire, de Noël et du nouvel an, ou comme cadeau pour des remerci',`color` = 'Rouge et Jaune',`created_at` = '2020-11-03 13:59:03',`image` = '61hRPJDLnNL._AC_UX569_.jpg' WHERE `product`.`id` = 65;
UPDATE `product` SET `id` = 66,`category_id` = 1,`user_id` = 1,`name` = 'France verre',`alias` = 'verre',`description` = 'Votre nom est gravé sur le verre à whisky de façon très fine grâce à une gravure laser. Pour votre gravure individuelle, vous avez le choix entre différentes polices de caractères. En plus, des modèles de design gratuits sont à votre disposition.',`color` = 'transparent',`created_at` = '2020-11-03 14:00:45',`image` = 'verre-whisky-0409-col5-5fa1547e10beb.jpeg' WHERE `product`.`id` = 66;
UPDATE `product` SET `id` = 67,`category_id` = 1,`user_id` = 1,`name` = 'France rose',`alias` = 'rose',`description` = 'Offrir une belle fleur est déjà en soi un cadeau très romantique et unique. Une rose éternelle dans son écrin personnalisé est un cadeau encore plus unique et original. Découvrez ce produit et offrez-le à votre bien-aimée ou à votre maman. Personnalisez l',`color` = 'dorée',`created_at` = '2020-11-03 14:01:31',`image` = 'rose-en-or-coffret-grave-1-zoom-5fa154ac05ef9.jpeg' WHERE `product`.`id` = 67;
UPDATE `product` SET `id` = 68,`category_id` = 1,`user_id` = 1,`name` = 'Italie chaussettes',`alias` = 'chaussettes',`description` = 'ARFAIT POUR UN CADEAU - Sushi Box est une idée fantastique pour un cadeau amusant qui vous fait toujours rire. Surprenez vos proches et amis avec le contenu d\'une boîte! Que ce soit Noël, anniversaire ou Saint Valentin, nos chaussettes sont un cadeau univ',`color` = 'multicolor',`created_at` = '2020-11-03 14:02:17',`image` = '812-ZVu30qL._AC_UX679_.jpg' WHERE `product`.`id` = 68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
