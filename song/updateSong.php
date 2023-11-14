<?php

include "../inc/functions.php";

$id = $_GET['id'];

$data = query("SELECT * FROM songs WHERE id = '$id'")[0];

if (isset($_POST['update'])) {

    if (updateSong($_POST) > 0) {
        echo "
            <script>
            alert('The song has been successfully updated!');
            document.location.href = '../index.php';
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
    <title>Update Song</title>
</head>

<body>
    <h1>Edit Song</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<?= $data['id']; ?>">
        <label for="title">Title</label>
        <input type="text" name="title" id="title" placeholder="Title of the Song" value="<?= $data['title']; ?>" required><br><br>
        <label for="artist">Artist</label>
        <input type="text" name="artist" id="artist" placeholder="Artist" value="<?= $data['artist']; ?>" required><br><br>
        <label for="lyrics">Lyrics</label>
        <input type="text" name="lyrics" id="lyrics" placeholder="Lyrics of the Song" value="<?= $data['lyrics']; ?>" required><br><br>
        <label for="currentPhoto">Current Cover</label><br>
        <?php
        $photoPath = '../assets/upload/images/' . $data['photo'];
        if (file_exists($photoPath)) {
            echo '<img src="' . $photoPath . '" width="300px" class="cover-album">';
        } else {
            echo 'Image not found';
        }
        ?>
        <br><br>

        <button type="submit" name="update">Update Song</button>
    </form>
</body>

</html>