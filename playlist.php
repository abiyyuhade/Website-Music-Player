<?php
$playlist = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id");
?>

<div class="playlistNav">
    <h2>Playlist</h2>
    <form action="">
        <input type="text" name="" id="">
        <button>
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </form>
    <?php foreach($playlist as $row) : ?>
    <div class="listPlaylist">
        <img src="assets/upload/images/<?= $row['photo'] ?>" alt="">
        <div>
            <h4><?= $row['name'] ?></h4>
            <p>Made by <?= $row['user_name'] ?></p>
        </div>
        <i class="fa-solid fa-volume-high"></i>
    </div>
    <?php endforeach; ?>
</div>
<div class="playlistContainer">
    <div class="playlistDesc">
        <img src="assets/images/ado.jpeg" alt="">
        <div>
            <h1>Nama Playlist</h1>
            <h5>Made By</h5>
        </div>
    </div>
    <div class="playlistContent">
        <div class="contentHead">
            <h3>#</h3>
            <h3>Title</h3>
        </div>
        <div class="contentBox">
            <h1>1</h1>
            <img src="assets/images/ado.jpeg" alt="">
            <div>
                <h3>Title</h3>
                <h5>Artist</h5>
            </div>
        </div>
    </div>
</div>