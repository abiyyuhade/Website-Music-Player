<?php 
session_start();
include "../inc/functions.php";

if(isset($_POST['addPlaylist'])) {
    if(addPlaylist($_POST) > 0) {
        echo "
            <script>
            alert('The new playlist has been successfully added!');
            document.location.href = 'playlist.php';
            </script>
        ";
    } else {
        echo "
            <script>
            alert('Failed to add the new playlist. Please check your input and try again.');
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
    <h1>Add New Playlist</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" autocomplete="off" required><br><br>
        <label for="photo">Photo</label>
        <input type="file" name="photo" id="photo"><br><br>
        <button type="submit" name="addPlaylist">Add Playlist</button>
    </form>
</body>
</html>