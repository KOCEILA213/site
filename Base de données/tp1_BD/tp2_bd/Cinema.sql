-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Ven 24 Novembre 2023 à 16:16
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `Cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `Id_Realisateur` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Annee_Naissance` int(11) NOT NULL,
  PRIMARY KEY (`Id_Realisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `artiste`
--


-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `Id_Film` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(50) NOT NULL,
  `Annee` int(11) NOT NULL,
  `Genre` varchar(50) NOT NULL,
  `Resume` text NOT NULL,
  `Id_Realisateur` int(11) NOT NULL,
  `Code_Pays` int(11) NOT NULL,
  PRIMARY KEY (`Id_Film`,`Id_Realisateur`,`Code_Pays`),
  KEY `Id_Realisateur` (`Id_Realisateur`),
  KEY `Code_Pays` (`Code_Pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `film`
--


-- --------------------------------------------------------

--
-- Structure de la table `internaute`
--

CREATE TABLE IF NOT EXISTS `internaute` (
  `Email` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Region` varchar(50) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `internaute`
--


-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `Id_Notation` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Id_Film` int(11) NOT NULL,
  `Note` int(11) NOT NULL,
  PRIMARY KEY (`Id_Notation`),
  KEY `Email` (`Email`,`Id_Film`),
  KEY `Id_Film` (`Id_Film`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `notation`
--


-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `Code_Pays` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `langue` varchar(50) NOT NULL,
  PRIMARY KEY (`Code_Pays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `pays`
--


-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `Id_Role` int(11) NOT NULL AUTO_INCREMENT,
  `Id_Film` int(11) NOT NULL,
  `Id_Realisateur` int(11) NOT NULL,
  `nom_Role` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_Role`),
  KEY `Id_Film` (`Id_Film`,`Id_Realisateur`),
  KEY `Id_Realisateur` (`Id_Realisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `role`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_2` FOREIGN KEY (`Code_Pays`) REFERENCES `pays` (`Code_Pays`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`Id_Realisateur`) REFERENCES `artiste` (`Id_Realisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notation`
--
ALTER TABLE `notation`
  ADD CONSTRAINT `notation_ibfk_1` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`Id_Film`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_2` FOREIGN KEY (`Id_Realisateur`) REFERENCES `artiste` (`Id_Realisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`Id_Film`) REFERENCES `film` (`Id_Film`) ON DELETE CASCADE ON UPDATE CASCADE;
