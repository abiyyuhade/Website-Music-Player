<?php

include "inc/functions.php";

if (isset($_POST['add'])) {
    if (addSong($_POST) > 0) {
        echo "
            <script>
            alert('The new song has been successfully added!');
            document.location.href = 'index.php';
            </script>
        ";
    } else {
        echo "
            <script>
            alert('Failed to add the new song. Please check your input and try again.');
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
    <title>Add More Song</title>
</head>

<body>
    <h1>Add New Song</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" placeholder="Title of the Song" required><br><br>
        <label for="artist">Artist</label>
        <input type="text" name="artist" id="artist" placeholder="Artist" required><br><br>
        <label for="lyrics">Lyrics</label>
        <input type="text" name="lyrics" id="lyrics" placeholder="Lyrics of the Song" required><br><br>
        <label for="photo">Cover</label>
        <input type="file" name="photo" id="photo"><br><br>
        <label for="music">Music</label>
        <input type="file" name="music" id="music"><br><br>
        <button type="submit" name="add">Add Song</button>
    </form>
</body>

</html>