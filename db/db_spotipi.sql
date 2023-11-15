-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 02:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spotipi`
--

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Metal'),
(2, 'Dangdut');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `photo`, `id_user`) VALUES
(4, 'test lagi', '6553104b2c0ed.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlistsong`
--

CREATE TABLE `playlistsong` (
  `id` int(11) NOT NULL,
  `id_playlist` int(11) NOT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `lyrics` text NOT NULL,
  `photo` text NOT NULL,
  `music` varchar(255) NOT NULL,
  `id_genre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `lyrics`, `photo`, `music`, `id_genre`) VALUES
(15, 'Bat Country', 'Avenged Sevenfold', 'He who makes a beast out of himself\r\nGets rid of the pain of being a man\r\nCaught here in a fiery blaze, won\'t lose my will to stay\r\nI tried to drive all through the night\r\nThe heat stroke ridden weather, the barren empty sights\r\nNo oasis here to see, the sand is singing deathless words to me\r\nCan\'t you help me as I\'m startin\' to burn (all alone)\r\nToo many doses, and I\'m starting to get an attraction\r\nMy confidence is leaving me on my own (all alone)\r\nNo one can save me, and you know I don\'t want the attention\r\nAs I adjust to my new sights\r\nThe rarely tired lights will take me to new heights\r\nMy hand is on the trigger, I\'m ready to ignite\r\nTomorrow might not make i, t but everything\'s all right\r\nMental fiction, follow me, show me what it\'s like to be set free\r\nCan\'t you help me as I\'m startin\' to burn (all alone)\r\nToo many doses, and I\'m starting to get an attraction\r\nMy confidence is leaving me on my own (all alone)\r\nNo one can save me, and you know I don\'t want the attention\r\nSo sorry you\'re not here\r\nI\'ve been chained too long, my vision\'s so unclear\r\nNow take a trip with me\r\nBut don\'t be surprised when things aren\'t what they seem\r\nCaught here in a fiery blaze, won\'t lose my will to stay\r\nThese eyes won\'t see the same after I flip today\r\nSometimes I don\'t know why we\'d rather live than die\r\nWe look up towards the sky for answers to our lives\r\nWe may get some solutions, but most just pass us by\r\nDon\'t want your absolution \'cause I can\'t make it right\r\nI\'ll make a beast out of myself, yeah\r\nGets rid of all the pain of being a man\r\nCan\'t you help me as I\'m startin\' to burn (all alone)\r\nToo many doses, and I\'m starting to get an attraction\r\nMy confidence is leaving me on my own (all alone)\r\nNo one can save me, and you know I don\'t want the attention\r\nSo sorry you\'re not here\r\nI\'ve been sane too long, my vision\'s so unclear\r\nNow take a trip with me\r\nBut don\'t be surprised when things aren\'t what they seem\r\nI\'ve known it from the start\r\nAll these good ideas will tear your brain apart\r\nScared, but you can follow me\r\nI\'m too weird to live, but much too rare to die', '6554245fba4db.jpg', '6554245fba68e.mp3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'yuha', '$2y$10$OfxBR1ErxqGb/GezuRnmVeY6TBeLyxQ6B8lLYnlvhbxhYenBIRtNe', 'admin'),
(3, 'abi', '$2y$10$pUCd85Bq5e5IP9J5D5Gwc.H/y095lw1dpXReCb0y4UlqOFzNqOxS6', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlists_ibfk_1` (`id_user`);

--
-- Indexes for table `playlistsong`
--
ALTER TABLE `playlistsong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_song` (`id_song`),
  ADD KEY `id_playlist` (`id_playlist`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlistsong`
--
ALTER TABLE `playlistsong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playlists`
--
ALTER TABLE `playlists`
  ADD CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `playlistsong`
--
ALTER TABLE `playlistsong`
  ADD CONSTRAINT `playlistsong_ibfk_1` FOREIGN KEY (`id_song`) REFERENCES `songs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `playlistsong_ibfk_2` FOREIGN KEY (`id_playlist`) REFERENCES `playlists` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
