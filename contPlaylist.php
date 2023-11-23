<?php

if (isset($_SESSION['id_user'])) {
    $userID = $_SESSION['id_user'];
}

$pl = query(
    "SELECT playlists.photo AS playlist_photo, playlists.name AS playlist_name,
    users.id AS user_id, users.username AS user_name
    FROM 
    playlists
    LEFT JOIN 
    users ON playlists.id_user = users.id
    WHERE 
    playlists.id = '$playlistId'
"
)[0];

$song = query("SELECT songs.id AS song_id, songs.title AS song_title, songs.artist AS song_artist, songs.photo AS song_photo,
    playlistsong.id AS playlistsong_id
    FROM 
    playlistsong
    LEFT JOIN 
    songs ON playlistsong.id_song = songs.id
    WHERE 
    playlistsong.id_playlist = '$playlistId'
");

$PlOwner = ($userID === $pl['user_id']);
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

<div class="playlistContainer">
    <div class="playlistDesc">
        <img src="assets/upload/images/<?= $pl['playlist_photo'] ?>" alt="">
        <div>
            <h1>
                <?= $pl['playlist_name'] ?>
            </h1>
            <h5>Made By
                <?= $pl['user_name'] ?>
            </h5>
        </div>
        <!-- mulai di sini -->
        <?php if ($PlOwner): ?>
            <a class="edit" href="editPlaylist.php?e=<?= $playlistId ?>">
                <i class="fa-solid fa-pen-to-square"></i>
            </a>
            <a class="delete" href="deletePlaylist.php?d=<?= $playlistId ?>">
                <i class="fa-solid fa-trash"></i>
            </a>
        <?php endif; ?>
    </div>
    <div class="playlistContent">
        <div class="contentHead">
            <h3>#</h3>
            <h3>Title</h3>
        </div>
        <?php $i = 1; ?>
        <?php foreach ($song as $row): ?>
            <a href="index.php?p=lyrics&id=<?= $row['song_id']; ?>">
                <div class="contentBox">
                    <h1>
                        <?= $i; ?>
                    </h1>
                    <img src="assets/upload/images/<?= $row['song_photo'] ?>" alt="">
                    <div>
                        <h3>
                            <?= $row['song_title'] ?>
                        </h3>
                        <h5>
                            <?= $row['song_artist'] ?>
                        </h5>
                    </div>
                    <?php if ($PlOwner): ?>
                    <a href="playlistSong/deleteSongFromPlaylist.php?idPls=<?= $row['playlistsong_id']; ?>">
                        <i class="fa-solid fa-trash"></i>
                    </a>
                    <?php endif; ?>
                    <?php $i++; ?>
                </div>
            </a>
        <?php endforeach; ?>
    </div>
</div>