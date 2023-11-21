<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";
include "inc/footer.php";

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}

$playlist = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id");
?>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>playlist</title>
</head>
<?php if (isset($_GET['pl'])) {
        $playlistId = $_GET['pl'];
        include "contPlaylist.php";
    } ?>
<div class="playlistNav">
    <h2>Playlist</h2>
    <form action="">
        <input type="text" name="" id="">
        <button>
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </form>
    <?php foreach ($playlist as $row): ?>
        <a href="?pl=<?= $row['id'] ?>">
            <div class="listPlaylist">
                <img src="assets/upload/images/<?= $row['photo'] ?>" alt="">
                <div>
                    <h4>
                        <?= $row['name'] ?>
                    </h4>
                    <p>Made by
                        <?= $row['user_name'] ?>
                    </p>
                </div>
                <i class="fa-solid fa-volume-high"></i>
            </div>
        </a>
    <?php endforeach; ?>
</div>