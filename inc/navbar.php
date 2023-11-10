<?php 
// include "functions.php";
?>

<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Signika:wght@300;400;500&display=swap" rel="stylesheet">
</head>
<nav>
    <div class="navLeft">
        <a href="index.php">
            <img src="assets/images/ado.jpeg" alt="">
            <h2>Spotipi</h2>
        </a>
        <a href="playlist.php">
            <h2>Playlist</h2>
        </a>
    </div>
    <div class="navMid">
        <form action="" method="post">
            <input type="text" name="keyword" autofocus autocomplete="off">
            <button type="submit" name="findSong">Search</button>
        </form>
    </div>
    <div class="navRight">
        <a href="logout.php">Log Out</a>
    </div>
</nav>