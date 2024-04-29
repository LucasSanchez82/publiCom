-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 avr. 2024 à 14:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `publicom`
--

-- --------------------------------------------------------

--
-- Structure de la table `historiquemessage`
--

CREATE TABLE `historiquemessage` (
  `IDHISTORIQUEMESSAGE` int(11) NOT NULL,
  `IDMESSAGE` int(11) NOT NULL,
  `IDUTILISATEUR` int(11) NOT NULL,
  `DATEHISTORIQUEMESSAGE` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `TITREHISTORIQUEMESSAGE` char(32) NOT NULL,
  `CONTENUHISTORIQUEMESSAGE` char(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `IDMESSAGE` int(11) NOT NULL,
  `IDUTILISATEUR` int(11) NOT NULL,
  `TITREMESSAGE` char(32) NOT NULL,
  `CONTENUMESSAGE` char(160) NOT NULL,
  `IMAGEMESSAGE` longblob NOT NULL,
  `ENLIGNE` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `IDUTILISATEUR` int(11) NOT NULL,
  `NOMUTILISATEUR` char(50) NOT NULL,
  `PRENOMUTILISATEUR` char(30) NOT NULL,
  `EMAILUTILISATEUR` char(100) NOT NULL,
  `ISADMIN` tinyint(1) NOT NULL DEFAULT 0,
  `MDPUTILISATEUR` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`IDUTILISATEUR`, `NOMUTILISATEUR`, `PRENOMUTILISATEUR`, `EMAILUTILISATEUR`, `ISADMIN`, `MDPUTILISATEUR`) VALUES
(50, 'Durand2', 'Paulencore modifie', 'paul.durant@email.com', 0, 'motdepasse1'),
(51, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(54, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(55, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(58, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(59, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(62, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(63, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(66, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(67, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(70, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(71, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(74, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(75, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(78, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(79, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(82, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(83, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(86, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(87, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(90, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(91, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(94, 'Durand', 'Paul', 'paul.durant@email.com', 0, 'motdepasse1'),
(95, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2'),
(99, 'Leroy', 'Marie', 'marie.leroy@email.com', 1, 'motdepasse2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `historiquemessage`
--
ALTER TABLE `historiquemessage`
  ADD PRIMARY KEY (`IDHISTORIQUEMESSAGE`),
  ADD KEY `FK_HISTORIQUEMESSAGE_MESSAGE` (`IDMESSAGE`),
  ADD KEY `FK_HISTORIQUEMESSAGE_UTILISATEUR` (`IDUTILISATEUR`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`IDMESSAGE`),
  ADD KEY `FK_MESSAGE_UTILISATEUR` (`IDUTILISATEUR`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`IDUTILISATEUR`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `historiquemessage`
--
ALTER TABLE `historiquemessage`
  MODIFY `IDHISTORIQUEMESSAGE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `IDMESSAGE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `IDUTILISATEUR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `historiquemessage`
--
ALTER TABLE `historiquemessage`
  ADD CONSTRAINT `FK_HISTORIQUEMESSAGE_MESSAGE` FOREIGN KEY (`IDMESSAGE`) REFERENCES `message` (`IDMESSAGE`),
  ADD CONSTRAINT `FK_HISTORIQUEMESSAGE_UTILISATEUR` FOREIGN KEY (`IDUTILISATEUR`) REFERENCES `utilisateur` (`IDUTILISATEUR`);

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_MESSAGE_UTILISATEUR` FOREIGN KEY (`IDUTILISATEUR`) REFERENCES `utilisateur` (`IDUTILISATEUR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
