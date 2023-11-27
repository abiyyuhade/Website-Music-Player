<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";
include "inc/footer.php";

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}

if (isset($_SESSION['id_user'])) {
    $userID = $_SESSION['id_user'];
}

if (isset($_POST['findSong'])) {
    $keyword = $_POST['keyword'];
    $songs = findSong($keyword);
} else {
    $songs = query("SELECT songs.*, genres.name AS genre_name FROM songs LEFT JOIN genres ON songs.id_genre = genres.id ORDER BY genres.name ASC, songs.title ASC");
}

$playlist = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id WHERE playlists.id_user = $userID");

$groupedSongs = array();

foreach ($songs as $song) {
    $genre = $song['genre_name'];
    if (!isset($groupedSongs[$genre])) {
        $groupedSongs[$genre] = array();
    }
    $groupedSongs[$genre][] = $song;
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
    <title>Index</title>
</head>

<body>
    <?php
    if (isset($_GET['p'])) {
        if ($_GET['p'] == 'listPlaylist') {
            include "addPlaylist.php";
        } else if ($_GET["p"] == "lyrics") {
            include "lyrics.php";
        } else if ($_GET["p"] == "playlist") {
            include "playlist.php";
        }
    } else {
        ?>
        <div class="songListBox">
            <?php foreach ($groupedSongs as $genre => $songsByGenre): ?>
                <div class="genreSection">
                    <h2 class="genreTitle">
                        <?= $genre ?>
                    </h2>
                    <div class="songList" onmousedown="handleMouseDown(event)" onmousemove="handleMouseMove(event)"
                        onmouseup="handleMouseUp()" onmouseleave="handleMouseLeave()">
                        <?php foreach ($songsByGenre as $song): ?>
                            <div class="songBox">
                                <div class="photo">
                                    <button onclick="toggleDropdown('<?= $song['id']; ?>')">
                                        <i class="fa-solid fa-ellipsis-vertical"></i>
                                    </button>
                                    <img src="assets/upload/images/<?= $song['photo'] ?>" alt="">
                                    <div id="dropdown_<?= $song['id']; ?>" class="dropdown">
                                        <a href="" class="edit" onclick="toggleModal('<?= $song['id']; ?>', event)">
                                            <i class="fa-regular fa-square-plus"></i>
                                            Add to Playlist
                                        </a>
                                    </div>
                                    <div class="playlistModal" id="modal_<?= $song['id']; ?>">
                                        <a href="addPlaylist.php">
                                            Add New Playlist
                                        </a>
                                        <?php foreach ($playlist as $pl): ?>
                                            <a href="playlistSong/songToPlaylist.php?idSong=<?= $song['id']; ?>&idPl=<?= $pl['id']; ?>"
                                                class="edit">
                                                <?= $pl['name']; ?>
                                            </a>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                                <div class="titlePlayBox">
                                    <div class="titleBox">
                                        <h4>
                                            <?= $song['title']; ?>
                                        </h4>
                                        <h5>
                                            <?= $song['artist']; ?>
                                        </h5>
                                    </div>
                                    <div class="playBox">
                                        <a href="?p=lyrics&id=<?= $song['id']; ?>">
                                            <i class="fa-solid fa-play"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php } ?>
    <script>

        var currentDropdownId = null; 

        function toggleDropdown(id) {
            const dropdownContent = document.getElementById('dropdown_' + id);
            if (dropdownContent.style.display === 'block') {
                dropdownContent.style.display = 'none';
            } else {
                dropdownContent.style.display = 'block';
                currentDropdownId = id; 
            }
        }

        function toggleModal(id, event) {
            event.preventDefault();
            const modalContent = document.getElementById('modal_' + id);
            if (modalContent.style.display === 'block') {
                modalContent.style.display = 'none';
            } else {
                modalContent.style.display = 'block';
            }
        }

        window.onclick = function (event) {
            const photos = document.querySelectorAll('.photo');
            photos.forEach(function (photo) {
                const dropdownContent = photo.querySelector('.dropdown');
                const modalContent = photo.querySelector('.playlistModal');
                if (event.target !== photo && !photo.contains(event.target)) {
                    dropdownContent.style.display = 'none';
                    modalContent.style.display = 'none';
                }
            });
        };

        var isMouseDown = false;
        var startX;
        var scrollLeft;

        function handleMouseDown(e) {
            isMouseDown = true;
            startX = e.pageX - e.target.offsetLeft;
            scrollLeft = e.target.scrollLeft;
        }

        function handleMouseMove(e) {
            if (!isMouseDown) return;
            var x = e.pageX - e.target.offsetLeft;
            var walk = (x - startX) * 1; 
            e.target.scrollLeft = scrollLeft - walk;
        }

        function handleMouseUp() {
            isMouseDown = false;
        }

        function handleMouseLeave() {
            isMouseDown = false;
        }

    </script>
</body>

</html>