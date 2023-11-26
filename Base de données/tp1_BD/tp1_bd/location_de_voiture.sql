-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Ven 24 Novembre 2023 à 14:59
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `location_de_voiture`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `NCIN` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `date_location` date NOT NULL,
  `num_permis` varchar(50) NOT NULL,
  PRIMARY KEY (`NCIN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`NCIN`, `Email`, `Nom`, `prenom`, `adresse`, `telephone`, `date_location`, `num_permis`) VALUES
('0123456789', 'voiture.loc@gmail.com', 'BMW M7', 'ILAN', '123 RUE DE SAINT JACQUES', '0634573562', '2023-11-14', '0123456789'),
('123456789', 'voiture.loc@gmail.com', 'TOUITOUI', 'ILAN', '123 RUE DE SAINT JACQUES', '0634573562', '2023-11-14', '123456789');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `Num_location` int(11) NOT NULL AUTO_INCREMENT,
  `prix_location` float NOT NULL,
  `duree` int(11) NOT NULL,
  `caution` float NOT NULL,
  `date_location` int(11) NOT NULL,
  `immatriculation` varchar(50) NOT NULL,
  `NCIN` varchar(50) NOT NULL,
  PRIMARY KEY (`Num_location`),
  KEY `immatriculation` (`immatriculation`,`NCIN`),
  KEY `NCIN` (`NCIN`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`Num_location`, `prix_location`, `duree`, `caution`, `date_location`, `immatriculation`, `NCIN`) VALUES
(12, 1200, 5, 10000, 2023, 'CG629DZ', '0123456789');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `Immatriculation` varchar(15) NOT NULL,
  `Marque` varchar(50) NOT NULL,
  `couleur` varchar(50) NOT NULL,
  `nombre_de_porte` int(11) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `boite_a_vitesse` varchar(50) NOT NULL,
  `Energie` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL,
  PRIMARY KEY (`Immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`Immatriculation`, `Marque`, `couleur`, `nombre_de_porte`, `kilometrage`, `boite_a_vitesse`, `Energie`, `puissance`) VALUES
('CG629DZ', 'BMW', 'NOIR', 5, 120000, 'automatique', 'diesel', 175);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`NCIN`) REFERENCES `clients` (`NCIN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`Immatriculation`) REFERENCES `location` (`immatriculation`) ON DELETE CASCADE ON UPDATE CASCADE;
