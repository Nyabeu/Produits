-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 18 oct. 2019 à 09:48
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `entreprisetest1`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `UnitPrice` float NOT NULL,
  `ProductRef` varchar(50) NOT NULL,
  `UnitsInStock` int(11) NOT NULL,
  `UnitsOnOrder` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`Id`, `ProductName`, `UnitPrice`, `ProductRef`, `UnitsInStock`, `UnitsOnOrder`) VALUES
(1, 'laptop', 98.25, 'A524S', 10, 3),
(2, 'téléphone', 55, 'F245D', 20, 10),
(3, 'écouteur', 10.98, 'K578hU', 56, 45),
(4, 'lave-linge', 150.56, '58fgJ', 5, 3),
(5, 'chauffage', 12.65, 'H45dd', 52, 22),
(6, 'lave-vaiselle', 248, 'ad559', 15, 2),
(7, 'destop', 100, '25AZE1', 25, 12);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
