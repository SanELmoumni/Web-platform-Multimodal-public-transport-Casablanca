-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 02 juin 2018 à 18:12
-- Version du serveur :  10.1.28-MariaDB
-- Version de PHP :  7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `plateforme casatramway`
--

-- --------------------------------------------------------

--
-- Structure de la table `ligne`
--

CREATE TABLE `ligne` (
  `id_mode` int(11) NOT NULL,
  `is_begin_station` int(25) DEFAULT NULL,
  `is_end_station` int(25) DEFAULT NULL,
  `id_ligne` varchar(25) NOT NULL,
  `direction` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne`
--

INSERT INTO `ligne` (`id_mode`, `is_begin_station`, `is_end_station`, `id_ligne`, `direction`) VALUES
(1, 50, 55, 'Ligne 22', 55),
(2, 1, 49, 'T1', 49),
(2, 9, 49, 'T2', 49),
(2, 49, 1, 'T3', 1),
(2, 49, 9, 'T4', 9);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_station`
--

CREATE TABLE `ligne_station` (
  `horaire` time NOT NULL,
  `id_ligne` varchar(25) NOT NULL,
  `id_station` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne_station`
--

INSERT INTO `ligne_station` (`horaire`, `id_ligne`, `id_station`) VALUES
('00:00:00', 'T1', 1),
('00:00:00', 'T1', 2),
('00:00:00', 'T1', 3),
('00:00:00', 'T1', 4),
('00:00:00', 'T1', 5),
('00:00:00', 'T1', 6),
('00:00:00', 'T1', 7),
('00:00:00', 'T1', 8),
('00:00:00', 'T1', 9),
('00:00:00', 'T1', 10),
('00:00:00', 'T1', 11),
('00:00:00', 'T1', 12),
('00:00:00', 'T1', 13),
('00:00:00', 'T1', 14),
('00:00:00', 'T1', 15),
('00:00:00', 'T1', 16),
('00:00:00', 'T1', 17),
('00:00:00', 'T1', 18),
('00:00:00', 'T1', 19),
('00:00:00', 'T1', 20),
('00:00:00', 'T1', 21),
('00:00:00', 'T1', 22),
('00:00:00', 'T1', 24),
('00:00:00', 'T1', 25),
('00:00:00', 'T1', 26),
('00:00:00', 'T1', 27),
('00:00:00', 'T1', 28),
('00:00:00', 'T1', 29),
('00:00:00', 'T1', 30),
('00:00:00', 'T1', 31),
('00:00:00', 'T1', 32),
('00:00:00', 'T1', 33),
('00:00:00', 'T1', 34),
('00:00:00', 'T1', 35),
('00:00:00', 'T1', 36),
('00:00:00', 'T1', 37),
('00:00:00', 'T1', 38),
('00:00:00', 'T1', 39),
('00:00:00', 'T1', 40),
('00:00:00', 'T1', 41),
('00:00:00', 'T1', 42),
('00:00:00', 'T1', 43),
('00:00:00', 'T1', 44),
('00:00:00', 'T1', 45),
('00:00:00', 'T1', 46),
('00:00:00', 'T1', 47),
('00:00:00', 'T1', 48),
('00:00:00', 'T1', 49),
('00:00:00', 'T2', 1),
('00:00:00', 'T2', 2),
('00:00:00', 'T2', 3),
('00:00:00', 'T2', 4),
('00:00:00', 'T2', 5),
('00:00:00', 'T2', 6),
('00:00:00', 'T2', 7),
('00:00:00', 'T2', 8),
('00:00:00', 'T2', 9),
('00:00:00', 'T2', 10),
('00:00:00', 'T2', 11),
('00:00:00', 'T2', 12),
('00:00:00', 'T2', 13),
('00:00:00', 'T2', 14),
('00:00:00', 'T2', 15),
('00:00:00', 'T2', 16),
('00:00:00', 'T2', 17),
('00:00:00', 'T2', 18),
('00:00:00', 'T2', 19),
('00:00:00', 'T2', 20),
('00:00:00', 'T2', 21),
('00:00:00', 'T2', 22),
('00:00:00', 'T2', 24),
('00:00:00', 'T2', 25),
('00:00:00', 'T2', 26),
('00:00:00', 'T2', 27),
('00:00:00', 'T2', 28),
('00:00:00', 'T2', 29),
('00:00:00', 'T2', 30),
('00:00:00', 'T2', 31),
('00:00:00', 'T2', 32),
('00:00:00', 'T2', 33),
('00:00:00', 'T2', 34),
('00:00:00', 'T2', 35),
('00:00:00', 'T2', 36),
('00:00:00', 'T2', 37),
('00:00:00', 'T2', 38),
('00:00:00', 'T2', 39),
('00:00:00', 'T2', 40),
('00:00:00', 'T2', 41),
('00:00:00', 'T2', 42),
('00:00:00', 'T2', 43),
('00:00:00', 'T2', 44),
('00:00:00', 'T2', 45),
('00:00:00', 'T2', 46),
('00:00:00', 'T2', 47),
('00:00:00', 'T2', 48),
('00:00:00', 'T2', 49),
('00:00:00', 'T3', 1),
('00:00:00', 'T3', 2),
('00:00:00', 'T3', 3),
('00:00:00', 'T3', 4),
('00:00:00', 'T3', 5),
('00:00:00', 'T3', 6),
('00:00:00', 'T3', 7),
('00:00:00', 'T3', 8),
('00:00:00', 'T3', 9),
('00:00:00', 'T3', 10),
('00:00:00', 'T3', 11),
('00:00:00', 'T3', 12),
('00:00:00', 'T3', 13),
('00:00:00', 'T3', 14),
('00:00:00', 'T3', 15),
('00:00:00', 'T3', 16),
('00:00:00', 'T3', 17),
('00:00:00', 'T3', 18),
('00:00:00', 'T3', 19),
('00:00:00', 'T3', 20),
('00:00:00', 'T3', 21),
('00:00:00', 'T3', 22),
('00:00:00', 'T3', 24),
('00:00:00', 'T3', 25),
('00:00:00', 'T3', 26),
('00:00:00', 'T3', 27),
('00:00:00', 'T3', 28),
('00:00:00', 'T3', 29),
('00:00:00', 'T3', 30),
('00:00:00', 'T3', 31),
('00:00:00', 'T3', 32),
('00:00:00', 'T3', 33),
('00:00:00', 'T3', 34),
('00:00:00', 'T3', 35),
('00:00:00', 'T3', 36),
('00:00:00', 'T3', 37),
('00:00:00', 'T3', 38),
('00:00:00', 'T3', 39),
('00:00:00', 'T3', 40),
('00:00:00', 'T3', 41),
('00:00:00', 'T3', 42),
('00:00:00', 'T3', 43),
('00:00:00', 'T3', 44),
('00:00:00', 'T3', 45),
('00:00:00', 'T3', 46),
('00:00:00', 'T3', 47),
('00:00:00', 'T3', 48),
('00:00:00', 'T3', 49),
('00:00:00', 'T4', 1),
('00:00:00', 'T4', 2),
('00:00:00', 'T4', 3),
('00:00:00', 'T4', 4),
('00:00:00', 'T4', 5),
('00:00:00', 'T4', 6),
('00:00:00', 'T4', 7),
('00:00:00', 'T4', 8),
('00:00:00', 'T4', 9),
('00:00:00', 'T4', 10),
('00:00:00', 'T4', 11),
('00:00:00', 'T4', 12),
('00:00:00', 'T4', 13),
('00:00:00', 'T4', 14),
('00:00:00', 'T4', 15),
('00:00:00', 'T4', 16),
('00:00:00', 'T4', 17),
('00:00:00', 'T4', 18),
('00:00:00', 'T4', 19),
('00:00:00', 'T4', 20),
('00:00:00', 'T4', 21),
('00:00:00', 'T4', 22),
('00:00:00', 'T4', 24),
('00:00:00', 'T4', 25),
('00:00:00', 'T4', 26),
('00:00:00', 'T4', 27),
('00:00:00', 'T4', 28),
('00:00:00', 'T4', 29),
('00:00:00', 'T4', 30),
('00:00:00', 'T4', 31),
('00:00:00', 'T4', 32),
('00:00:00', 'T4', 33),
('00:00:00', 'T4', 34),
('00:00:00', 'T4', 35),
('00:00:00', 'T4', 36),
('00:00:00', 'T4', 37),
('00:00:00', 'T4', 38),
('00:00:00', 'T4', 39),
('00:00:00', 'T4', 40),
('00:00:00', 'T4', 41),
('00:00:00', 'T4', 42),
('00:00:00', 'T4', 43),
('00:00:00', 'T4', 44),
('00:00:00', 'T4', 45),
('00:00:00', 'T4', 46),
('00:00:00', 'T4', 47),
('00:00:00', 'T4', 48),
('00:00:00', 'T4', 49);

-- --------------------------------------------------------

--
-- Structure de la table `mode_transport`
--

CREATE TABLE `mode_transport` (
  `id_mode` int(11) NOT NULL,
  `nom_mode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `mode_transport`
--

INSERT INTO `mode_transport` (`id_mode`, `nom_mode`) VALUES
(0, 'Marche'),
(1, 'Bus'),
(2, 'Tramway');

-- --------------------------------------------------------

--
-- Structure de la table `station`
--

CREATE TABLE `station` (
  `id_station` int(25) NOT NULL,
  `nom_station` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `duree` int(11) DEFAULT NULL,
  `next_station` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Déchargement des données de la table `station`
--

INSERT INTO `station` (`id_station`, `nom_station`, `duree`, `next_station`) VALUES
(1, 'Faculte Terminus', 1, 2),
(2, 'Casa sud', 2, 3),
(3, 'Zenith', 2, 4),
(4, 'Technopark', 3, 5),
(5, 'Panoramique', 3, 6),
(6, 'Oasis', 2, 7),
(7, 'Mekka', 2, 8),
(8, 'Bachkou', 2, 22),
(9, 'Ain Diab Terminus', 3, 10),
(10, 'Littoral', 2, 11),
(11, 'Hay Hassani', 3, 12),
(12, 'Sidi Abderrahman', 3, 13),
(13, 'Cite de lAir', 3, 14),
(14, 'Abdellah Ben Cherif', 2, 15),
(15, 'Place Financiere', 3, 16),
(16, 'Anfa Parc', 3, 17),
(17, 'Hay Andia', 3, 18),
(18, 'Beausejour', 2, 19),
(19, 'Ghandi', 3, 20),
(20, 'Riviera', 2, 21),
(21, 'Derb Ghelaf', 2, 22),
(22, 'Abdelmoumen', 2, 24),
(24, 'Faculte de medecine', 2, 25),
(25, 'Wafasalaf', 3, 26),
(26, 'Avenue Hassan II', 3, 27),
(27, 'Place Mohamed V', 4, 28),
(28, 'Nations unies', 2, 29),
(29, 'Marche central', 3, 30),
(30, 'Mohamed Diouri', 3, 31),
(31, 'La resistance', 4, 32),
(32, 'Place AL Yassir', 3, 33),
(33, 'Casa voyageurs', 5, 34),
(34, 'Boulevard Bahmad', 3, 35),
(35, 'Anciens abattoirs', 4, 36),
(36, 'Grande ceinture', 3, 37),
(37, 'Ali Yaata', 3, 38),
(38, 'Achouhada', 2, 39),
(39, 'Hay mohammady', 6, 40),
(40, 'Ibn Tachfine', 3, 41),
(41, 'Hay Raja', 2, 42),
(42, 'Forces auxiliaires', 2, 43),
(43, 'Oqba Ibn Nafii', 5, 44),
(44, 'Attacharouk', 1, 45),
(45, 'Hopital sidi moumen', 2, 46),
(46, 'Centre de maintenance', 3, 47),
(47, 'Mohamed Zefzaf', 1, 48),
(48, 'Ennassim', 2, 49),
(49, 'Sidi Moumen Terminus', 0, NULL),
(50, 'Mandarona Terminus 22', 12, NULL),
(51, 'Boulevard Alqods', 13, NULL),
(52, 'Boulevard Khalil', 13, NULL),
(53, 'Boulevard 2 Mars', 13, NULL),
(54, 'Boulevard Zerktouni', 13, NULL),
(55, 'Place Marechal Terminus 22', 13, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `station_arret`
--

CREATE TABLE `station_arret` (
  `station_arret_id` int(25) NOT NULL,
  `station_dep` int(25) DEFAULT NULL,
  `next_station` int(25) DEFAULT NULL,
  `ligne_id` varchar(25) DEFAULT NULL,
  `duree` int(10) NOT NULL,
  `direction` int(25) DEFAULT NULL,
  `mode_tr` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `station_arret`
--

INSERT INTO `station_arret` (`station_arret_id`, `station_dep`, `next_station`, `ligne_id`, `duree`, `direction`, `mode_tr`) VALUES
(1, 1, 2, 'T1', 1, 49, 'Tramway'),
(2, 2, 3, 'T1', 1, 49, 'Tramway'),
(3, 3, 4, 'T1', 2, 49, 'Tramway'),
(4, 4, 5, 'T1', 3, 49, 'Tramway'),
(5, 5, 6, 'T1', 3, 49, 'Tramway'),
(6, 6, 7, 'T1', 2, 49, 'Tramway'),
(7, 7, 8, 'T1', 2, 49, 'Tramway'),
(8, 8, 22, 'T1', 2, 49, 'Tramway'),
(9, 22, 24, 'T1', 2, 49, 'Tramway'),
(10, 24, 25, 'T1', 2, 49, 'Tramway'),
(11, 25, 26, 'T1', 3, 49, 'Tramway'),
(12, 26, 27, 'T1', 3, 49, 'Tramway'),
(13, 27, 28, 'T1', 4, 49, 'Tramway'),
(14, 28, 29, 'T1', 2, 49, 'Tramway'),
(15, 29, 30, 'T1', 1, 49, 'Tramway'),
(16, 30, 31, 'T1', 3, 49, 'Tramway'),
(17, 31, 32, 'T1', 3, 49, 'Tramway'),
(18, 32, 33, 'T1', 2, 49, 'Tramway'),
(19, 33, 34, 'T1', 2, 49, 'Tramway'),
(20, 34, 35, 'T1', 3, 49, 'Tramway'),
(21, 35, 36, 'T1', 5, 49, 'Tramway'),
(22, 36, 37, 'T1', 3, 49, 'Tramway'),
(23, 37, 38, 'T1', 4, 49, 'Tramway'),
(24, 38, 39, 'T1', 1, 49, 'Tramway'),
(25, 39, 40, 'T1', 3, 49, 'Tramway'),
(26, 40, 41, 'T1', 2, 49, 'Tramway'),
(27, 41, 42, 'T1', 2, 49, 'Tramway'),
(28, 42, 43, 'T1', 6, 49, 'Tramway'),
(29, 43, 44, 'T1', 3, 49, 'Tramway'),
(30, 44, 45, 'T1', 2, 49, 'Tramway'),
(31, 45, 46, 'T1', 2, 49, 'Tramway'),
(32, 46, 47, 'T1', 4, 49, 'Tramway'),
(33, 47, 48, 'T1', 1, 49, 'Tramway'),
(34, 48, 49, 'T1', 2, 49, 'Tramway'),
(35, 49, NULL, 'T1', 0, 49, 'Tramway'),
(36, 9, 10, 'T2', 3, 49, 'Tramway'),
(37, 10, 11, 'T2', 1, 49, 'Tramway'),
(38, 11, 12, 'T2', 2, 49, 'Tramway'),
(39, 12, 13, 'T2', 2, 49, 'Tramway'),
(40, 13, 14, 'T2', 3, 49, 'Tramway'),
(41, 14, 15, 'T2', 3, 49, 'Tramway'),
(42, 15, 16, 'T2', 2, 49, 'Tramway'),
(43, 16, 17, 'T2', 2, 49, 'Tramway'),
(44, 17, 18, 'T2', 1, 49, 'Tramway'),
(45, 18, 19, 'T2', 2, 49, 'Tramway'),
(46, 19, 20, 'T2', 3, 49, 'Tramway'),
(47, 20, 21, 'T2', 2, 49, 'Tramway'),
(48, 21, 22, 'T2', 4, 49, 'Tramway'),
(49, NULL, 1, 'T1', 0, 49, 'Tramway'),
(50, NULL, 9, 'T2', 0, 49, 'Tramway'),
(51, 50, NULL, 'Ligne 22', 0, 55, 'Bus'),
(52, 51, 50, 'Ligne 22', 17, 55, 'Bus'),
(53, 52, 51, 'Ligne 22', 26, 55, 'Bus'),
(54, 53, 52, 'Ligne 22', 10, 55, 'Bus'),
(55, 54, 53, 'Ligne 22', 15, 55, 'Bus'),
(56, 55, 54, 'Ligne 22', 19, 55, 'Bus'),
(57, 28, 55, NULL, 3, 55, 'Marche'),
(58, NULL, 55, 'Ligne 22', 0, 55, 'Bus');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ligne`
--
ALTER TABLE `ligne`
  ADD PRIMARY KEY (`id_ligne`,`direction`),
  ADD KEY `is_begin_station` (`is_begin_station`),
  ADD KEY `is_end_station` (`is_end_station`),
  ADD KEY `id_mode` (`id_mode`),
  ADD KEY `direction` (`direction`);

--
-- Index pour la table `ligne_station`
--
ALTER TABLE `ligne_station`
  ADD PRIMARY KEY (`id_ligne`,`id_station`),
  ADD KEY `fk_id_stt` (`id_station`);

--
-- Index pour la table `mode_transport`
--
ALTER TABLE `mode_transport`
  ADD PRIMARY KEY (`id_mode`);

--
-- Index pour la table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id_station`),
  ADD KEY `FK_next_station` (`next_station`);

--
-- Index pour la table `station_arret`
--
ALTER TABLE `station_arret`
  ADD PRIMARY KEY (`station_arret_id`),
  ADD KEY `FK_stat_dep` (`station_dep`),
  ADD KEY `FK_next_stat` (`next_station`),
  ADD KEY `FK_ligne_id` (`ligne_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `station_arret`
--
ALTER TABLE `station_arret`
  MODIFY `station_arret_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ligne`
--
ALTER TABLE `ligne`
  ADD CONSTRAINT `FK_is_begin_station` FOREIGN KEY (`is_begin_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `FK_is_end_station` FOREIGN KEY (`is_end_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `ligne_ibfk_1` FOREIGN KEY (`is_begin_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `ligne_ibfk_2` FOREIGN KEY (`is_end_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `ligne_ibfk_3` FOREIGN KEY (`id_mode`) REFERENCES `mode_transport` (`id_mode`),
  ADD CONSTRAINT `ligne_ibfk_4` FOREIGN KEY (`direction`) REFERENCES `station` (`id_station`);

--
-- Contraintes pour la table `ligne_station`
--
ALTER TABLE `ligne_station`
  ADD CONSTRAINT `fk_id_stt` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `ligne_station_ibfk_1` FOREIGN KEY (`id_ligne`) REFERENCES `ligne` (`id_ligne`);

--
-- Contraintes pour la table `station`
--
ALTER TABLE `station`
  ADD CONSTRAINT `FK_next_station` FOREIGN KEY (`next_station`) REFERENCES `station` (`id_station`);

--
-- Contraintes pour la table `station_arret`
--
ALTER TABLE `station_arret`
  ADD CONSTRAINT `FK_ligne_id` FOREIGN KEY (`ligne_id`) REFERENCES `ligne` (`id_ligne`),
  ADD CONSTRAINT `FK_next_stat` FOREIGN KEY (`next_station`) REFERENCES `station` (`id_station`),
  ADD CONSTRAINT `FK_stat_dep` FOREIGN KEY (`station_dep`) REFERENCES `station` (`id_station`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
