<?php

$pl = query("SELECT playlists.*, users.username AS user_name FROM playlists LEFT JOIN users ON playlists.id_user = users.id WHERE playlists.id = '$playlistId'")[0];
?>

<div class="playlistContainer">
        <div class="playlistDesc">
            <img src="assets/upload/images/<?= $pl['photo'] ?>" alt="">
            <div>
                <h1><?= $pl['name'] ?></h1>
                <h5>Made By <?= $pl['user_name'] ?></h5>
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