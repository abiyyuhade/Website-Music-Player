<?php
session_start();
include("../inc/functions.php");

if (!isset($_SESSION['login'])) {
    header("Location: ../login.php");
    exit;
}

if ($_SESSION['role'] !== 'admin') {
    header("Location: ../index.php");
    exit;
}

$song = query("SELECT songs.*, genres.name AS genre_name FROM songs LEFT JOIN genres ON songs.id_genre = genres.id");

$genre = query("SELECT * FROM genres");

$playlist = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id");
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../style/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&family=Signika:wght@300;400;500&display=swap');
    </style>
    <title>Admin</title>
</head>

<body>

    <nav>
        <div class="navTop">
            <h1>Spotipi</h1>
            <a href="admin.php">
                <i class="fa-solid fa-music"></i>
                <h2>Song</h2>
            </a>
            <a href="?p=genre">
                <i class="fa-solid fa-table-list"></i>
                <h2>Genre</h2>
            </a>
            <a href="?p=playlist">
                <i class="fa-solid fa-list-ul"></i>
                <h2>Playlist</h2>
            </a>
        </div>
        <div class="navBot">
            <a href="../logout.php">
                <i class="fa-solid fa-arrow-right-from-bracket"></i>
                Log Out
            </a>
        </div>
    </nav>
    <?php
    if (isset($_GET['p'])) {
        if ($_GET["p"] == "playlist") {
            include "playlist.php";
        } elseif ($_GET["p"] == "genre") {
            include "genre.php";
        } elseif ($_GET["p"] == "addGenre") {
            include "../genre/addGenre.php";
        }  elseif ($_GET["p"] == "editGenre") {
            include "../genre/editGenre.php";
        }  elseif ($_GET["p"] == "addSong") {
            include "../song/addSong.php";
        }  elseif ($_GET["p"] == "editSong") {
            include "../song/updateSong.php";
        }  elseif ($_GET["p"] == "addPlaylist") {
            include "../playlist/addPlaylist.php";
        }  elseif ($_GET["p"] == "editPlaylist") {
            include "../playlist/editPlaylist.php";
        }

    } else { ?>
        <h1 class="pageName">Song</h1>
        <button class="addSong"><a href="?p=addSong">Add Song</a></button>
        <div class="tableBox">
            <table>
                <tr>
                    <th class="id">No</th>
                    <th class="title">Title</th>
                    <th class="artist">Artist</th>
                    <th class="genre">Genre</th>
                    <th class="cover">Cover</th>
                    <th class="lyrics">Lyrics</th>
                    <th class="action">Action</th>
                </tr>

                <?php $i = 1; ?>
                <?php foreach ($song as $row): ?>
                    <tr>
                        <td>
                            <?= $i; ?>
                        </td>
                        <td>
                            <?= $row['title']; ?>
                        </td>
                        <td>
                            <?= $row['artist']; ?>
                        </td>
                        <td>
                            <?= $row['genre_name']; ?>
                        </td>
                        <td class="coverTable">
                            <img src="../assets/upload/images/<?= $row['photo']; ?>" alt="">
                        </td>
                        <td>
                            <div class="lyricsTable">
                                <?= $row['lyrics']; ?>
                            </div>
                        </td>
                        <td class="actionTable">
                            <a href="?p=editSong&id=<?= $row['id']; ?>">
                                <i class="fa-solid fa-pen-to-square"></i>
                            </a> |
                            <a href="../song/deleteSong.php?id=<?= $row['id']; ?>" onclick="return confirm('Are you sure?')">
                                <i class="fa-solid fa-trash"></i>
                            </a>
                        </td>
                    </tr>
                    <?php $i++; ?>
                <?php endforeach; ?>
            </table>
        </div>
        <?php
    }
    ?>
    <footer>
        <p>Made With Love<i class="fa-solid fa-heart"></i></p>
    </footer>
</body>

</html>