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
    <title>Index Brok</title>
    <script>
        var currentPlayingMusicId = null;

        function toggleMusic(musicId) {
            var audioElement = document.getElementById('music' + musicId);
            var playButton = document.getElementById('playPauseButton_' + musicId);

            if (currentPlayingMusicId === musicId) {
                if (audioElement.paused) {
                    audioElement.play();
                    playButton.innerText = 'Pause';
                } else {
                    audioElement.pause();
                    playButton.innerText = 'Play';
                }
            } else {
                var currentPlayingAudio = document.getElementById('music' + currentPlayingMusicId);
                if (currentPlayingAudio) {
                    currentPlayingAudio.pause();
                    var currentPlayingButton = document.getElementById('playPauseButton_' + currentPlayingMusicId);
                    if (currentPlayingButton) {
                        currentPlayingButton.innerText = 'Play';
                    }
                }

                audioElement.play();
                currentPlayingMusicId = musicId;
                playButton.innerText = 'Pause';
            }
        }
    </script>

</head>

<body>
    <br><br><a href="addSong.php">Add More Song</a> <br><br>
    <div class="songList">
        <?php foreach ($song as $row) : ?>
            <!-- <li>
            <a href="updateSong.php?id=<?= $row['id']; ?>">
                <?= $row['title']; ?>
            </a>
            </li> -->
            <div class="songBox">
                <div>
                    <div class="photo">
                        <img src="assets/upload/images/<?= $row['photo'] ?>" alt="">
                        <a href="updateSong.php?id=<?= $row['id']; ?>" class="edit">edit</a>
                        <a href="deleteSong.php?id=<?= $row['id']; ?>" class="delete">delete</a>
                        <a href="javascript:void(0);" onclick="toggleMusic('<?= $row['id']; ?>')" id="playPauseButton_<?= $row['id']; ?>">Play</a>
                    </div>
                    <?php
                    $musicPath = './assets/upload/music/' . $row['music'];
                    ?>
                    <audio id="music<?= $row['id']; ?>" src="<?= $musicPath; ?>"></audio>
                    <h4>
                        <?= $row['title']; ?>
                    </h4>
                    <h5>
                        <?= $row['artist']; ?>
                    </h5>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>