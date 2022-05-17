-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 17 mai 2022 à 12:29
-- Version du serveur :  8.0.19
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `marvel`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `id_actor` int NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`id_actor`, `last_name`, `first_name`, `date_of_birth`, `creation_date`) VALUES
(1, 'Downey', 'Robert Jr.', '1965-04-04', '2022-05-16 14:10:54'),
(2, 'Paltrow', 'Gwyneth', '1972-09-27', '2022-05-16 14:13:48'),
(3, 'Howard', 'Terrence', '1969-03-11', '2022-05-16 14:15:24'),
(4, 'Bridges', 'Jeff', '1949-11-04', '2022-05-16 14:16:19'),
(5, 'Norton', 'Edward', '1969-08-18', '2022-05-16 14:28:46'),
(6, 'Tyler', 'Liv', '1977-07-01', '2022-05-16 14:29:45'),
(7, 'Roth', 'Tim', '1961-05-14', '2022-05-16 14:44:19'),
(8, 'Hurt', 'William', '1950-03-20', '2022-05-16 14:48:51'),
(9, 'Rourke', 'Mickey', '1952-09-16', '2022-05-16 17:02:27'),
(10, 'Cheadle', 'Don', '1964-11-29', '2022-05-16 18:40:13'),
(11, 'Johansson', 'Scarlett', '1984-11-22', '2022-05-16 18:41:19'),
(12, 'Rockwell', 'Sam', '1968-05-11', '2022-05-16 18:42:01'),
(13, 'Hemsworth', 'Chris', '1983-08-11', '2022-05-16 18:43:01'),
(14, 'Portman', 'Natalie', '1981-06-11', '2022-05-16 18:43:46'),
(15, 'Hiddleston', 'Tom', '1981-02-09', '2022-05-16 18:45:08'),
(16, 'Hopkins', 'Anthony', '1937-12-31', '2022-05-16 18:45:59'),
(17, 'Evans', 'Chris', '1981-06-13', '2022-05-16 18:47:48'),
(18, 'Atwell', 'Hayley', '1982-04-05', '2022-05-16 18:49:12'),
(19, 'Weaving', 'Hugo', '1960-04-04', '2022-05-16 18:50:47'),
(20, 'Stan', 'Sebastian', '1982-08-13', '2022-05-16 18:51:25'),
(21, 'Lee Jones', 'Tommy', '1946-09-15', '2022-05-16 18:53:47'),
(22, 'Ruffalo', 'Mark', '1967-09-22', '2022-05-16 18:58:42'),
(23, 'Renner', 'Jeremy', '1971-01-07', '2022-05-16 18:59:41');

-- --------------------------------------------------------

--
-- Structure de la table `directors`
--

CREATE TABLE `directors` (
  `id_director` int NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `directors`
--

INSERT INTO `directors` (`id_director`, `last_name`, `first_name`, `date_of_birth`, `creation_date`) VALUES
(1, 'Favreau', 'Jon', '1966-10-19', '2022-05-16 13:09:40'),
(2, 'Leterrier', 'Louis', '1973-06-17', '2022-05-16 16:45:45'),
(3, 'Branagh', 'Kenneth', '1960-12-10', '2022-05-16 16:46:27'),
(4, 'Johnston', 'Joe', '1950-05-13', '2022-05-16 16:47:11'),
(5, 'Whedon', 'Joss', '1964-06-23', '2022-05-16 16:47:48'),
(6, 'Black', 'Shane', '1961-12-16', '2022-05-16 19:15:12'),
(7, 'Taylor', 'Alan', '1959-01-13', '2022-05-16 19:16:54'),
(8, 'Russo', 'Anthony', '1970-02-03', '2022-05-16 19:17:57'),
(9, 'Joe', 'Russo', '1971-07-19', '2022-05-16 19:19:02'),
(10, 'Gunn', 'James', '1966-08-05', '2022-05-16 19:19:43'),
(11, 'Reed', 'Peyton', '1964-07-03', '2022-05-16 19:20:47');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id_movie` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `release_date` date NOT NULL,
  `duration` smallint NOT NULL,
  `phase` int NOT NULL,
  `synopsis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id_movie`, `title`, `release_date`, `duration`, `phase`, `synopsis`, `creation_date`) VALUES
(1, 'Iron Man', '2008-04-30', 125, 1, 'Iron Man de 2008 raconte l\'histoire de Tony Stark, un industriel milliardaire et inventeur de génie qui est kidnappé et contraint de construire une arme dévastatrice. Au lieu de cela, en utilisant son intelligence et son ingéniosité, Tony construit une armure de haute technologie et échappe à la captivité. Lorsqu\'il découvre un complot néfaste aux implications mondiales, il revêt sa puissante armure et jure de protéger le monde en tant qu\'Iron Man.', '2022-05-16 13:06:00'),
(2, 'L\'Incroyable Hulk', '2008-07-23', 112, 1, 'Dans ce nouveau départ, le scientifique Bruce Banner cherche désespérément un remède au rayonnement gamma qui a empoisonné ses cellules et libère la force débridée de la rage en lui : Le Hulk. Vivre dans l\'ombre, coupé d\'une vie qu\'il connaissait et de la femme qu\'il aime, Betty Ross. Banner lutte pour éviter la poursuite obsessionnelle de son ennemi juré, le général Thunderbolt Ross et la machine militaire qui cherche à le capturer et à exploiter brutalement son pouvoir. Alors qu\'ils s\'attaquent tous les trois aux secrets qui ont mené à la création de Hulk, ils sont confrontés à un nouvel adversaire monstrueux, l\'Abomination, dont la force destructrice dépasse même celle de Hulk. Un scientifique doit faire un choix final angoissant : accepter une vie paisible en tant que Bruce Banner ou trouver l\'héroïsme dans la créature qu\'il porte en lui, l\'incroyable Hulk.', '2022-05-16 13:06:00'),
(3, 'Iron Man 2', '2010-04-26', 125, 1, 'Maintenant que le monde entier sait qu\'il est Iron Man, l\'inventeur milliardaire Tony Stark subit des pressions de toutes parts pour partager sa technologie avec l\'armée. Il hésite à révéler les secrets de son armure, craignant que l\'information ne tombe entre de mauvaises mains. Avec Pepper Potts et James Rhodes à ses côtés, Tony doit forger de nouvelles alliances et affronter un nouvel ennemi puissant.', '2022-05-16 13:06:00'),
(4, 'Thor', '2011-04-27', 114, 1, 'En tant que fils d\'Odin, roi des dieux nordiques, Thor héritera bientôt du trône d\'Asgard de son père vieillissant. Cependant, le jour où il doit être couronné, Thor réagit avec brutalité lorsque les ennemis des dieux, les Géants des Glaces, entrent dans le palais en violation de leur traité. En guise de punition, Odin bannit Thor sur Terre. Alors que Loki, le frère de Thor, complote des méfaits à Asgard, Thor, maintenant dépouillé de ses pouvoirs, fait face à sa plus grande menace.', '2022-05-16 15:42:03'),
(5, 'Captain America: First Avenger', '2011-08-17', 124, 1, 'Né pendant la Grande Dépression, Steve Rogers a grandi dans une famille pauvre et fragile. Horrifié par les images d\'actualités des nazis en Europe, Rogers a eu l\'idée de s\'enrôler dans l\'armée. Cependant, à cause de sa fragilité et de sa maladie, il a été rejeté. Après avoir entendu le plaidoyer sérieux du garçon, le général Chester Phillips a offert à Rogers l\'occasion de participer à une expérience spéciale.... Opération : La renaissance. Après des semaines de tests, Rogers a enfin reçu le sérum du super-soldat et a été bombardé de \"rayons vita\". Steve Rogers est sorti du traitement avec un corps aussi parfait qu\'un corps peut l\'être;. Rogers a ensuite suivi un programme d\'entraînement physique et tactique intensif. Trois mois plus tard, il est nommé Capitain America pour la première fois. Armé de son bouclier indestructible et de son sens du combat, Captain America a poursuivi sa guerre contre le mal, à la fois en tant que sentinelle de la liberté et en tant que chef des Avengers.', '2022-05-16 15:47:53'),
(6, 'Avengers', '2012-04-25', 143, 1, 'Marvel Studios présente en association avec Paramount Pictures \"Avengers\" - l\'équipe de super héros de toute une vie, mettant en vedette les super héros emblématiques de Marvel : Iron Man, l\'incroyable Hulk, Thor, Captain America, Hawkeye, et Black Widow. Lorsqu\'un ennemi inattendu menace la sécurité mondiale, Nick Fury, directeur de l\'agence internationale de maintien de la paix S.H.I.E.L.D., se retrouve à la recherche d\'une équipe pour sortir le monde du bord du désastre. Dans le monde entier, un effort de recrutement audacieux commence.', '2022-05-16 15:49:08'),
(7, 'Iron Man 3', '2013-04-24', 130, 2, 'Iron Man 3 de Marvel oppose l\'audacieux mais brillant industriel Tony Stark à un ennemi dont la portée ne connaît pas de limites. Lorsque Stark découvre que son monde personnel a été détruit par l\'ennemi, il se lance dans une quête déchirante pour trouver les responsables. Ce voyage, à chaque virage, mettra à l\'épreuve son courage. Le dos contre le mur, Tony Stark est laissé à lui-même pour survivre, comptant sur son ingéniosité et son instinct pour protéger ses proches. Alors qu\'il se bat pour revenir, Stark découvre la réponse à la question qui le hante secrètement : l\'homme fait-il le costume ou le costume fait-il l\'homme ?', '2022-05-16 19:05:28'),
(8, 'Thor : Le Monde des ténèbres', '2013-10-30', 112, 2, 'Thor se bat pour restaurer l\'ordre, mais les Elfes noirs resurgissent pour plonger l\'univers dans les ténèbres. Il est forcé de s\'allier avec Loki pour sauver son peuple et ceux qu\'il aime.', '2022-05-16 19:06:56'),
(9, 'Captain America : Le Soldat de l\'hiver', '2014-03-26', 136, 2, 'À Washington D.C. de nos jours, Steve Rogers, alias Captain America s\'allie à Black Widow et un nouvel allié, Falcon, pour vaincre un puissant et mystérieux ennemi.', '2022-05-16 19:09:06'),
(10, 'Les Gardiens de la Galaxie', '2014-08-13', 121, 2, 'Peter Quill est poursuivi après avoir volé un orbe convoité par un puissant méchant, Ronan, qui menace l\'univers tout entier. Quill allie ses forces à quatre héros marginaux : Rocket, Groot, Gamora et Drax.', '2022-05-16 19:10:39'),
(11, 'Avengers : L\'Ère d\'Ultron', '2015-04-22', 142, 2, 'Tony Stark crée une intelligence artificielle qui lui échappe et entreprend d\'anéantir l\'humanité.', '2022-05-16 19:12:04'),
(12, 'Ant-Man', '2015-07-14', 117, 2, 'Armé d’une capacité étonnante, celle de rétrécir tout en augmentant sa force, l’arnaqueur Scott Lang doit embrasser la part du héros qui est en lui et aider son mentor, le Dr. Hank Pym, en protégeant le secret du costume d\'Ant-Man d’une nouvelle génération de menaces gigantesques. Contre ces obstacles en apparence insurmontables, Pym et Lang doivent planifier et réussir un cambriolage qui sauvera le monde. Mais avant d\'accomplir cette mission, Scott Lang devra s\'attaquer à Darren Cross (qui voulait créer une armée d\'homme-fourmi) doté, lui aussi, d\'un costume au même pouvoir que celui d\'Ant-Man.', '2022-05-16 19:13:27');

-- --------------------------------------------------------

--
-- Structure de la table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `id_movie` int NOT NULL,
  `id_acteur` int NOT NULL,
  `character_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies_actors`
--

INSERT INTO `movies_actors` (`id_movie`, `id_acteur`, `character_name`, `creation_date`) VALUES
(1, 1, 'Tony Stark', '2022-05-16 13:54:29'),
(1, 2, 'Pepper Potts', '2022-05-16 13:54:29'),
(1, 3, 'James Rhodes', '2022-05-16 13:54:29'),
(1, 4, 'Obadiah Stane', '2022-05-16 13:54:29'),
(2, 5, 'Bruce Banner', '2022-05-16 13:54:29'),
(2, 6, 'Betty Ross', '2022-05-16 13:54:29'),
(2, 7, 'Emil Blonsky / L\'abomination', '2022-05-17 11:45:15'),
(2, 8, 'Lieutenant général Thaddeus « Thunderbolt » Ross', '2022-05-17 11:46:22'),
(3, 1, 'Tony Stark', '2022-05-17 11:46:57'),
(3, 2, 'Peter Potts', '2022-05-17 11:47:44'),
(3, 9, 'Ivan Vanko / Whiplash', '2022-05-17 11:48:15'),
(3, 10, 'Lieutenant-colonel James « Rhodey » Rhodes / War Machine', '2022-05-17 11:48:47'),
(3, 11, 'Natalie Rushman / Natasha Romanoff / Black Widow', '2022-05-17 11:49:12'),
(3, 12, 'Justin Hammer', '2022-05-17 11:49:40'),
(4, 13, 'Thor', '2022-05-17 11:50:42'),
(4, 14, 'Jane Foster', '2022-05-17 11:51:14'),
(4, 15, 'Loki', '2022-05-17 11:52:04'),
(4, 16, 'Odin', '2022-05-17 11:52:22'),
(5, 17, 'Steve Rogers / Captain America', '2022-05-17 11:53:28'),
(5, 18, 'Peggy Carter', '2022-05-17 11:53:50'),
(5, 19, 'Johann Schmidt / Crâne rouge', '2022-05-17 11:54:16'),
(5, 20, 'James « Bucky » Barnes', '2022-05-17 11:55:17'),
(5, 21, 'Colonel Chester Phillips', '2022-05-17 11:55:51'),
(6, 1, 'Tony Stark / Iron Man', '2022-05-17 11:56:27'),
(6, 13, 'Thor', '2022-05-17 11:56:59'),
(6, 15, 'Loki', '2022-05-17 11:57:30'),
(7, 22, 'Hulk', '2022-05-17 11:57:53'),
(6, 17, 'Steve Rogers / Captain America', '2022-05-17 11:58:34'),
(6, 11, 'Natasha Romanoff / Black Widow', '2022-05-17 11:59:18'),
(6, 23, 'Clint Barton / Hawkeye', '2022-05-17 11:59:33');

-- --------------------------------------------------------

--
-- Structure de la table `movies_directors`
--

CREATE TABLE `movies_directors` (
  `id_movie` int NOT NULL,
  `id_director` int NOT NULL,
  `director_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modification_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `movies_directors`
--

INSERT INTO `movies_directors` (`id_movie`, `id_director`, `director_name`, `creation_date`) VALUES
(1, 1, 'Jon Favreau', '2022-05-16 13:42:27');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id_actor`),
  ADD UNIQUE KEY `last_name` (`last_name`),
  ADD KEY `last_name_2` (`last_name`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `date_of_birth` (`date_of_birth`);

--
-- Index pour la table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id_director`),
  ADD KEY `last_name` (`last_name`),
  ADD KEY `first_name` (`first_name`),
  ADD KEY `date_of_birth` (`date_of_birth`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_movie`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `release_date` (`release_date`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Index pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD KEY `Id_film` (`id_movie`),
  ADD KEY `Id_acteur` (`id_acteur`) USING BTREE;

--
-- Index pour la table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD PRIMARY KEY (`id_movie`) USING BTREE,
  ADD KEY `Id_realisateur` (`id_director`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `id_actor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `directors`
--
ALTER TABLE `directors`
  MODIFY `id_director` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id_movie` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`id_acteur`) REFERENCES `actors` (`id_actor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `movies_directors`
--
ALTER TABLE `movies_directors`
  ADD CONSTRAINT `movies_directors_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `movies` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movies_directors_ibfk_2` FOREIGN KEY (`id_director`) REFERENCES `directors` (`id_director`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
