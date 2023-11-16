<?php
$id = $_GET['id'];

$song = query("SELECT * FROM songs WHERE id = '$id'")[0];
?>

<div class="lyricsBox">
    <div class="lyricsCover">
        <img src="assets/upload/images/<?= $song['photo'] ?>" alt="">
    </div>
    <div class="itsLyrics">
        <h2>Lyrics</h2>
        <p><?= $song['lyrics']; ?></p>
    </div>
</div>