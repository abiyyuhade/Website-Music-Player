<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";

$song = query("SELECT * FROM songs");

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/global.css">
    <title>Index Brok</title>
</head>

<body>

    <h1>Index Brok</h1>
    <a href="addSong.php">Add More Song</a> <br><br>
    <div class="songList">
        <?php foreach ($song as $row): ?>
            <!-- <li>
            <a href="updateSong.php?id=<?= $row['id']; ?>">
                <?= $row['title']; ?>
            </a>
            </li> -->
            <div class="songBox">
                <div>
                    <div class="photo">
                        <img src="assets/upload/images/<?= $row['photo'] ?>" alt="">
                        <a href="updateSong.php?id=<?= $row['id']; ?>" class="edit">edit</a>
                    </div>

                    <h4>
                        <?= $row['title']; ?>
                    </h4>
                    <h5>
                        <?= $row['artist']; ?>
                    </h5>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
</body>

</html>