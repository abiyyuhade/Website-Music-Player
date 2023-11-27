<?php

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}
$songId = null;
$title = 'Song';
$artist = 'Artist';
$photo = 'ado.jpeg';

$songId = null;

$songIds = [];
$query = mysqli_query($conn, "SELECT id FROM songs");

while ($row = mysqli_fetch_assoc($query)) {
    $songIds[] = $row['id'];
}

if (!function_exists('setCookie')) {
    function setCookie($name, $value)
    {
        setcookie($name, $value, time() + (86400 * 30), "/"); 
    }
}

if (!function_exists('getCookie')) {
    function getCookie($name)
    {
        return isset($_COOKIE[$name]) ? $_COOKIE[$name] : null;
    }
}

if (isset($_GET['id'])) {
    $songId = $_GET['id'];

    $query = mysqli_query($conn, "SELECT * FROM songs WHERE songs.id ='$songId'");
    $song = mysqli_fetch_array($query);

    $musicPath = './assets/upload/music/' . $song['music'];
    $title = $song['title'];
    $artist = $song['artist'];
    $photo = $song['photo'];

    setCookie('currentPlayingMusicId', $songId);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Music Web</title>
</head>

<body>

    <footer>
        <div class="footLeft">
            <i class="fa-solid fa-backward"></i>
            <audio id="music<?= $songId ?>" src="<?= $musicPath; ?>" ontimeupdate="updatePlaybackPosition()"></audio>
            <a href="javascript:void(0);" onclick="toggleMusic('<?= $songId ?>')" id="playPauseButton_<?= $songId ?>"
                class="playButton">
                <i class="fa-solid fa-play"></i>
            </a>
            <i class="fa-solid fa-forward" id="nextButton"></i>
        </div>
        <div class="footMid">
            <img src="assets/upload/images/<?= $photo ?>" alt="">
            <div>
                <h4 id="title">
                    <?= $title ?>
                </h4>
                <h5 id="artist">
                    <?= $artist ?>
                </h5>
            </div>
        </div>
        <div class="footRight">
            <input type="range" id="musicSlider" min="0" max="100" value="0" oninput="setPlaybackPosition(this.value)">
             <span id="timestamp">0:00</span>
            <span> / </span>
            <span id="duration">0:00</span>
        </div>
    </footer>

    <script>
        function getCookie(name) {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i].trim();
                if (cookie.indexOf(name + '=') === 0) {
                    return cookie.substring(name.length + 1);
                }
            }
            return null;
        }

        var currentPlayingMusicId = getCookie('currentPlayingMusicId');

        function toggleMusic(musicId) {
            var audioElement = document.getElementById('music' + musicId);
            var playButton = document.getElementById('playPauseButton_' + musicId);

            if (currentPlayingMusicId === musicId) {
                if (audioElement.paused) {
                    audioElement.play();
                    playButton.querySelector('i').classList.remove('fa-play');
                    playButton.querySelector('i').classList.add('fa-pause');
                } else {
                    audioElement.pause();
                    playButton.querySelector('i').classList.remove('fa-pause');
                    playButton.querySelector('i').classList.add('fa-play');
                }
            } else {
                var currentPlayingAudio = document.getElementById('music' + currentPlayingMusicId);
                if (currentPlayingAudio) {
                    currentPlayingAudio.pause();
                    var currentPlayingButton = document.getElementById('playPauseButton_' + currentPlayingMusicId);
                    if (currentPlayingButton) {
                        currentPlayingButton.querySelector('i').classList.remove('fa-pause');
                        currentPlayingButton.querySelector('i').classList.add('fa-play');
                    }
                }

                audioElement.play();
                currentPlayingMusicId = musicId;

                document.cookie = 'currentPlayingMusicId=' + musicId + '; path=/';

                playButton.querySelector('i').classList.remove('fa-play');
                playButton.querySelector('i').classList.add('fa-pause');
            }
        }

        var songIds = <?php echo '[' . implode(', ', $songIds) . ']'; ?>;

        function playNextSong() {
            var currentIndex = songIds.indexOf(currentPlayingMusicId);
            var nextIndex = (currentIndex + 1) % songIds.length;

            while (nextIndex !== currentIndex && songIds[nextIndex] === null) {
                nextIndex = (nextIndex + 1) % songIds.length;
            }

            if (nextIndex !== currentIndex) {
                var nextSongId = songIds[nextIndex];
                toggleMusic(nextSongId);
            } else {
                console.log("No next song found.");
            }
        }

        document.getElementById('nextButton').addEventListener('click', function () {
            playNextSong();
        });


        function updatePlaybackPosition() {
            var audioElement = document.getElementById('music' + currentPlayingMusicId);
            var slider = document.getElementById('musicSlider');
            var timestamp = document.getElementById('timestamp');
            var durationSpan = document.getElementById('duration');

            slider.value = (audioElement.currentTime / audioElement.duration) * 100;

            var currentTimeMinutes = Math.floor(audioElement.currentTime / 60);
            var currentTimeSeconds = Math.floor(audioElement.currentTime % 60);
            var formattedCurrentTime = currentTimeMinutes + ':' + (currentTimeSeconds < 10 ? '0' : '') + currentTimeSeconds;
            timestamp.textContent = formattedCurrentTime;

            var durationMinutes = Math.floor(audioElement.duration / 60);
            var durationSeconds = Math.floor(audioElement.duration % 60);
            var formattedDuration = durationMinutes + ':' + (durationSeconds < 10 ? '0' : '') + durationSeconds;
            durationSpan.textContent = formattedDuration;
        }

        function setPlaybackPosition(position) {
            var audioElement = document.getElementById('music' + currentPlayingMusicId);
            audioElement.currentTime = (position / 100) * audioElement.duration;
        }

        window.onload = function () {
            toggleMusic(<?php echo $songId; ?>);
        };
    </script>

</body>

</html>