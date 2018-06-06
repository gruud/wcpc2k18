-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 23 Mai 2018 à 07:49
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

--
-- Contenu de la table `competition`
--

INSERT INTO `competition` (`id`, `nom`, `date`, `lieu`) VALUES
(1, 'Coupe du monde 2018', '2018-06-18 00:00:00', 'RUSSIE');

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
  `score_id` int(11) DEFAULT NULL,
  `rencontre_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rencontre`
--

CREATE TABLE `rencontre` (
  `id` int(11) NOT NULL,
  `score_id` int(11) DEFAULT NULL,
  `competition_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `equipeDom_id` int(11) DEFAULT NULL,
  `equipeExt_id` int(11) DEFAULT NULL,
  `journee` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `rencontre`
--

INSERT INTO `rencontre` (`id`, `score_id`, `competition_id`, `date`, `lieu`, `equipeDom_id`, `equipeExt_id`, `journee`) VALUES
(23, NULL, NULL, '2018-06-14 17:00:00', 'Loujniki', 11, 25, '1'),
(24, NULL, NULL, '2018-06-06 14:00:00', 'Stade Central', 15, 23, '1'),
(25, NULL, NULL, '2018-06-15 17:00:00', 'Stade de Saint Petersbourg', 16, 28, '1'),
(26, NULL, NULL, '2018-06-15 20:00:00', 'Stade Ficht', 10, 6, '1'),
(27, NULL, NULL, '2018-06-16 12:00:00', 'Kazan Arena', 7, 26, '1'),
(28, NULL, NULL, '2018-06-16 15:00:00', 'Otkrytie Arena', 20, 8, '1'),
(29, NULL, NULL, '2018-06-06 18:00:00', 'Mordovia Arena', 24, 5, '1'),
(30, NULL, NULL, '2018-06-16 21:00:00', 'Baltika Arena', 4, 17, '1'),
(31, NULL, NULL, '2018-06-17 14:00:00', 'Cosmos Arena', 30, 12, '1'),
(32, NULL, NULL, '2018-06-17 17:00:00', 'Loujniki', 1, 31, '1'),
(33, NULL, NULL, '2018-06-17 20:00:00', 'Rostov Arena', 21, 14, '1'),
(34, NULL, NULL, '2018-06-18 14:00:00', 'Stade de Nijni Novgorod', 13, 27, '1'),
(35, NULL, NULL, '2018-06-18 17:00:00', 'Stade Ficht', 3, 32, '1'),
(36, NULL, NULL, '2018-06-18 20:00:00', 'Volgograd Arena', 19, 2, '1'),
(37, NULL, NULL, '2018-06-19 14:00:00', 'Mordovia Arena', 22, 29, '1'),
(38, NULL, NULL, '2018-06-06 17:00:00', 'Otkrytie Arena', 9, 18, '1'),
(39, NULL, NULL, '2018-06-19 20:00:00', 'Stade de Saint Petersbourg', 11, 15, '2'),
(40, NULL, NULL, '2018-06-20 14:00:00', 'Loujniki', 10, 16, '2'),
(41, NULL, NULL, '2018-06-20 17:00:00', 'Rostov Arena', 23, 25, '2'),
(42, NULL, NULL, '2018-06-20 20:00:00', 'Kazan Arena', 28, 6, '2'),
(43, NULL, NULL, '2018-06-21 14:00:00', 'Cosmos Arena', 5, 26, '2'),
(44, NULL, NULL, '2018-06-21 17:00:00', 'Stade Central', 7, 24, '2'),
(45, NULL, NULL, '2018-06-21 20:00:00', 'Stade de Nijni Novgorod', 20, 4, '2'),
(46, NULL, NULL, '2018-06-22 14:00:00', 'Stade de Saint Petersbourg', 21, 30, '2'),
(47, NULL, NULL, '2018-06-22 00:00:00', 'Volgograd Arena', 17, 8, '2'),
(48, NULL, NULL, '2018-06-22 20:00:00', 'Baltika Arena', 12, 14, '2'),
(49, NULL, NULL, '2018-06-23 14:00:00', 'Otkrytie Arena', 3, 19, '2'),
(50, NULL, NULL, '2018-06-23 17:00:00', 'Rostov Arena', 27, 31, '2'),
(51, NULL, NULL, '2018-06-24 14:00:00', 'Stade de Nijni Novgorod', 2, 32, '2'),
(52, NULL, NULL, '2018-06-24 17:00:00', 'Stade Central', 29, 18, '2'),
(53, NULL, NULL, '2018-06-24 20:00:00', 'Kazan Arena', 9, 22, '2'),
(54, NULL, NULL, '2018-06-25 16:00:00', 'Volgograd Arena', 25, 15, '3'),
(55, NULL, NULL, '2018-06-25 16:00:00', 'Cosmos Arena', 23, 11, '3'),
(56, NULL, NULL, '2018-06-06 20:00:00', 'Mordovia Arena', 28, 10, '3'),
(57, NULL, NULL, '2018-06-25 20:00:00', 'Baltika Arena', 6, 16, '3'),
(58, NULL, NULL, '2018-06-26 16:00:00', 'Stade Ficht', 26, 24, '3'),
(59, NULL, NULL, '2018-06-26 16:00:00', 'Loujniki', 5, 7, '3'),
(60, NULL, NULL, '2018-06-26 20:00:00', 'Stade de Saint Petersbourg', 17, 20, '3'),
(61, NULL, NULL, '2018-06-26 20:00:00', 'Rostov Arena', 8, 4, '3'),
(62, NULL, NULL, '2018-06-27 16:00:00', 'Kazan Arena', 27, 1, '3'),
(63, NULL, NULL, '2018-06-27 16:00:00', 'Stade Central', 31, 13, '3'),
(64, NULL, NULL, '2018-06-27 20:00:00', 'Stade de Nijni Novgorod', 14, 30, '3'),
(65, NULL, NULL, '2018-06-27 20:20:00', 'Otkrytie Arena', 12, 21, '3'),
(66, NULL, NULL, '2018-06-28 16:00:00', 'Cosmos Arena', 18, 22, '3'),
(67, NULL, NULL, '2018-06-28 16:00:00', 'Volgograd Arena', 29, 9, '3'),
(68, NULL, NULL, '2018-06-28 20:00:00', 'Baltika Arena', 2, 3, '3'),
(69, NULL, NULL, '2018-06-28 20:00:00', 'Mordovia Arena', 32, 19, '3');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id` int(11) NOT NULL,
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
  ADD UNIQUE KEY `UNIQ_36396FC812EB0A51` (`score_id`),
  ADD KEY `IDX_36396FC86CFC0818` (`rencontre_id`),
  ADD KEY `IDX_36396FC8A76ED395` (`user_id`);

--
-- Index pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_460C35ED12EB0A51` (`score_id`),
  ADD KEY `IDX_460C35ED7B39D312` (`competition_id`),
  ADD KEY `IDX_460C35EDBE1140AF` (`equipeDom_id`),
  ADD KEY `IDX_460C35ED8A9CC08D` (`equipeExt_id`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `equipe`
--
ALTER TABLE `equipe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
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
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  ADD CONSTRAINT `FK_36396FC812EB0A51` FOREIGN KEY (`score_id`) REFERENCES `score` (`id`),
  ADD CONSTRAINT `FK_36396FC86CFC0818` FOREIGN KEY (`rencontre_id`) REFERENCES `rencontre` (`id`),
  ADD CONSTRAINT `FK_36396FC8A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `rencontre`
--
ALTER TABLE `rencontre`
  ADD CONSTRAINT `FK_460C35ED12EB0A51` FOREIGN KEY (`score_id`) REFERENCES `score` (`id`),
  ADD CONSTRAINT `FK_460C35ED7B39D312` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`),
  ADD CONSTRAINT `FK_460C35ED8A9CC08D` FOREIGN KEY (`equipeExt_id`) REFERENCES `equipe` (`id`),
  ADD CONSTRAINT `FK_460C35EDBE1140AF` FOREIGN KEY (`equipeDom_id`) REFERENCES `equipe` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
