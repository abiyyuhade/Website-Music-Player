<?php

$pl = query(
    "SELECT playlists.photo AS playlist_photo, playlists.name AS playlist_name,
    users.username AS user_name
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
?>

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
                    <a href="playlistSong/deleteSongFromPlaylist.php?idPls=<?= $row['playlistsong_id']; ?>">Delete</a>
                    <?php $i++; ?>
                </div>
            </a>
        <?php endforeach; ?>
    </div>
</div>