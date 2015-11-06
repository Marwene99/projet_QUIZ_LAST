-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 06 Novembre 2015 à 15:42
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

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `idQuestion` int(11) NOT NULL,
  `Question` text NOT NULL,
  `Reponse` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `etat` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
