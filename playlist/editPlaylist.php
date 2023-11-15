<?php
session_start();
include "../inc/functions.php";

$id = $_GET['id'];

$data = query("SELECT * FROM playlists WHERE id = '$id'")[0];

if(isset($_POST['editPlaylist'])) {
    if(editPlaylist($_POST) > 0) {
        echo "
            <script>
            alert('The playlist has been successfully updated!');
            document.location.href = 'listPlaylist.php';
            </script>
        ";
    } else {
        echo "
            <script>
            alert('Failed to update the song. Please check your input and try again.');
            </script>
        ";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Edit Playlist</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $data['id']; ?>">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" value="<?= $data['name']; ?>" autocomplete="off" required><br><br>
        <p>Current Photo Playlist</p>
        <img src="../assets/upload/images/<?= $data['photo']; ?>" alt="" width="75px"><br><br>
        <label for="photo">Photo</label>
        <input type="file" name="photo" id="photo"><br><br>
        <button type="submit" name="editPlaylist">Edit Playlist</button>
    </form>
</body>
</html>