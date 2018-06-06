-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Lun 28 Mai 2018 à 09:17
-- Version du serveur :  5.7.22-0ubuntu0.16.04.1
-- Version de PHP :  7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wcpc2K18`
--

-- --------------------------------------------------------

--
-- Structure de la table `competition`
--

CREATE TABLE `competition` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `lieu` varchar(512) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `equipe`
--

CREATE TABLE `equipe` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `entraineur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `groupe` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `equipe`
--

INSERT INTO `equipe` (`id`, `nom`, `pays`, `entraineur`, `groupe`) VALUES
(1, 'Allemagne', 'Die Mannschaft', ' Joachim LOW', 'F'),
(2, 'Angleterre', 'The Three Lions', 'Gareth SOUTHGATE', 'G'),
(3, 'Belgique', 'De Rode Duivels/Les Diablotins', ' Roberto MARTINEZ', 'G'),
(4, 'Croatie', 'Vatreni/Kockasti', 'Zlatko DALIC', 'D'),
(5, 'Danemark', 'Danish Dynamite', 'Age HAREIDO', 'C'),
(6, 'Espagne', 'La Furia Roja', 'Julen LOPETEGUI', 'B'),
(7, 'France', 'Les Bleus', 'Didier DESCHAMPS', 'C'),
(8, 'Islande', 'Strákarnir okkar', ' Heimir HALLGRIMSSON', 'D'),
(9, 'Pologne', 'Biało-czerwoni/Białe Orły', 'Adam NAWALKA', 'H'),
(10, 'Portugal', 'A Selecção', 'Fernando SANTOS', 'B'),
(11, 'Russie', 'Сборная (Sbornaya)', ' Stanislav CHERCHESOV', 'A'),
(12, 'Serbie', 'Бели Орлови (Beli Orlovi)', 'Mladen KRSTAJIC', 'E'),
(13, 'Suède', 'Blågult', 'Janne ANDERSON', 'F'),
(14, 'Suisse ', 'La Nati, Schweizer Nati', 'Vladimir PETKOVIC', 'E'),
(15, 'Egypte', 'Les Pharaons', 'Hector Cuper', 'A'),
(16, 'Maroc', 'Lion de l\'Atlas', 'Hervé RENARD', 'B'),
(17, 'Nigeria', 'Super Eagles', 'Gernot ROHR', 'D'),
(18, 'Sénégal', 'Les Lions de la Teranga', 'Aliou CISSE', 'H'),
(19, 'Tunisie', 'Les Aigles de Carthage', 'Nabil MAALOUL', 'G'),
(20, 'Argentine', 'La Albiceleste', 'Jorge SAMPAOLI', 'D'),
(21, 'Brésil', 'Seleção', 'Adenor Leonardo Bacchi', 'E'),
(22, 'Colombie', 'Los Cafeteros,El Tricolor', 'José PEKERMAN', 'H'),
(23, 'Uruguay', 'La Celeste', 'Oscar TABAREZ', 'A'),
(24, 'Pérou ', 'La Blanquirroja', 'Ricardo GARECA', 'C'),
(25, 'Arabie Saoudite', 'Ouilad Al Sahraa /Al Sogour Al Akhdar', 'Juan Antonio PIZZI', 'A'),
(26, 'Australie', 'Socceroos', 'Bert VAN MARWIJK', 'C'),
(27, 'Corée du Sud', 'Les Guerriers Taegeuk / Les Diables Rouges', ' Shin TAE YONG', 'F'),
(28, 'Iran', 'Shirants Perse', 'Carlos QUEIROZ', 'B'),
(29, 'Japon ', 'Les Samouraïs Bleus', 'Vahid HALILHODZIC', 'H'),
(30, 'Costa Rica', 'Los Ticos/La Tricolor/La Sele', 'Oscar RAMIREZ', 'E'),
(31, 'Mexique', 'El Tricolor, El Tri', 'Juan Carlos OSORIO', 'F'),
(32, 'Panama', 'Los Canaleros/Marea Roja', ' Hernan Dario GOMEZ', 'G');

-- --------------------------------------------------------

--
-- Structure de la table `prediction`
--

CREATE TABLE `prediction` (
  `id` int(11) NOT NULL,
  `rencontre_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `double` tinyint(1) NOT NULL,
  `nb_but_tr_dom` int(11) NOT NULL,
  `nb_but_prol_dom` int(11) NOT NULL,
  `nb_tab_dom` int(11) NOT NULL,
  `nb_but_tr_ext` int(11) NOT NULL,
  `nb_but_prol_ext` int(11) NOT NULL,
  `nb_tab_ext` int(11) NOT NULL,
  `prolongation` tinyint(1) NOT NULL,
  `tir_au_but` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `id` int(11) NOT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `journee` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nb_but_tr_dom` int(11) NOT NULL,
  `nb_but_prol_dom` int(11) NOT NULL,
  `nb_tab_dom` int(11) NOT NULL,
  `nb_but_tr_ext` int(11) NOT NULL,
  `nb_but_prol_ext` int(11) NOT NULL,
  `nb_tab_ext` int(11) NOT NULL,
  `prolongation` tinyint(1) NOT NULL,
  `tir_au_but` tinyint(1) NOT NULL,
  `equipeDom_id` int(11) DEFAULT NULL,
  `equipeExt_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rencontre`
--

INSERT INTO `rencontre` (`id`, `competition_id`, `date`, `lieu`, `journee`, `nb_but_tr_dom`, `nb_but_prol_dom`, `nb_tab_dom`, `nb_but_tr_ext`, `nb_but_prol_ext`, `nb_tab_ext`, `prolongation`, `tir_au_but`, `equipeDom_id`, `equipeExt_id`) VALUES
(23, NULL, '2018-06-14 17:00:00', 'Loujniki', '1', 0, 0, 0, 0, 0, 0, 0, 0, 11, 25),
(24, NULL, '2018-06-06 14:00:00', 'Stade Central', '1', 0, 0, 0, 0, 0, 0, 0, 0, 15, 23),
(25, NULL, '2018-06-15 17:00:00', 'Stade de Saint Petersbourg', '1', 0, 0, 0, 0, 0, 0, 0, 0, 16, 28),
(26, NULL, '2018-06-15 20:00:00', 'Stade Ficht', '1', 0, 0, 0, 0, 0, 0, 0, 0, 10, 6),
(27, NULL, '2018-06-16 12:00:00', 'Kazan Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 7, 26),
(28, NULL, '2018-06-16 15:00:00', 'Otkrytie Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 20, 8),
(29, NULL, '2018-06-06 18:00:00', 'Mordovia Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 24, 5),
(30, NULL, '2018-06-16 21:00:00', 'Baltika Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 4, 17),
(31, NULL, '2018-06-17 14:00:00', 'Cosmos Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 30, 12),
(32, NULL, '2018-06-17 17:00:00', 'Loujniki', '1', 0, 0, 0, 0, 0, 0, 0, 0, 1, 31),
(33, NULL, '2018-06-17 20:00:00', 'Rostov Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 21, 14),
(34, NULL, '2018-06-18 14:00:00', 'Stade de Nijni Novgorod', '1', 0, 0, 0, 0, 0, 0, 0, 0, 13, 27),
(35, NULL, '2018-06-18 17:00:00', 'Stade Ficht', '1', 0, 0, 0, 0, 0, 0, 0, 0, 3, 32),
(36, NULL, '2018-06-18 20:00:00', 'Volgograd Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 19, 2),
(37, NULL, '2018-06-19 14:00:00', 'Mordovia Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 22, 29),
(38, NULL, '2018-06-06 17:00:00', 'Otkrytie Arena', '1', 0, 0, 0, 0, 0, 0, 0, 0, 9, 18),
(39, NULL, '2018-06-19 20:00:00', 'Stade de Saint Petersbourg', '2', 0, 0, 0, 0, 0, 0, 0, 0, 11, 15),
(40, NULL, '2018-06-20 14:00:00', 'Loujniki', '2', 0, 0, 0, 0, 0, 0, 0, 0, 10, 16),
(41, NULL, '2018-06-20 17:00:00', 'Rostov Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 23, 25),
(42, NULL, '2018-06-20 20:00:00', 'Kazan Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 28, 6),
(43, NULL, '2018-06-21 14:00:00', 'Cosmos Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 5, 26),
(44, NULL, '2018-06-21 17:00:00', 'Stade Central', '2', 0, 0, 0, 0, 0, 0, 0, 0, 7, 24),
(45, NULL, '2018-06-21 20:00:00', 'Stade de Nijni Novgorod', '2', 0, 0, 0, 0, 0, 0, 0, 0, 20, 4),
(46, NULL, '2018-06-22 14:00:00', 'Stade de Saint Petersbourg', '2', 0, 0, 0, 0, 0, 0, 0, 0, 21, 30),
(47, NULL, '2018-06-22 00:00:00', 'Volgograd Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 17, 8),
(48, NULL, '2018-06-22 20:00:00', 'Baltika Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 12, 14),
(49, NULL, '2018-06-23 14:00:00', 'Otkrytie Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 3, 19),
(50, NULL, '2018-06-23 17:00:00', 'Rostov Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 27, 31),
(51, NULL, '2018-06-24 14:00:00', 'Stade de Nijni Novgorod', '2', 0, 0, 0, 0, 0, 0, 0, 0, 2, 32),
(52, NULL, '2018-06-24 17:00:00', 'Stade Central', '2', 0, 0, 0, 0, 0, 0, 0, 0, 29, 18),
(53, NULL, '2018-06-24 20:00:00', 'Kazan Arena', '2', 0, 0, 0, 0, 0, 0, 0, 0, 9, 22),
(54, NULL, '2018-06-25 16:00:00', 'Volgograd Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 25, 15),
(55, NULL, '2018-06-25 16:00:00', 'Cosmos Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 23, 11),
(56, NULL, '2018-06-06 20:00:00', 'Mordovia Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 28, 10),
(57, NULL, '2018-06-25 20:00:00', 'Baltika Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 6, 16),
(58, NULL, '2018-06-26 16:00:00', 'Stade Ficht', '3', 0, 0, 0, 0, 0, 0, 0, 0, 26, 24),
(59, NULL, '2018-06-26 16:00:00', 'Loujniki', '3', 0, 0, 0, 0, 0, 0, 0, 0, 5, 7),
(60, NULL, '2018-06-26 20:00:00', 'Stade de Saint Petersbourg', '3', 0, 0, 0, 0, 0, 0, 0, 0, 17, 20),
(61, NULL, '2018-06-26 20:00:00', 'Rostov Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 8, 4),
(62, NULL, '2018-06-27 16:00:00', 'Kazan Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 27, 1),
(63, NULL, '2018-06-27 16:00:00', 'Stade Central', '3', 0, 0, 0, 0, 0, 0, 0, 0, 31, 13),
(64, NULL, '2018-06-27 20:00:00', 'Stade de Nijni Novgorod', '3', 0, 0, 0, 0, 0, 0, 0, 0, 14, 30),
(65, NULL, '2018-06-27 20:20:00', 'Otkrytie Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 12, 21),
(66, NULL, '2018-06-28 16:00:00', 'Cosmos Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 18, 22),
(67, NULL, '2018-06-28 16:00:00', 'Volgograd Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 29, 9),
(68, NULL, '2018-06-28 20:00:00', 'Baltika Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 2, 3),
(69, NULL, '2018-06-28 20:00:00', 'Mordovia Arena', '3', 0, 0, 0, 0, 0, 0, 0, 0, 32, 19);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `competition`
--
ALTER TABLE `competition`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `equipe`
--
ALTER TABLE `equipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prediction`
--
ALTER TABLE `prediction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_36396FC86CFC0818` (`rencontre_id`),
  ADD KEY `IDX_36396FC8A76ED395` (`user_id`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_460C35ED7B39D312` (`competition_id`),
  ADD KEY `IDX_460C35EDBE1140AF` (`equipeDom_id`),
  ADD KEY `IDX_460C35ED8A9CC08D` (`equipeExt_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `competition`
--
ALTER TABLE `competition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `prediction`
--
ALTER TABLE `prediction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `rencontre`
--
ALTER TABLE `rencontre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `prediction`
--
ALTER TABLE `prediction`
  ADD CONSTRAINT `FK_36396FC86CFC0818` FOREIGN KEY (`rencontre_id`) REFERENCES `rencontre` (`id`),
  ADD CONSTRAINT `FK_36396FC8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `FK_460C35ED7B39D312` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`),
  ADD CONSTRAINT `FK_460C35ED8A9CC08D` FOREIGN KEY (`equipeExt_id`) REFERENCES `equipe` (`id`),
  ADD CONSTRAINT `FK_460C35EDBE1140AF` FOREIGN KEY (`equipeDom_id`) REFERENCES `equipe` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
