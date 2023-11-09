<?php
session_start();
include "inc/functions.php";

$song = query("SELECT * FROM songs");

if(!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index Brok</title>
</head>
<body>
    <h1>Index Brok</h1>
    <a href="addSong.php">Add More Song</a> <br><br>
    <?php foreach($song as $row) : ?>
    <li>
        <a href="updateSong.php?id=<?= $row['id']; ?>"><?= $row['title']; ?></a>
    </li>
    <?php endforeach; ?>
    <a href="logout.php">Log Out</a>
</body>
</html>