-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 11 Décembre 2015 à 15:36
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


create database quizz;
use quizz;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `quizz`
--

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

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`NoCours`, `NoProf`, `NoDa`) VALUES
('420-Math', '2', 'math'),
('420-Science', '2', 'science'),
('420-Prog', '3', 'pog'),
('420-Chimie', '4', 'chimie');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `idQuestion` int(11) NOT NULL AUTO_INCREMENT,
  `Question` text NOT NULL,
  `Reponse` text NOT NULL,
  `NoCours` varchar(25) NOT NULL,
  `IdQuizz` int(11) NOT NULL,
  PRIMARY KEY (`idQuestion`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`idQuestion`, `Question`, `Reponse`,`NoCours`,`IdQuizz`) VALUES
(1, 'aaa', 'aaaa', '420-Math', 1),
(2, 'sadsda', 'asdadsad', '420-Math', 1),
(3, 'gfdgfdfgdfg', 'gdfgdfgdfg', '420-Math', 1),
(4, 'gfdgfdfgdfg', 'asdadsad', '420-Math', 1),
(5, 'aa', 'aa', '420-Science', 10),
(6, 'aa', 'aaa', '420-Science', 10),
(7, 'aa', 'aaa', '420-Science', 10),
(8, 'a', 'aa','420-Science', 10),
(9, '', '','420-Science', 10),
(10, 'aa', 'aa','420-Prog', 11),
(11, 'aadsa', 'dsad','420-Prog', 11),
(12, 'adad', 'dsad','420-Prog', 11),
(13, 'aaa', 'dasad','420-Prog', 11),
(14, 'ununununun', 'ununununun','420-Chimie', 4),
(15, 'deuxdeux', 'deuxdeux','420-Chimie', 5),
(16, 'deuxdeuxdeux', 'deuxdeuxdeux','420-Chimie', 5),
(17, 'deuxdeuxdeuxdeuxdeux', 'deuxdeuxdeuxdeuxdeux','420-Chimie', 6),
(18, 'deuxdeuxdeuxdeux', 'deuxdeuxdeuxdeux','420-Chimie', 7);
-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE IF NOT EXISTS `quizz` (
  `IdQuizz` int(11) NOT NULL AUTO_INCREMENT,
  `IdCours` varchar(25) NOT NULL,
  `questionsQuiz` int(11) NOT NULL,
  `Createur` varchar(25) NOT NULL,
  `etat` varchar(25) NOT NULL,
  `IdGroupe` varchar(25) NOT NULL,
  PRIMARY KEY (`IdQuizz`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `quizz` (`IdQuizz`,`IdCours`,`questionsQuiz`,`Createur`,`etat`,`IdGroupe`) VALUES
(1, '420-Science', 1,'ali', 'visible', ''),
(2, '4420-Chimie', 1,'ali', 'visible', '112'),
(3, '420-Prog', 1,'ali', 'non-visible', ''),
(4, '420-Chimie',1, 'ali', 'visible', '111'),
(5, '420-Chimie', 2, 'ali', 'visible', '111'),
(6, '420-Chimie', 1, 'moumene', 'visible', '112'),
(7, '420-Chimie', 1, 'moumene', 'visible', '112');
-- --------------------------------------------------------
--
-- Structure de la table `historiqueQuizz`
--

CREATE TABLE IF NOT EXISTS `historiqueQuizz` (
  `IdHistoriqueQuizz` int(11) NOT NULL AUTO_INCREMENT,
  `IdQuizz` varchar(25) NOT NULL,
  `IdUser` varchar(25) NOT NULL,
  `IdCours` varchar(25) NOT NULL,
  `nombreEssais` int(11) NOT NULL,
  `nombreFautes` int(11) NOT NULL,
  PRIMARY KEY (`IdHistoriqueQuizz`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `historiqueQuizz` (`IdHistoriqueQuizz`,`IdQuizz`, `IdUser`, `IdCours`, `nombreEssais`, `nombreFautes`) VALUES
(1, 4, 'bari', '420-Chimie', 2, 2 ),
(2, 5, 'bari', '420-Chimie', 1, 1 ),
(3, 6, 'marw', '420-Chimie', 2, 2 ),
(4, 7, 'marw', '420-Chimie', 1, 1 );

-- --------------------------------------------------------
--
-- Structure de la table `ungroupe`
--

CREATE TABLE IF NOT EXISTS `ungroupe` (
  `IdGroupe` varchar(25) NOT NULL,
  `moyenneGroupe` double NOT NULL,
  `EcartType` double NOT NULL,
  `IdCours` varchar(25) NOT NULL,
  `Mediane` double NOT NULL,
  `TailleMax` int(11) NOT NULL,
  `cle` varchar(25) NOT NULL,
  `idProf` varchar(25) NOT NULL,
  PRIMARY KEY (`IdGroupe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ungroupe`
--

INSERT INTO `ungroupe` (`IdGroupe`, `moyenneGroupe`, `EcartType`, `IdCours`, `Mediane`, `TailleMax`,`cle`,`idProf`) VALUES
('111', NULL, NULL, '420-Chimie', NULL, 20, 'math1', 'ali'),
('112', NULL, NULL, '420-Chimie', NULL, 18, 'math2', 'moumene'),
('113', NULL, NULL, '420-Math', NULL, 10, 'math3', ''),
('221', NULL, NULL, '420-Science', NULL, 25, 'science1', '');

-- --------------------------------------------------------
--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` varchar(25) NOT NULL,
  `motDePasse` varchar(25) NOT NULL,
  `etat` text NOT NULL,
  `IdGroupe` varchar(25) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`idUser`, `motDePasse`, `etat`, `IdGroupe` ) VALUES
('a', 'a', 'Admin','Admin'),
('ali', 'ali', 'Prof', '111'),
('moumene', 'moumene', 'Prof', '112'),
('bari', 'bari', 'etudiant', '111'),
('marw', 'marw', 'etudiant', '112');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
