-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 05:04 AM
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
(2, 'Dangduts'),
(5, 'Pop Punk');

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
(6, 'test duls ga sie', '65545eb99427f.jpg', 1);

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
(19, 'Beast and the Harlot', 'Avenged Sevenfold', 'This shining city built of gold, a far cry from innocence<br>\r\nThere\'s more than meets the eye \'round here, look to the waters of the deep<br>\r\nA city of evil<br>\r\nThere sat a seven-headed beast, ten horns raised from his head<br>\r\nSymbolic woman sits on his throne, but hatred strips her and leaves her naked<br>\r\nThe beast and the harlot (oh)<br><br>\r\nShe\'s a dwelling place for demons<br>\r\nShe\'s a cage for every unclean spirit, every filthy bird<br>\r\nAnd makes us drink the poisoned wine to fornicating with our kings<br>\r\nFallen now is Babylon the Great<br><br>\r\nThe city dressed in jewels and gold, fine linen, myrrh, and pearls<br>\r\nHer plagues will come all at once as her mourners watch her burn<br>\r\nDestroyed in an hour<br>\r\nMerchants and captains of the world, sailors, navigators too<br>\r\nWill weep and mourn this loss with her sins piled to the sky<br>\r\nThe beast and the harlot (oh)<br><br>\r\nShe\'s a dwelling place for demons<br>\r\nShe\'s a cage for every unclean spirit, every filthy bird<br>\r\nAnd makes us drink the poisoned wine to fornicating with our kings<br>\r\nFallen now is Babylon the Great<br><br>\r\nThe day has come for all us sinners<br>\r\nIf you\'re not a servant, you\'ll be struck to the ground<br>\r\nFlee the burning, greedy city<br>\r\nLooking back on her to see there\'s nothing around<br><br>\r\nI don\'t believe in fairy tales and no one wants to go to hell<br>\r\nYou\'ve made the wrong decision, and it\'s easy to see<br><br>\r\nNow if you wanna serve above or be a king below with us<br>\r\nYou\'re welcome to the city where your future is set forever<br>\r\nShe\'s a dwelling place for demons<br>\r\nShe\'s a cage for every unclean spirit, every filthy bird<br>\r\nAnd makes us drink the poisoned wine to fornicating with our kings<br>\r\nFallen now is Babylon the Great<br><br>\r\nShe\'s a dwelling place for demons<br>\r\nShe\'s a cage for every unclean spirit, every filthy bird<br>\r\nAnd makes us drink the poisoned wine to fornicating with our kings<br>\r\nFallen now is Babylon the Great<br>', '65546401cf315.jpg', '65546401cf520.mp3', 1),
(20, 'Gunslinger', 'Avenged Sevenfold', 'Yeah, you\'ve been alone<br>\r\nI\'ve been gone for far too long<br>\r\nBut with all that we\'ve been through<br>\r\nAfter all this time I\'m coming home to you<br><br>\r\nNever let it show<br>\r\nThe pain I\'ve grown to know<br>\r\n\'Cause with all these things we do<br>\r\nIt don\'t matter when I\'m coming home to you<br><br>\r\nI reach towards the sky I\'ve said my goodbyes<br>\r\nMy heart\'s always with you now<br>\r\nI won\'t question why so many have died<br>\r\nMy prayers have made it through yeah<br>\r\n\'Cause with all these things we do<br>\r\nIt don\'t matter when I\'m coming home to you<br><br>\r\nLetters keep me warm<br>\r\nHelped me through the storm<br>\r\nBut with all that we\'ve been through<br>\r\nAfter all this time I\'m coming home to you<br><br>\r\nI reach towards the sky I\'ve said my goodbyes<br>\r\nMy heart\'s always with you now<br>\r\nI won\'t question why so many have died<br>\r\nMy prayers have made it through yeah<br>\r\n\'Cause with all these things we do<br>\r\nIt don\'t matter when I\'m coming home to you<br><br>\r\nI\'ve always been true<br>\r\nI\'ve waited so long just to come hold you<br>\r\nI\'m making it through<br>\r\nIt\'s been far too long, we\'ve proven our<br>\r\nlove over time\'s so strong, in all that we do<br>\r\nThe stars in the night, they lend me their light<br>\r\nto bring me closer to heaven with you<br><br>\r\nBut with all that we\'ve been through<br>\r\nAfter all this time I\'m coming home to you<br><br>\r\nI reach towards the sky I\'ve said my goodbyes<br>\r\nMy heart\'s always with you now<br>\r\nI won\'t question why so many have died<br>\r\nMy prayers have made it through yeah<br>\r\n\'Cause with all these things we do<br>\r\nIt don\'t matter when I\'m coming home to you<br><br>\r\nAnd with all that we\'ve been through<br>\r\nAfter all this time I\'m coming home to you<br>', '6554644daedde.jpg', '6554644daeffb.mp3', 1),
(21, 'Bat Country', 'Avenged Sevenfold', 'He who makes a beast out of himself<br>\r\nGets rid of the pain of being a man<br><br>\r\nCaught here in a fiery blaze, won\'t lose my will to stay<br>\r\nI tried to drive all through the night<br>\r\nThe heat stroke ridden weather, the barren empty sights<br>\r\nNo oasis here to see, the sand is singing deathless words to me<br><br>\r\nCan\'t you help me as I\'m startin\' to burn (all alone)<br>\r\nToo many doses, and I\'m starting to get an attraction<br>\r\nMy confidence is leaving me on my own (all alone)<br>\r\nNo one can save me, and you know I don\'t want the attention<br><br>\r\nAs I adjust to my new sights<br>\r\nThe rarely tired lights will take me to new heights<br>\r\nMy hand is on the trigger, I\'m ready to ignite<br>\r\nTomorrow might not make i, t but everything\'s all right<br>\r\nMental fiction, follow me, show me what it\'s like to be set free<br><br>\r\nCan\'t you help me as I\'m startin\' to burn (all alone)<br>\r\nToo many doses, and I\'m starting to get an attraction<br>\r\nMy confidence is leaving me on my own (all alone)<br>\r\nNo one can save me, and you know I don\'t want the attention<br><br>\r\nSo sorry you\'re not here<br>\r\nI\'ve been chained too long, my vision\'s so unclear<br>\r\nNow take a trip with me<br>\r\nBut don\'t be surprised when things aren\'t what they seem<br><br>\r\nCaught here in a fiery blaze, won\'t lose my will to stay<br>\r\nThese eyes won\'t see the same after I flip today<br><br>\r\nSometimes I don\'t know why we\'d rather live than die<br>\r\nWe look up towards the sky for answers to our lives<br>\r\nWe may get some solutions, but most just pass us by<br>\r\nDon\'t want your absolution \'cause I can\'t make it right<br><br>\r\nI\'ll make a beast out of myself, yeah<br>\r\nGets rid of all the pain of being a man<br><br>\r\nCan\'t you help me as I\'m startin\' to burn (all alone)<br>\r\nToo many doses, and I\'m starting to get an attraction<br>\r\nMy confidence is leaving me on my own (all alone)<br>\r\nNo one can save me, and you know I don\'t want the attention<br><br>\r\nSo sorry you\'re not here<br>\r\nI\'ve been sane too long, my vision\'s so unclear<br>\r\nNow take a trip with me<br>\r\nBut don\'t be surprised when things aren\'t what they seem<br>\r\nI\'ve known it from the start<br>\r\nAll these good ideas will tear your brain apart<br>\r\nScared, but you can follow me<br>\r\nI\'m too weird to live, but much too rare to die<br>', '65546479c993c.jpg', '65546479c9bac.mp3', 1),
(24, 'Boulevard of Broken Dreams', 'Green Day', 'I walk a lonely road<br>\r\nThe only one that I have ever known<br>\r\nDon\'t know where it goes<br>\r\nBut it\'s home to me, and I walk alone<br><br>\r\nI walk this empty street<br>\r\nOn the Boulevard of Broken Dreams<br>\r\nWhere the city sleeps<br>\r\nAnd I\'m the only one, and I walk alone<br><br>\r\nI walk alone, I walk alone<br>\r\nI walk alone, I walk a-<br><br>\r\nMy shadow\'s the only one that walks beside me<br>\r\nMy shallow heart\'s the only thing that\'s beating<br>\r\nSometimes, I wish someone out there will find me<br>\r\n\'Til then, I walk alone<br><br>\r\nAh-ah, ah-ah, ah-ah, ah-ah<br>\r\nAh-ah, ah-ah, ah-ah<br><br>\r\nI\'m walking down the line<br>\r\nThat divides me somewhere in my mind<br>\r\nOn the borderline<br>\r\nOf the edge, and where I walk alone<br><br>\r\nRead between the lines<br>\r\nWhat\'s fucked up, and everything\'s alright<br>\r\nCheck my vital signs<br>\r\nTo know I\'m still alive, and I walk alone<br><br>\r\nI walk alone, I walk alone<br>\r\nI walk alone, I walk a-<br><br>\r\nMy shadow\'s the only one that walks beside me<br>\r\nMy shallow heart\'s the only thing that\'s beating<br>\r\nSometimes, I wish someone out there will find me<br>\r\n\'Til then, I walk alone<br><br>\r\nAh-ah, ah-ah, ah-ah, ah-ah<br>\r\nAh-ah, ah-ah, I walk alone, I walk a-<br><br>\r\nI walk this empty street<br>\r\nOn the Boulevard of Broken Dreams<br>\r\nWhere the city sleeps<br>\r\nAnd I\'m the only one, and I walk a-<br><br>\r\nMy shadow\'s the only one that walks beside me<br>\r\nMy shallow heart\'s the only thing that\'s beating<br>\r\nSometimes, I wish someone out there will find me<br>\r\n\'Til then, I walk alone<br>', '6555934868ee7.jpg', '6555934869101.mp3', 5),
(25, '21 Guns', 'Green Day', 'Do you know what\'s worth fighting for<br>\r\nWhen it\'s not worth dying for?<br>\r\nDoes it take your breath away<br>\r\nAnd you feel yourself suffocating?<br>\r\nDoes the pain weigh out the pride?<br>\r\nAnd you look for a place to hide?<br>\r\nDid someone break your heart inside?<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br><br>\r\nWhen you\'re at the end of the road<br>\r\nAnd you lost all sense of control<br>\r\nAnd your thoughts have taken their toll<br>\r\nWhen your mind breaks the spirit of your soul<br>\r\nYour faith walks on broken glass<br>\r\nAnd the hangover doesn\'t pass<br>\r\nNothing\'s ever built to last<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br><br>\r\nDid you try to live on your own<br>\r\nWhen you burned down the house and home?<br>\r\nDid you stand too close to the fire?<br>\r\nLike a liar looking for forgiveness from a stone<br><br>\r\nWhen it\'s time to live and let die<br>\r\nAnd you can\'t get another try<br>\r\nSomething inside this heart has died<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br>', '655593cd882b9.jpg', '655593cd884dc.mp3', 5);

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
(1, 'admin', '$2y$10$OfxBR1ErxqGb/GezuRnmVeY6TBeLyxQ6B8lLYnlvhbxhYenBIRtNe', 'admin'),
(2, 'yuha', '$2y$10$pUCd85Bq5e5IP9J5D5Gwc.H/y095lw1dpXReCb0y4UlqOFzNqOxS6', 'user');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `playlistsong`
--
ALTER TABLE `playlistsong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
