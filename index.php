<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";
include "inc/footer.php";

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}

$song = query("SELECT * FROM songs ORDER BY title ASC");

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
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

        function toggleDropdown(id) {
            const dropdownContent = document.getElementById('dropdown_' + id);
            dropdownContent.style.display = dropdownContent.style.display === 'block' ? 'none' : 'block';
        }

        // Menutup dropdown saat pengguna mengklik di luar dropdown
        window.onclick = function (event) {
            const photos = document.querySelectorAll('.photo');
            photos.forEach(function (photo) {
                const dropdownContent = photo.querySelector('.dropdown');
                if (event.target !== photo && !photo.contains(event.target)) {
                    dropdownContent.style.display = 'none';
                }
            });
        };
    </script>

</head>

<body>
    <button class="addSong"><a href="addSong.php">Add Song</a></button>
    <div class="songList">
        <?php foreach ($song as $row): ?>
            <!-- <li>
            <a href="updateSong.php?id=<?= $row['id']; ?>">
                <?= $row['title']; ?>
            </a>
            </li> -->
            <div class="songBox">
                <div>
                    <div class="photo">
                        <button onclick="toggleDropdown('<?= $row['id']; ?>')">
                            <i class="fa-solid fa-ellipsis-vertical"></i>
                        </button>
                        <img src="assets/upload/images/<?= $row['photo'] ?>" alt="">
                        <div id="dropdown_<?= $row['id']; ?>" class="dropdown">
                            <a href="updateSong.php?id=<?= $row['id']; ?>" class="edit">
                                <i class="fa-solid fa-pen-to-square"></i>
                                edit
                            </a>
                            <a href="deleteSong.php?id=<?= $row['id']; ?>" class="delete">
                                <i class="fa-solid fa-trash"></i>
                                delete
                            </a>
                        </div>
                    </div>
                    <div class="titlePlayBox">
                        <div class="titleBox">
                            <h4>
                                <?= $row['title']; ?>
                            </h4>
                            <h5>
                                <?= $row['artist']; ?>
                            </h5>
                        </div>
                        <div class="playBox">
                            <?php
                            $musicPath = './assets/upload/music/' . $row['music'];
                            ?>
                            <audio id="music<?= $row['id']; ?>" src="<?= $musicPath; ?>"></audio>
                            <a href="javascript:void(0);" onclick="toggleMusic('<?= $row['id']; ?>')"
                                id="playPauseButton_<?= $row['id']; ?>" class="playButton">
                                <i class="fa-solid fa-play"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>