-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2023 at 03:32 AM
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
(5, '21 Guns', 'Green Day', 'Do you know what\'s worth fighting for When it\'s not worth dying for? Does it take your breath away And you feel yourself suffocating? Does the pain weigh out the pride? And you look for a place to hide? Did someone break your heart inside? You\'re in ruins One, twenty one guns Lay down your arms Give up the fight One, twenty one guns Throw up your arms into the sky, You and I When you\'re at the end of the road And you lost all sense of control And your thoughts have taken their toll When your mind breaks the spirit of your soul Your faith walks on broken glass And the hangover doesn\'t pass Nothing\'s ever built to last You\'re in ruins One, twenty one guns Lay down your arms Give up the fight One, twenty one guns Throw up your arms into the sky, You and I Did you try to live on your own When you burned down the house and home? Did you stand too close to the fire? Like a liar looking for forgiveness from a stone When it\'s time to live and let die And you can\'t get another try Something inside this heart has died You\'re in ruins One, twenty one guns Lay down your arms Give up the fight One, twenty one guns Throw up your arms into the sky, One, twenty one guns Lay down your arms Give up the fight One, twenty one guns Throw up your arms into the sky, You and I', '21guns.jpg', 'Green Day - 21 Guns.mp3'),
(6, 'Bat Country', 'Avenged Sevenfold', 'He who makes a beast out of himself Gets rid of the pain of being a man Caught here in a fiery blaze, won\'t lose my will to stay I tried to drive all through the night The heat stroke ridden weather, the barren empty sights No oasis here to see, the sand is singing deathless words to me Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention As I adjust to my new sights The rarely tired lights will take me to new heights My hand is on the trigger, I\'m ready to ignite Tomorrow might not make i, t but everything\'s all right Mental fiction, follow me, show me what it\'s like to be set free Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention So sorry you\'re not here I\'ve been chained too long, my vision\'s so unclear Now take a trip with me But don\'t be surprised when things aren\'t what they seem Caught here in a fiery blaze, won\'t lose my will to stay These eyes won\'t see the same after I flip today Sometimes I don\'t know why we\'d rather live than die We look up towards the sky for answers to our lives We may get some solutions, but most just pass us by Don\'t want your absolution \'cause I can\'t make it right I\'ll make a beast out of myself, yeah Gets rid of all the pain of being a man Can\'t you help me as I\'m startin\' to burn (all alone) Too many doses, and I\'m starting to get an attraction My confidence is leaving me on my own (all alone) No one can save me, and you know I don\'t want the attention So sorry you\'re not here I\'ve been sane too long, my vision\'s so unclear Now take a trip with me But don\'t be surprised when things aren\'t what they seem I\'ve known it from the start All these good ideas will tear your brain apart Scared, but you can follow me I\'m too weird to live, but much too rare to die', 'bat country.jpg', 'Bat Country.mp3'),
(7, 'Beast And The Harlot', 'Avenged Sevenfold', 'This shining city built of gold, a far cry from innocence There\'s more than meets the eye \'round here, look to the waters of the deep A city of evil There sat a seven-headed beast, ten horns raised from his head Symbolic woman sits on his throne, but hatred strips her and leaves her naked The beast and the harlot (oh) She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great The city dressed in jewels and gold, fine linen, myrrh, and pearls Her plagues will come all at once as her mourners watch her burn Destroyed in an hour Merchants and captains of the world, sailors, navigators too Will weep and mourn this loss with her sins piled to the sky The beast and the harlot (oh) She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great The day has come for all us sinners If you\'re not a servant, you\'ll be struck to the ground Flee the burning, greedy city Looking back on her to see there\'s nothing around I don\'t believe in fairy tales and no one wants to go to hell You\'ve made the wrong decision, and it\'s easy to see Now if you wanna serve above or be a king below with us You\'re welcome to the city where your future is set forever She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great She\'s a dwelling place for demons She\'s a cage for every unclean spirit, every filthy bird And makes us drink the poisoned wine to fornicating with our kings Fallen now is Babylon the Great', 'beast and the harlot.jpg', 'Beast And The Harlot.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'yuha', '$2y$10$OfxBR1ErxqGb/GezuRnmVeY6TBeLyxQ6B8lLYnlvhbxhYenBIRtNe'),
(2, 'test', '$2y$10$XChVoo.nQjO/qbYwEpguCOHhSCkkBbR60o4QDPOQFpLAQyTFVgSEu');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
