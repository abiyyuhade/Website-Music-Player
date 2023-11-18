<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";
include "inc/footer.php";

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}

$songs = query("SELECT songs.*, genres.name AS genre_name FROM songs LEFT JOIN genres ON songs.id_genre = genres.id ORDER BY genres.name ASC, songs.title ASC");

$groupedSongs = array();

foreach ($songs as $song) {
    $genre = $song['genre_name'];
    if (!isset($groupedSongs[$genre])) {
        $groupedSongs[$genre] = array();
    }
    $groupedSongs[$genre][] = $song;
}

if (isset($_POST['findSong'])) {
    $song = findSong($_POST['keyword']);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Index Brok</title>
    <script>
        var currentPlayingMusicId = null;

        function toggleMusic(musicId) {
            var audioElement = document.getElementById('music' + musicId);
            var playButton = document.getElementById('playPauseButton_' + musicId);

            if (currentPlayingMusicId === musicId) {
                if (audioElement.paused) {
                    audioElement.play();
                    // playButton.innerText = 'Pause';
                } else {
                    audioElement.pause();
                    // playButton.innerText = 'Play';
                }
            } else {
                var currentPlayingAudio = document.getElementById('music' + currentPlayingMusicId);
                if (currentPlayingAudio) {
                    currentPlayingAudio.pause();
                    var currentPlayingButton = document.getElementById('playPauseButton_' + currentPlayingMusicId);
                    if (currentPlayingButton) {
                        // currentPlayingButton.innerText = 'Play';
                    }
                }

                audioElement.play();
                currentPlayingMusicId = musicId;
                // playButton.innerText = 'Pause';
            }
        }

        // dropdown function

        function toggleDropdown(id) {
            const dropdownContent = document.getElementById('dropdown_' + id);
            dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
        }

        // Menutup dropdown saat pengguna mengklik di luar dropdown
        window.onclick = function(event) {
            const photos = document.querySelectorAll('.photo');
            photos.forEach(function(photo) {
                const dropdownContent = photo.querySelector('.dropdown');
                if (event.target !== photo && !photo.contains(event.target)) {
                    dropdownContent.style.display = 'none';
                }
            });
        };
    </script>

</head>

<body>
    <?php
    if (isset($_GET['p'])) {
        if ($_GET['p'] == 'listPlaylist') {
            include "playlist/listPlaylist.php";
        } else if ($_GET["p"] == "lyrics") {
            include "lyrics.php";
        }
    } else {
    ?>
        <div class="songList">
            <?php foreach ($groupedSongs as $genre => $songsByGenre) : ?>
                <div class="genreSection">
                    <!-- Nama genre d sini pan -->
                    <h2 style="color: white;"><?= $genre ?></h2>
                    <div class="songList">
                        <?php foreach ($songsByGenre as $song) : ?>
                            <div class="songBox">
                                <div class="photo">
                                    <img src="assets/upload/images/<?= $song['photo'] ?>" alt="">
                                </div>
                                <div class="titlePlayBox">
                                    <div class="titleBox">
                                        <h4><?= $song['title']; ?></h4>
                                        <h5><?= $song['artist']; ?></h5>
                                    </div>
                                    <div class="playBox">
                                        <?php
                                        $musicPath = './assets/upload/music/' . $song['music'];
                                        ?>
                                        <audio id="music<?= $song['id']; ?>" src="<?= $musicPath; ?>"></audio>
                                        <a href="javascript:void(0);" onclick="toggleMusic('<?= $song['id']; ?>')" id="playPauseButton_<?= $song['id']; ?>" class="playButton">
                                            <i class="fa-solid fa-play"></i>
                                        </a>
                                        <a href="?p=lyrics&id=<?= $song['id']; ?>"></a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php } ?>
</body>

</html>