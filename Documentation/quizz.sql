-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 27 Novembre 2015 à 14:58
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

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
-- Structure de la table `cours`
--

CREATE TABLE IF NOT EXISTS `cours` (
  `NoCours` varchar(15) NOT NULL,
  `NoProf` varchar(25) NOT NULL,
  `NoDa` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cours`
--

INSERT INTO `cours` (`NoCours`, `NoProf`, `NoDa`) VALUES
('420-Math', '1', '0'),
('420-Science', '2', '0'),
('420-Prog', '3', '0'),
('420-Chimie', '4', '0');

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
`idQuestion` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Reponse` text NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`idQuestion`, `Question`, `Reponse`) VALUES
(1, 'aaa', 'aaaa');

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE IF NOT EXISTS `quizz` (
  `IdQuizz` varchar(25) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `IdUser` varchar(25) NOT NULL,
  `IdCours` varchar(25) NOT NULL,
  `nombreEssais` int(11) NOT NULL,
  `nombreFautes` int(11) NOT NULL,
  `Createur` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ungroupe`
--

CREATE TABLE IF NOT EXISTS `ungroupe` (
  `IdGroupe` varchar(25) NOT NULL,
  `moyenneGroupe` double NOT NULL,
  `noteEtudiant` double NOT NULL,
  `EcartType` double NOT NULL,
  `IdUser` varchar(25) NOT NULL,
  `IdCours` varchar(25) NOT NULL,
  `Mediane` double NOT NULL,
  `TailleMax` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ungroupe`
--

INSERT INTO `ungroupe` (`IdGroupe`, `moyenneGroupe`, `noteEtudiant`, `EcartType`, `IdUser`, `IdCours`, `Mediane`, `TailleMax`) VALUES
('111', 0, 0, 0, 'a', '420-Math', 0, 20),
('112', 0, 0, 0, 'a', '420-Math', 0, 18),
('113', 0, 0, 0, 'a', '420-Math', 0, 10),
('221', 0, 0, 0, 'a', '420-Science', 0, 25);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` varchar(25) NOT NULL,
  `motDePasse` varchar(25) NOT NULL,
  `etat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`idUser`, `motDePasse`, `etat`) VALUES
('a', 'a', 'Admin'),
('ali', 'ali', 'Prof');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
 ADD PRIMARY KEY (`NoCours`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
 ADD PRIMARY KEY (`idQuestion`);

--
-- Index pour la table `quizz`
--
ALTER TABLE `quizz`
 ADD PRIMARY KEY (`IdQuizz`);

--
-- Index pour la table `ungroupe`
--
ALTER TABLE `ungroupe`
 ADD PRIMARY KEY (`IdGroupe`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
MODIFY `idQuestion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
