-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : b199aypbzafpieoe4cdl-mysql.services.clever-cloud.com:3306
-- Généré le : lun. 04 déc. 2023 à 12:37
-- Version du serveur : 8.0.22-13
-- Version de PHP : 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `b199aypbzafpieoe4cdl`
--

-- --------------------------------------------------------

--
-- Structure de la table `LIVRE`
--

DROP TABLE IF EXISTS `LIVRE`;
CREATE TABLE IF NOT EXISTS `LIVRE` (
                                       `ID` int NOT NULL AUTO_INCREMENT,
                                       `TITRE` varchar(255) NOT NULL,
    `AUTEUR` varchar(50) NOT NULL,
    PRIMARY KEY (`ID`)
    ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `LIVRE`
--

INSERT INTO `LIVRE` (`ID`, `TITRE`, `AUTEUR`) VALUES
                                                  (1, 'Vingt mille lieues sous les mers', 'Jules Verne'),
                                                  (2, 'Germinal', 'Emile Zola'),
                                                  (3, 'Guerre et paix', 'Léon Tolstoï'),
                                                  (4, 'Apprendre à parler aux animaux', 'Gaston Pouet'),
                                                  (5, '1001 recettes de Cuisine', 'Jean-Pierre Coffe');
COMMIT;
