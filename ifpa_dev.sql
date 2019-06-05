-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 03 sep. 2018 à 07:05
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ifpa_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(120) DEFAULT NULL,
  `contenu` longtext,
  `date_article` datetime DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_categorie` int(11) DEFAULT NULL,
  `publie` tinyint(1) DEFAULT NULL,
  `tags` mediumtext,
  `resume` mediumtext,
  `photo` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `contenu`, `date_article`, `id_utilisateur`, `id_categorie`, `publie`, `tags`, `resume`, `photo`) VALUES
(3, 'article 1', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:19:39', 3, 1, 0, 'article', 'un article à lire', 'desk.jpg'),
(4, 'article 2', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:14:57', 3, 1, 0, 'article', 'un article à lire', 'webdev.jpg'),
(5, 'article 3', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:37', 3, 1, 0, 'article', 'un article à lire', 'doll.jpg'),
(6, 'article 4', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 1, 0, 'article', 'une article à lire', 'mccirculaire.jpeg'),
(7, 'article 5', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:18:23', 3, 1, 0, 'article', 'un article à lire', 'lamasticot.png'),
(8, 'article 6', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:09', 3, 1, 0, 'article', 'un article à lire', 'undefinedvariable.jpg'),
(9, 'un article banal', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:51:09', 3, 1, 0, 'article', 'un article à lire', ''),
(10, 'un article quelconque', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 1, 0, 'article', 'un article à lire', ''),
(11, 'un autre article', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 1, 0, 'article', 'un article à lire', ''),
(12, 'encore un article', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 1, 0, 'article', 'un article à lire', ''),
(13, 'Espagne', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter1.jpg'),
(14, 'Etats-Unis', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter2.jpg'),
(15, 'Russie', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter3.jpg'),
(16, 'Iran', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter4.jpg'),
(17, 'Italie', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter5.jpg'),
(18, 'Japon', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 2, 0, 'article', 'un article à lire', 'inter6.jpg'),
(19, 'Régions', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique1.jpg'),
(20, 'Partis politiques', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique2.jpg'),
(21, 'Gouvernement', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique3.png'),
(22, 'Assemblée nationale', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique4.jpg'),
(23, 'Droit', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique5.jpeg'),
(24, 'Réformes', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 3, 0, 'article', 'un article à lire', 'politique6.jpg'),
(25, 'Foot', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport1.jpg'),
(26, 'Rugby', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport2.jpg'),
(27, 'Tennis', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport3.jpg'),
(28, 'Basket', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport4.jpg'),
(29, 'Handball', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport5.jpg'),
(30, 'Natation', 'résumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article\r\nrésumé de l\'article', '2018-08-08 12:20:52', 3, 4, 0, 'article', 'un article à lire', 'sport6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `banniere`
--

DROP TABLE IF EXISTS `banniere`;
CREATE TABLE IF NOT EXISTS `banniere` (
  `id_banniere` int(11) NOT NULL AUTO_INCREMENT,
  `id_article` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_banniere`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom`, `parent`, `description`) VALUES
(1, 'article', NULL, 'une article à afficher'),
(2, 'International', NULL, 'Actualités internationales'),
(3, 'Politique', NULL, 'Actualités politiques'),
(4, 'Sport', NULL, 'Actualités soortives');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id_commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_utilisateur` int(11) DEFAULT NULL,
  `id_article` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `publie` tinyint(1) DEFAULT NULL,
  `commentaire` longtext,
  PRIMARY KEY (`id_commentaire`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `id_utilisateur`, `id_article`, `date`, `publie`, `commentaire`) VALUES
(1, 3, 1, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire'),
(2, 3, 2, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire'),
(3, 3, 3, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire'),
(4, 3, 4, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire'),
(5, 3, 5, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire'),
(6, 3, 6, '2018-08-27 00:00:00', 0, 'commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire commentaire');

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

DROP TABLE IF EXISTS `galerie`;
CREATE TABLE IF NOT EXISTS `galerie` (
  `id_galerie` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(120) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `lien` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id_galerie`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `galerie`
--

INSERT INTO `galerie` (`id_galerie`, `photo`, `position`, `lien`) VALUES
(1, 'photo', 1, '5');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `admin` int(1) DEFAULT NULL,
  `moderateur` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `nom`, `admin`, `moderateur`) VALUES
(2, 're', 1, 0),
(15, 'machin', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `mdp` longtext,
  `id_role` varchar(45) DEFAULT NULL,
  `date_anniv` datetime DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom`, `prenom`, `email`, `tel`, `login`, `mdp`, `id_role`, `date_anniv`) VALUES
(1, 'Jeanne', 'Xavier', 'xavier.jeanne@gmail.com', '0612121212', 'jxavier', 'a327d196e8b6400ed5993024589cb46f5f30d2bbb1b451aea2d5bc6a76f41b53', '0', '1998-01-01 00:00:00'),
(2, 'Duderque', 'Michel', 'Michel.Duderque@jacki.com', '0123456789', 'dmichel', 'c12e03ac35291748b586a3ad98d4a14f468b6504bfef858c6626371ed37ba7b7', '1', '1789-08-20 11:42:07'),
(3, 'Jean', 'Bonnot', 'jean.bonnot@superfaim.com', '0613131313', 'jbonnot', 'adba33b37d00ac5757292b21528c3306a80067109970f14640abd6f5b4f74dd0', '2', '1993-11-01 00:00:00'),
(4, 'Conda', 'Anna', 'groscalibre@mabte.com', '0548965317', 'canna', 'b3c64c611ebd5f0e7aa1340179786fe2c98be65fb94156d82d247278d70ae47e', '2', '1542-08-26 09:14:45');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
