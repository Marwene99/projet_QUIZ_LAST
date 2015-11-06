-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 15 Septembre 2015 à 16:42
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `quizz`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE IF NOT EXISTS `administrateur` (
  `NomUser` varchar(25) NOT NULL,
  `MotPasse` varchar(25) NOT NULL,
  PRIMARY KEY (`NomUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `NoCours` varchar(15) NOT NULL,
  `NoProf` varchar(25) NOT NULL,
  `NoDa` varchar(25) NOT NULL,
  PRIMARY KEY (`NoCours`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `NoDa` varchar(25) NOT NULL,
  `MotPasse` varchar(25) NOT NULL,
  PRIMARY KEY (`NoDa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE IF NOT EXISTS `professeur` (
  `NumeroEmploye` varchar(25) NOT NULL,
  `MotPasse` varchar(25) NOT NULL,
  PRIMARY KEY (`NumeroEmploye`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE IF NOT EXISTS `quizz` (
  `IdQuizz` varchar(25) NOT NULL,
  `NoProfesseur` varchar(25) NOT NULL,
  `NoCours` varchar(25) NOT NULL,
  `nombreEssais` int(11) NOT NULL,
  `nombreFautes` int(11) NOT NULL,
  PRIMARY KEY (`IdQuizz`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ungroupe`
--

CREATE TABLE IF NOT EXISTS `ungroupe` (
  `IdGroupe` varchar(25) NOT NULL,
  `moyenneGroupe` double NOT NULL,
  `noteEtudiant` double NOT NULL,
  `Ecart-Type` double NOT NULL,
  `IdEtudiant` varchar(25) NOT NULL,
  `IdCours` varchar(25) NOT NULL,
  `Mediane` double NOT NULL,
  `TailleMax` int(11) NOT NULL,
  PRIMARY KEY (`IdGroupe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `NomUtilisateur` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `DroitUtilisation` varchar(35) NOT NULL,
  PRIMARY KEY (`NomUtilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
