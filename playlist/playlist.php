<?php 
include "../inc/functions.php";

$playlist = query("SELECT * FROM playlists");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>List Playlist</h1>
    <a href="addPlaylist.php">Add More Playlist</a><br><br>
    <table>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Picture</th>
            <th>User</th>
            <th>Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach($playlist as $row) : ?>
        <tr>
            <td><?= $i; ?></td>
            <td><?= $row['name'] ?></td>
            <td>
                <img src="../assets/upload/images/<?= $row['photo'];?>" width="75px" alt="">
            </td>
            <td></td>
            <td>
                <a href="editPlaylist.php?id=<?= $row['id']; ?>">Edit</a> |
                <a href="deletePlaylist.php?id=<?= $row['id']; ?>">Delete</a>
            </td>
        </tr>

        <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</body>
</html>