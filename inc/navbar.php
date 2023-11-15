<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&family=Signika:wght@300;400;500&display=swap');
    </style>
</head>
<nav>
    <div class="navLeft">
        <a href="index.php">
            <h1>Spotipi</h1>
        </a>
        <a href="?p=listPlaylist">
            <h2>Playlist</h2>
        </a>
    </div>
    <div class="navMid">
        <form action="" method="post">
            <input type="text" name="keyword" autocomplete="off">
            <button type="submit" name="findSong"><i class="fa-regular fa-magnifying-glass"></i></button>
        </form>
    </div>
    <div class="navRight">
        <a href="logout.php">
            <h4>Log out</h4>
        </a>
    </div>
</nav>