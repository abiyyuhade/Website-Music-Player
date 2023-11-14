-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 07:35 AM
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
  `music` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `lyrics`, `photo`, `music`) VALUES
(4, 'Gunslinger', 'Avenged Sevenfold', 'Yeah, you\'ve been alone I\'ve been gone for far too long But with all that we\'ve been through After all this time I\'m coming home to you Never let it show The pain I\'ve grown to know \'Cause with all these things we do It don\'t matter when I\'m coming home to you I reach towards the sky I\'ve said my goodbyes My heart\'s always with you now I won\'t question why so many have died My prayers have made it through yeah \'Cause with all these things we do It don\'t matter when I\'m coming home to you Letters keep me warm Helped me through the storm But with all that we\'ve been through After all this time I\'m coming home to you I reach towards the sky I\'ve said my goodbyes My heart\'s always with you now I won\'t question why so many have died My prayers have made it through yeah \'Cause with all these things we do It don\'t matter when I\'m coming home to you I\'ve always been true I\'ve waited so long just to come hold you I\'m making it through It\'s been far too long, we\'ve proven our love over time\'s so strong, in all that we do The stars in the night, they lend me their light to bring me closer to heaven with you But with all that we\'ve been through After all this time I\'m coming home to you I reach towards the sky I\'ve said my goodbyes My heart\'s always with you now I won\'t question why so many have died My prayers have made it through yeah \'Cause with all these things we do It don\'t matter when I\'m coming home to you And with all that we\'ve been through After all this time I\'m coming home to you', 'gunslinger.jpg', 'Gunslinger.mp3'),
(6, 'Bat Country', 'Avenged Sevenfold', 'He who makes a beast out of himself Gets rid of the pain of being a man Caught here in a fiery blaze, won\'t lose my will to stay I tried to drive all through the night The heat stroke ridden weather, the barren empty sights No oasis here to see, the sand is singing deathless words to me Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention As I adjust to my new sights The rarely tired lights will take me to new heights My hand is on the trigger, I\'m ready to ignite Tomorrow might not make i, t but everything\'s all right Mental fiction, follow me, show me what it\'s like to be set free Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention So sorry you\'re not here I\'ve been chained too long, my vision\'s so unclear Now take a trip with me But don\'t be surprised when things aren\'t what they seem Caught here in a fiery blaze, won\'t lose my will to stay These eyes won\'t see the same after I flip today Sometimes I don\'t know why we\'d rather live than die We look up towards the sky for answers to our lives We may get some solutions, but most just pass us by Don\'t want your absolution \'cause I can\'t make it right I\'ll make a beast out of myself, yeah Gets rid of all the pain of being a man Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention So sorry you\'re not here I\'ve been sane too long, my vision\'s so unclear Now take a trip with me But don\'t be surprised when things aren\'t what they seem I\'ve known it from the start All these good ideas will tear your brain apart Scared, but you can follow me I\'m too weird to live, but much too rare to die', 'bat country.jpg', 'Bat Country.mp3'),
(7, 'Beast And The Harlot', 'Avenged Sevenfold', 'This shining city built of gold, a far cry from innocence There\'s more than meets the eye \'round here, look to the waters of the deep A city of evil There sat a seven-headed beast, ten horns raised from his head Symbolic woman sits on his throne, but hatred strips her and leaves her naked The beast and the harlot (oh) She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great The city dressed in jewels and gold, fine linen, myrrh, and pearls Her plagues will come all at once as her mourners watch her burn Destroyed in an hour Merchants and captains of the world, sailors, navigators too Will weep and mourn this loss with her sins piled to the sky The beast and the harlot (oh) She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great The day has come for all us sinners If you\'re not a servant, you\'ll be struck to the ground Flee the burning, greedy city Looking back on her to see there\'s nothing around I don\'t believe in fairy tales and no one wants to go to hell You\'ve made the wrong decision, and it\'s easy to see Now if you wanna serve above or be a king below with us You\'re welcome to the city where your future is set forever She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great', 'beast and the harlot.jpg', 'Beast And The Harlot.mp3');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
