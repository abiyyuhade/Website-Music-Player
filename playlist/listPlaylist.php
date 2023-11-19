<div class="listPlaylist">
<?php 
$playlist = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id")[0];
?>
<a href="?p=playlist">
    <div class="playlistBox">
        <div class="coverBox">
            <img src="assets/upload/images/<?= $playlist['photo'] ?>" alt="">
            <div>
                <h2><?= $playlist['name']; ?></h2>
            </div>
        </div>
        <div class="descBox">
            <h2><?= $playlist['name']; ?></h2>
            <p>Made By <?= $playlist['user_name']; ?></p>
        </div>    
    </div>
</a>
</div>