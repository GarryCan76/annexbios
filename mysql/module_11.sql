-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 11:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `module_11`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `full_name`, `image`) VALUES
(1, 'Cillian Murphy', ''),
(2, 'Emily Blunt', ''),
(3, 'Matt Damon', ''),
(4, 'Margot Robbie', ''),
(5, 'Ryan Gosling', ''),
(6, 'America Ferrera', ''),
(7, 'Kate McKinnon', ''),
(8, 'Michael Cera', ''),
(9, 'Ariana Greenblatt', ''),
(10, 'Issa Rae', ''),
(11, 'Rhea Perlman', ''),
(12, 'Will Ferrell', ''),
(13, 'Hari Nef', ''),
(14, 'Emma Mackey', ''),
(15, 'Alexandra Shipp', ''),
(16, 'Kingsley Ben-Adir', ''),
(17, 'Taissa Farmiga', ''),
(18, 'Gael Raës', ''),
(19, 'Jonas Bloquet', ''),
(20, 'Storm Reid', ''),
(21, 'Anna Popplewell', ''),
(22, 'Bonnie Aarons', ''),
(23, 'Katelyn Rose Downey', ''),
(24, 'Suzanne Bertish', ''),
(25, 'Léontine D’Oncieu', ''),
(26, 'Anouk Darwin Homewood', '');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `full_name`) VALUES
(1, 'Christopher Nolan'),
(2, 'Greta Gerwig\r\n'),
(3, 'Michael Chaves');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'History'),
(2, 'Thriller'),
(3, 'Drama'),
(4, 'Mysterie'),
(5, 'Historical Fiction'),
(6, 'Comedy'),
(7, 'Adventure'),
(8, 'Romance'),
(9, 'Romantic Comedy'),
(10, 'Children\'s film'),
(11, 'Fantasy'),
(12, 'Narrative'),
(14, 'Horror'),
(15, 'Supernatural horror');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `captions` varchar(255) NOT NULL,
  `release_date` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `trailer` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `name`, `description`, `poster`, `language`, `captions`, `release_date`, `duration`, `trailer`, `rating`) VALUES
(1, 'Oppenheimer', 'Oppenheimer, geschreven en geregisseerd door Christopher Nolan, is een epische thriller die het fascinerende verhaal vertelt van de raadselachtige man die om de wereld te redden het risico moet nemen dat deze wordt verwoest.\\n\\nDe hoofdrollen worden verto', 'https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg', 'Engels', 'nee', 'July 21 2023', 180, 'https://www.youtube.com/watch?v=uYPbbksJxIg', ''),
(2, 'Barbie', 'In Barbieland is alles en iedereen perfect. Behalve als je een existentiële crisis hebt. Of als je een Ken bent.\r\n', 'https://upload.wikimedia.org/wikipedia/en/0/0b/Barbie_2023_poster.jpg', 'Engels', 'Nee', 'July 19 2023', 114, 'https://www.google.com/search?q=barbie+movie+r&oq=barbie+movie+r&aqs=chrome..69i57j35i39i650j0i67i650l2j0i512j0i20i263i512j0i512l4.4250j1j7&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:477e45d1,vid:pBk4NYhWNMM,st:0', ''),
(3, 'THE Nun 2', 'New Line Cinema presenteert de horror-thriller The Nun II, het volgende hoofdstuk in het verhaal van The Nun, het meest succesvolle deel uit de populaire miljardenfranchise: het Conjuring-universum. Frankrijk, 1956. Er wordt een priester vermoord. Een kwa', 'https://m.media-amazon.com/images/M/MV5BNmE5MmM2ZGEtNTVlNC00M2Q3LTliMjMtMzg5YjUyMjliZWIzXkEyXkFqcGdeQXVyMTAxNzQ1NzI@._V1_.jpg', 'Engels', 'Nee', 'September 8 2023', 110, 'https://www.youtube.com/watch?v=QF-oyCwaArU', '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_actor`
--

CREATE TABLE `movie_actor` (
  `movie_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_actor`
--

INSERT INTO `movie_actor` (`movie_id`, `actor_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(3, 17),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 22),
(3, 23),
(3, 24),
(3, 25),
(3, 26);

-- --------------------------------------------------------

--
-- Table structure for table `movie_director`
--

CREATE TABLE `movie_director` (
  `movie_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_director`
--

INSERT INTO `movie_director` (`movie_id`, `director_id`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `movie_genre`
--

CREATE TABLE `movie_genre` (
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_genre`
--

INSERT INTO `movie_genre` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 3),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(3, 14),
(3, 15),
(3, 2),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `movie_rating`
--

CREATE TABLE `movie_rating` (
  `movie_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_rating`
--

INSERT INTO `movie_rating` (`movie_id`, `rating_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 2),
(2, 1),
(2, 4),
(3, 8),
(3, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `name`) VALUES
(1, 'Geweld'),
(2, 'Angst'),
(3, 'Seks'),
(4, 'Grof taalgebruik\r\n'),
(5, 'Discriminatie'),
(6, 'Drugs- en/of alcocholgebruik'),
(7, '12'),
(8, '16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD KEY `actor` (`actor_id`),
  ADD KEY `movie` (`movie_id`);

--
-- Indexes for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD KEY `genres` (`genre_id`);

--
-- Indexes for table `movie_rating`
--
ALTER TABLE `movie_rating`
  ADD KEY `rating` (`rating_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_actor`
--
ALTER TABLE `movie_actor`
  ADD CONSTRAINT `actor` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `movie` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `genres` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `movie_rating`
--
ALTER TABLE `movie_rating`
  ADD CONSTRAINT `rating` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
