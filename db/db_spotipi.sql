-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 06:18 PM
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
(5, 'Pop Punk'),
(6, 'Indonesian Pop'),
(7, 'Indonesian Indie'),
(8, 'Japanese Pop');

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
(6, 'test duls ga sie', '65545eb99427f.jpg', 1),
(7, 'apa kek', '655cbb9dd0827.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `playlistsong`
--

CREATE TABLE `playlistsong` (
  `id` int(11) NOT NULL,
  `id_playlist` int(11) NOT NULL,
  `id_song` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `playlistsong`
--

INSERT INTO `playlistsong` (`id`, `id_playlist`, `id_song`) VALUES
(2, 7, 21),
(3, 6, 20),
(4, 7, 19),
(6, 6, 25);

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
(25, '21 Guns', 'Green Day', 'Do you know what\'s worth fighting for<br>\r\nWhen it\'s not worth dying for?<br>\r\nDoes it take your breath away<br>\r\nAnd you feel yourself suffocating?<br>\r\nDoes the pain weigh out the pride?<br>\r\nAnd you look for a place to hide?<br>\r\nDid someone break your heart inside?<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br><br>\r\nWhen you\'re at the end of the road<br>\r\nAnd you lost all sense of control<br>\r\nAnd your thoughts have taken their toll<br>\r\nWhen your mind breaks the spirit of your soul<br>\r\nYour faith walks on broken glass<br>\r\nAnd the hangover doesn\'t pass<br>\r\nNothing\'s ever built to last<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br><br>\r\nDid you try to live on your own<br>\r\nWhen you burned down the house and home?<br>\r\nDid you stand too close to the fire?<br>\r\nLike a liar looking for forgiveness from a stone<br><br>\r\nWhen it\'s time to live and let die<br>\r\nAnd you can\'t get another try<br>\r\nSomething inside this heart has died<br>\r\nYou\'re in ruins<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br><br>\r\nOne, twenty one guns<br>\r\nLay down your arms<br>\r\nGive up the fight<br>\r\nOne, twenty one guns<br>\r\nThrow up your arms into the sky,<br>\r\nYou and I<br>', '655593cd882b9.jpg', '655593cd884dc.mp3', 5),
(26, 'Apa Mungkin', 'Bernadya', 'Arungi malam<br>\r\nTerjaga kala semua t’lah terbenam<br>\r\nBerkaca, bertanya, apa ku buat salah?<br>\r\nKalaupun iya, apa?<br><br>\r\n\r\nApakah sebesar itu hingga<br>\r\nKau pergi tanpa aba-aba<br>\r\nBahkan tanpa alasan<br>\r\nHingga ku harus menerka-nerka<br>\r\nSalahku di mana?<br><br>\r\n\r\nApa mungkin caraku bicara?<br>\r\nApa mungkin caraku tertawa?<br>\r\nApa mungkin dengkurku saat tertidur lelap?<br>\r\nApa mungkin kamu yang tak lagi cinta<br><br>\r\n\r\nSampai sekarang<br>\r\nDariku belum ada yang berubah<br>\r\nKu bisa salah<br>\r\nMaka itu jelaskanlah<br>\r\nDi mana letak yang tak kau suka<br><br>\r\n\r\nApa mungkin caraku bicara?<br>\r\nApa mungkin caraku tertawa?<br>\r\nApa mungkin dengkurku saat tertidur lelap?<br>\r\nAtau mungkin kamu yang tak lagi cinta<br><br>\r\n\r\nDari dulu semua burukku<br>\r\nKau terima katamu tiada yang mengganggu<br>\r\nMengapa tiba-tiba jadi masalah?<br><br>\r\n\r\nSejak kapan semuanya berubah?<br>\r\nApa sejak kau lihat ku marah?<br>\r\nApa kar’na leluconku itu itu saja?<br>\r\nAtau memang kamu yang tak lagi cinta<br><br>\r\n\r\nApa mungkin caraku bicara?<br>\r\nApa mungkin caraku tertawa?<br>\r\nApa mungkin dengkurku saat tertidur lelap?<br>\r\nAtau mungkin kamu yang tak<br>\r\n(Kamu yang tak lagi cinta)<br>\r\nAtau mungkin kamu yang tak<br>\r\nTak lagi cinta<br>', '6564158849a8e.png', '6564158849be5.mp3', 6),
(27, 'Tampar', 'Juicy Luicy', 'Entah sudah Selasa yang ke berapa<br>\r\nMasih saja kau ada, lekat di kepala<br>\r\nHari ini janji esok mesti lupa<br>\r\nTetapi hati tak tepati<br><br>\r\n\r\nTampar aku di pipi<br>\r\nBiar sadar dan ku mengerti<br><br>\r\n\r\nHujan samarkan derasnya<br>\r\nTutup air mata<br>\r\nTemani kecewaku yang telah lama<br>\r\nBerdosa kah ku berdoa<br>\r\nMinta kau terluka<br>\r\nDan tinggalkan dirinya<br><br>\r\n\r\nHari ini janji esok mesti lupa<br>\r\nTetapi hati tak tepati<br><br>\r\n\r\nTampar aku di pipi<br>\r\nBiar sadar dan ku mengerti<br><br>\r\n\r\nHujan samarkan derasnya<br>\r\nTutup air mata<br>\r\nTemani kecewaku yang telah lama<br>\r\nBerdosa kah ku berdoa<br>\r\nMinta kau terluka<br>\r\nDan tinggalkan dirinya<br><br>\r\n\r\nBukan ku tak berupaya<br>\r\nBerusaha<br><br>\r\n\r\nHujan samarkan derasnya<br>\r\nTutup air mata<br>\r\nTemani kecewaku yang telah lama<br>\r\nBerdosa kah ku berdoa<br>\r\nMinta kau terluka<br>\r\nDan tinggalkan dirinya<br><br>\r\n\r\nHujan samarkan derasnya<br>\r\nTutup air mata<br>\r\nTiga tahun tak terasa<br>\r\nMasih kau yang ada<br>\r\nBodoh yang sebenarnya<br><br>\r\n\r\nTampar aku di pipi<br>\r\nSadarkan kau aku takkan terjadi<br>', '6564167c5c3b8.png', '6564167c5c4f2.mp3', 6),
(28, 'Lantas', 'Juicy Luicy', 'Lima hari sudah kurindu<br>\r\nTak bisa kumenghubungimu<br>\r\nKau sedang dengan dirinya<br>\r\nSedang kita rahasia<br>\r\nKapankah kau ada waktu<br>\r\nSembunyi untuk bertemu<br><br>\r\n\r\nBaru kau sapa ku tersipu<br>\r\nKau puji lupa amarahku<br>\r\nKarena kau paling tahu<br>\r\nCara lemahkan hatiku<br>\r\nWalau tak ada yang pasti<br>\r\nYang kau beri hanya mimpi<br><br>\r\n\r\nLantas mengapa ku masih menaruh hati<br>\r\nPadahal ku tau kau tlah terikat janji<br>\r\nKeliru ataukah bukan tak tau<br>\r\nLupakanmu tapi aku tak mau<br><br>\r\n\r\nBaru kau sapa ku tersipu<br>\r\nKau puji lupa amarahku<br>\r\nKarena kau paling tahu<br>\r\nCara lemahkan hatiku<br>\r\nWalau tak ada yang pasti<br>\r\nYang kau beri hanya mimpi<br><br>\r\n\r\nLantas mengapa ku masih menaruh hati<br>\r\nPadahal ku tau kau tlah terikat janji<br>\r\nKeliru ataukah bukan tak tau<br>\r\nLupakanmu tapi aku tak mau<br><br>\r\n\r\nPantaskah aku menyimpan rasa cemburu<br>\r\nPadahal bukan aku yang memilikimu<br>\r\nSanggup sampai kapankah ku tak tau<br>\r\nAkankah akal sehat menyadarkanku<br><br>\r\n\r\nLantas mengapa ku masih menaruh hati<br><br>\r\n\r\nLantas mengapa ku masih menaruh hati<br>\r\nPadahal ku tau kau tlah terikat janji<br>\r\nKeliru ataukah bukan tak tau<br>\r\nLupakanmu tapi aku tak mau<br><br>\r\n\r\nPantaskah aku menyimpan rasa cemburu<br>\r\nPadahal bukan aku yang memilikimu<br>\r\nSanggup sampai kapankah ku tak tau<br>\r\nAkankah akal sehat menyadarkanku<br>', '6564174b672b9.png', '6564174b673e5.mp3', 6),
(29, 'Tanpa Tergesa', 'Juicy Luicy', 'Jaga dulu jarak kita<br>\r\nJika tak ingin akhirnya<br>\r\nKau menangis lagi<br><br>\r\n\r\nJangan terlalu kau dekat<br>\r\nJangan buat terikat<br>\r\nCoba kau rasakan lagi<br><br>\r\n\r\nMungkin kau dapat perannya<br>\r\nTapi hanya sebagai bayang-bayangnya saja<br>\r\nJangan minta jatuh cinta<br>\r\nLuka lama ku juga belum reda<br>\r\nBeri dulu aku waktu untuk sembuh sendirinya<br><br>\r\n\r\nJangan minta jatuh cinta<br>\r\nSakit sebelumnya masih kurasa<br>\r\nBeri waktu hingga aku mampu lupakan semua<br><br>\r\n\r\nJangan terlalu kau dekat<br>\r\nJangan buat terikat<br>\r\nCoba kau rasakan lagi<br><br>\r\n\r\nMungkin kau dapat perannya<br>\r\nTapi hanya sebagai bayang-bayangnya saja<br>\r\nJangan minta jatuh cinta<br>\r\nLuka lama ku juga belum reda<br>\r\nBeri dulu aku waktu untuk sembuh sendirinya<br><br>\r\n\r\nJangan minta jatuh cinta<br>\r\nSakit sebelumnya masih kurasa<br>\r\nBeri waktu hingga aku mampu lupakan semua<br><br>\r\n\r\nJangan minta jatuh cinta<br>\r\nLuka lama ku juga belum reda<br>\r\nBeri dulu aku waktu untuk sembuh sendirinya<br><br>\r\n\r\nBukan ku tak jatuh cinta<br>\r\nLelah ulang kesalahan yang sama<br>\r\nKu ingin kita jalani cinta<br>\r\nKu ingin kita jalani cinta<br>\r\nTanpa tergesa<br>', '656417feae3dc.png', '656417feae578.mp3', 6),
(30, 'Mawar Jingga', 'Juicy Luicy', 'Mengapa kita ditakdirkan berjumpa<br>\r\nPadahal kita takkan mungkin ke sana<br>\r\nKe tujuan sama bertemu di tengahnya<br>\r\nMenunggu yang kutahu sia-sia<br><br>\r\n\r\nKupetik bunga mawar warna jingga<br>\r\nHanya semata senyum kau dibuatnya<br>\r\nTak sadar \'kan durinya terluka di akhirnya<br>\r\nMencinta tanpa tahu akibatnya<br><br>\r\n\r\nDi sana kau bahkan tak sesaat pun teringat<br>\r\nKu yang selalu mengingat<br>\r\nDi sana ku bukan yang utama<br>\r\nDi sana kau terlihat bahagia<br><br>\r\n\r\nKupetik bunga mawar warna jingga<br>\r\nHanya semata senyum kau dibuatnya<br>\r\nTak sadar \'kan durinya terluka di akhirnya<br>\r\nMencinta tanpa tahu akibatnya<br><br>\r\n\r\nDi sana kau bahkan tak sesaat pun teringat<br>\r\nKu yang selalu mengingat<br>\r\nDi sana ku bukan yang utama<br>\r\nDi sana kau terlihat bahagia<br><br>\r\n\r\nAngin bawa pergi air mataku ini<br>\r\nCoba kutahan namun tak berhenti<br>\r\nMengalir \'tuk kau yang takkan mengerti<br>', '6564187ba1caf.png', '6564187ba1dd7.mp3', 6),
(31, 'Terlalu TInggi', 'Juicy Luicy', 'Ikatkan padaku tali benang terpanjang<br>\r\nAgar ku bisa kau terbangkan sejauh yang kamu mau<br>\r\nAngin kencang, bawakan kesenangan<br>\r\nDapat buatmu terbangkanku sejauh yang kamu mau<br><br>\r\n\r\nDengan senang kau terbangkan aku<br>\r\nTerlalu tinggi<br>\r\nTerlalu tinggi<br><br>\r\n\r\nDi atas awan, ku nikmati dua sisi<br>\r\nIndah terbang terlalu tinggi<br>\r\nTakut jatuh terlalu jauh<br>\r\nSemakin tinggi, semakin jauh ku melihat<br>\r\nApakah engkau genggam erat<br>\r\nTarik aku lebih dekat<br><br>\r\n\r\nKumohon, jangan...<br>\r\nKau lepaskan ku<br><br>\r\n\r\nAngin kencang, bawakan kesenangan<br>\r\nDapat buatmu terbangkanku sejauh yang kamu mau<br><br>\r\n\r\nDengan senang kau terbangkan aku<br>\r\nTerlalu tinggi<br>\r\nTerlalu tinggi<br><br>\r\n\r\nDi atas awan, ku nikmati dua sisi<br>\r\nIndah terbang terlalu tinggi<br>\r\nTakut jatuh terlalu jauh<br>\r\nSemakin tinggi, semakin jauh ku melihat<br>\r\nApakah engkau genggam erat<br>\r\nTarik aku lebih dekat<br><br>\r\n\r\nKumohon, jangan...<br>\r\nKau lepaskan ku<br><br>\r\n\r\nOh, di atas awan, ku nikmati dua sisi<br>\r\nIndah terbang terlalu tinggi<br>\r\nTakut jatuh terlalu jauh<br>\r\nSemakin tinggi, semakin jauh ku melihat<br>\r\nApakah engkau genggam erat<br>\r\nTarik aku lebih dekat<br><br>\r\n\r\nKumohon, jangan...<br>\r\nKau lepas<br>\r\nKumohon, jangan...<br>\r\nKau lepaskan aku<br><br>\r\n\r\nLepaskan aku<br>', '6564191b2925b.png', '6564191b295d0.mp3', 6),
(32, 'Semua Orang Pernah Sakit Hati', 'Lomba Sihir', 'Cari-cari baju rapi lagi<br>\r\nAkhir pekan, pesta pernikahan lagi<br>\r\nSetelan yang itu-itu lagi<br>\r\nKaca bosan bentukanku sama lagi<br>\r\nAmbil kambing guling, salaman, foto lalu pulang<br>\r\nJangan lupa foto sebelum pulang<br><br>\r\n\r\nInginnya memang tidak peduli<br>\r\nApa daya, ujungnya alkohol lagi<br>\r\nCari-cari trauma, saat hilang pasti ngetweet lagi<br><br>\r\n\r\nJika ada yang harus diingatkan ya pasti hanyalah diriku<br>\r\nBahwa banyak hal yang harus dipikirkan selain cinta melulu<br>\r\nBerhenti mengira hanya aku yang paling pantas untuk mengeluh<br>\r\nSemua kepingan baik akan datang namun mereka perlukan waktu<br>\r\nSabar, yang perlu kau kenal ya dirimu<br>\r\nYang perlu kurangi minum kamu<br>\r\nYang perlu nasihat masih kamu<br>\r\nBahwa semua orang pernah sakit hati<br><br>\r\n\r\nSemua orang pernah patah hati<br>\r\nSemua orang pernah ingin mati<br>\r\nSemuanya pernah ditinggal pergi<br><br>\r\n\r\nKutip-kutip kata bijak lagi<br>\r\nAkhir tahun, bikin resolusi lagi<br>\r\nAmbil hati omongan orang, lantas gagal tenang<br>\r\nSemua disalahkan, selalu kurang<br>\r\nCari pelarian, tak pernah kenyang<br><br>\r\n\r\nJika ada yang harus diingatkan ya pasti hanyalah diriku<br>\r\nBahwa banyak hal yang harus dipikirkan selain cinta melulu<br>\r\nBerhenti mengira hanya aku yang paling pantas untuk mengeluh<br>\r\nSemua kepingan baik akan datang namun mereka perlukan waktu<br>\r\nSabar, yang perlu kau kenal ya dirimu<br>\r\nYang perlu kurangi minum kamu<br>\r\nYang perlu nasihat masih kamu<br>\r\nBahwa semua orang pernah sakit hati<br><br>\r\n\r\nJika ada yang harus diingatkan ya pasti hanyalah diriku<br>\r\nBahwa banyak hal yang harus dipikirkan selain cinta melulu<br>\r\nBerhenti mengira hanya aku yang paling pantas untuk mengeluh<br>\r\nSemua kepingan baik akan datang namun mereka perlukan waktu<br>\r\nSabar, yang perlu kau kenal ya dirimu<br>\r\nYang perlu kurangi minum kamu<br>\r\nYang perlu nasihat masih kamu<br>\r\nBahwa semua orang pernah sakit hati<br>', '656419e90a9d6.png', '656419e90ab77.mp3', 7),
(33, 'Berdansalah, Karir Ini Tak Ada Artinya', 'Hindia', 'Besok coba kau izin pulang cepat<br>\r\nBilang saja siapa sedang sakit<br>\r\nLusa coba izin terlambat<br>\r\nBilang saja kau celaka sedikit<br><br>\r\n\r\nHabiskan cutimu sebelum resign<br>\r\nI know you’re scared, but it’s totally fine<br>\r\nKarena kau bukan mesin assembly line<br>\r\nLihat promo liburan, babe that’s a sign<br><br>\r\n\r\nOh, karena kutahu<br>\r\nKalimat itu ada di ujung mulutmu<br>\r\nOh, karena kau tahu<br>\r\nTak mau lakukan itu seumur hidupmu<br><br>\r\n\r\nLakukan apa yang kau mau, sekarang<br>\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nHidup ini tak ada artinya, maka<br>\r\nKau bebas mengarang maknanya seorang<br>\r\nLakukan apa yang kau mau, sekarang<br>\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nLagipula hidup akan berakhir, maka<br>\r\nLakukan apa yang kau mau, sekarang<br><br>\r\n \r\nBerdansalah, kau raja dunia!<br>\r\nKarier ini tak ada artinya<br>\r\nBerdansalah, kau ratu dunia!<br>\r\nHidup ini tak ada artinya<br><br>\r\n\r\nBesok coba kau berbohong sedikit<br>\r\nLalu kau melupa saat diungkit (ungkit)<br>\r\nBisa juga kau jujur saja (jujur saja)<br>\r\nSeparahnya kau akan makin lega<br><br>\r\n\r\nOh, karena kutahu<br>\r\nKalimat itu ada di ujung mulutmu<br>\r\nOh, karena kau tahu<br>\r\nUtamakanlah dirimu di sisa hidupmu<br><br>\r\n\r\nLakukan apa yang kau mau, sеkarang<br>\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nHidup ini tak ada artinya, maka<br>\r\nKau bebas mеngarang maknanya seorang<br>\r\nLakukan apa yang kau mau, sekarang<br>\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nLagipula hidup akan berakhir, maka<br>\r\nLakukan apa yang kau mau, sekarang<br>\r\nLakukan apa yang kau mau, sekarang<br><br>\r\n\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nHidup ini tak ada artinya, maka<br>\r\nKau bebas mengarang maknanya seorang<br>\r\nLakukan apa yang kau mau, sekarang<br>\r\nSaat hatimu bergerak, jangan kau larang<br>\r\nLagipula hidup akan berakhir, maka<br>\r\nLakukan apa yang kau mau, sekarang<br><br>\r\n\r\nBerdansalah, kau raja dunia! (Raja dunia)<br>\r\nKarier ini tak ada artinya (Artinya)<br>\r\nBerdansalah, kau ratu dunia! (Ratu dunia)<br>\r\nHidup ini tak ada artinya<br>', '65641b6273139.png', '65641b627346d.mp3', 7),
(34, 'Kataomoi', 'Aimer', 'Tatoeba kimi no kao ni mukashi yori shiwa ga fuete mo soredemo ii\'n da<br>\r\nBoku ga GITAA wo omou you ni hikenaku natte mo kokoro no uta wa kimi de afurete iru yo<br>\r\nTakai koe mo dasezu ni omoidoori utaenai<br>\r\nSoredemo unazuki nagara issho ni utatte kureru kana<br>\r\nWaren bakari no hakushu mo hibiki wataru kansei mo iranai<br>\r\nKimi dake wakatte yo wakatte yo<br><br>\r\n\r\nDarlin\' yume ga kanatta no<br>\r\nOniai no kotoba ga mitsukara nai yo<br>\r\nDarlin\' yume ga kanatta no<br>\r\n\"Aishiteru\"<br><br>\r\n\r\nTatta ichido no tatta hitori no umarete kita shiawase ajiwatteru\'n da yo<br>\r\nKyou ga MEIN DISSHU de owari no hi ni wa amazuppai DEZAATO wo taberu no<br>\r\nYama mo tani mo zenbu FURUKOOSU de<br>\r\nKi ga kiku you na kotoba wa iranai subarashii tokubetsu mo iranai<br>\r\nTada zutto zutto soba ni oite ite yo<br>\r\nBoku no omoi wa toshi wo toru to fueteku bakka da suki da yo<br>\r\nWakatte yo wakatte yo<br><br>\r\n\r\nNee, darlin\' yume ga kanatta no<br>\r\nOniai no kotoba ga mitsukaranai yo<br>\r\nDarlin\' yume ga kanatta no<br>\r\nAi ga afurete yuku<br><br>\r\n\r\nKimi ga boku wo wasurete shimatte mo chotto tsurai kedo... soredemo ii kara<br>\r\nBoku yori saki ni dokoka tooku ni tabidatsu koto wa zettai yurusanai kara<br>\r\nUmare kawatta toshite mo deai kata ga saiaku demo mata boku wa kimi ni koisuru\'n da yo<br>\r\nBoku no kokoro wa kimi ni itsumo kataomoi suki da yo<br>\r\nWakatte yo wakatte yo wakatte yo<br><br>\r\n\r\nDarlin\' yume ga kanatta no<br>\r\nOniai no kotoba ga mitsukaranai yo<br>\r\nDarlin\' yume ga kanatta no<br><br>\r\n\r\nNee darlin\' \"aishiteru\"<br>', '656423161e1c9.png', '656423161e356.mp3', 8),
(35, 'Main Actor', 'Minami', 'manga no shujinkou no aitsu wa itta<br>\r\n[boku ga omae wo mamoru kara] tte sa<br>\r\nhontou kakkoii yo na shujinkoutte sa<br>\r\nboku to ieba tada nigedasu dake no murabito B kurai ka na<br><br>\r\n\r\niya na kao hitotsu sezu waratte kage de wa naite<br>\r\ntatakatta sukutta<br>\r\naitsu wa minna no ninkimono datta hiiroo datta atarimae<br><br>\r\n\r\nboku to ieba tada shujinkou ni sugatte tayoru<br>\r\nmurabito C kurai ka na<br><br>\r\n\r\ntada asa matteta nani mo sezu boku wa hitori beddo no ue de<br>\r\nippai no suupu wo nominagara<br>\r\nterebi no mae de mata onaji you na nyuusu wo minagara<br>\r\nmata itsumo no heiwa wo matteitanda<br><br>\r\n\r\nhitotsu dake hitotsu dake hitotsu dake hitotsu dake<br>\r\nboku ga koko ni iru shoumei wo<br>\r\nboku ni shika boku ni shika boku ni shika boku ni shika<br>\r\ndekinai koto no shoumei wo<br><br>\r\n\r\nkimi datte onaji datte dare datte matterutte<br>\r\nboku datte sore ga nani ka wakaranai kara utattendaro<br><br>\r\n\r\natarimae da to omotteta asu ga kuru koto mo akiteita<br>\r\nmendou na koto kirai datta shinpuru de yokatta<br>\r\ndemo nazeka heya ni aru gitaa dake wa<br>\r\nsuterarenakatta<br><br>\r\n\r\nsukoshi dake sukoshi dake sukoshi dake sukoshi dake<br>\r\nichijou demo ibasho ga hoshikatta<br>\r\nboku dake ga boku dake ga boku dake ga boku dake ga<br>\r\ndareka no ichiban de aritakatta<br><br>\r\n\r\nkawaranai yo kawaranai yo<br>\r\nkawarenai yo kawarenai yo<br><br>\r\n\r\nyappa boku wa konna boku dakara sa<br><br>\r\n\r\nsukoshi dake sukoshi dake sukoshi dake sukoshi dake<br>\r\nichijou demo ibasho ga hoshikatta<br><br>\r\n\r\nhitotsu dake hitotsu dake hitotsu dake hitotsu dake<br>\r\nboku ga koko ni iru shoumei wo<br>\r\nboku ni shika boku ni shika boku ni shika boku ni shika<br>\r\ndekinai koto no shoumei wo<br><br>\r\n\r\nboku dakara boku dakara boku dakara konna boku dakedo sa<br>\r\naishiteokureyo<br>\r\nyurushiteokureyo<br>', '656424e641273.png', '656424e6413e2.mp3', 8),
(36, 'Asing', 'Juicy Luicy', 'Masihkah ungu muda\r\nWarna langit yang paling engkau suka\r\nMasihkah sering lupa\r\nDimana letaknya kau simpan kacamata\r\nTanpa niat kuhafal semua masih saja aku mengingatnya\r\nDahulu ku mengenalmu paling\r\nSemua tentangmu tertawa denganmu\r\nMengapa kini berubah asing\r\nTak saling menyapa lupa ku pernah disana\r\nMasihkah kau yang sama\r\nGunakan tertawa buat tutupi luka\r\nLagu yang kau putar tiap hari\r\nSekarang kunikmati sendiri wo\r\nDahulu ku mengenalmu paling\r\nSemua tentangmu tertawa denganmu\r\nMengapa kini berubah asing\r\nTak saling menyapa lupa ku pernah disana\r\nKadang kau hadir lagi tapi di mimpi\r\nSedikit mengobati hati terbangun pagi kau nya tak di sini\r\nDahulu ku mengenalmu paling\r\nSemua tentangmu tertawa denganmu\r\nMengapa kini berubah asing\r\nTak saling menyapa lupa ku pernah disana\r\nDahulu aku yang paling mengenalmu\r\nSemua kegemaranmu\r\nMengapa kini berubah asing\r\nTak saling menyapa\r\nLupa ku pernah disana\r\nLupakah kau sebenarnya', '6564c15362e2f.png', '6564c1536300e.mp3', 6);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `playlistsong`
--
ALTER TABLE `playlistsong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

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
