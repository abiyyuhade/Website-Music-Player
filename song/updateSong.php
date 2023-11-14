<?php

include "../inc/functions.php";
include "../inc/navbar.php";
include "../inc/footer.php";

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
    <link rel="stylesheet" href="../style/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Update Song</title>
</head>

<body>
    <!-- new -->

    <h1 class="addTitle">Edit Song</h1>
    <form action="" method="post" enctype="multipart/form-data" class="addBox">
        <input type="hidden" name="id" value="<?= $data['id']; ?>">
        <div class="addLeft">
            <label for="title">Title</label>
            <input type="text" name="title" id="title" placeholder="Title of the Song" value="<?= $data['title']; ?>"
                required>
            <label for="artist">Artist</label>
            <input type="text" name="artist" id="artist" placeholder="Artist" value="<?= $data['artist']; ?>" required>
            <div class="fileBox">
                <div>
                    <label for=""> Current Cover</label>
                    <label for="photo" class="file">
                        <?php
                        $photoPath = '../assets/upload/images/' . $data['photo'];
                        if (file_exists($photoPath)) {
                            echo '<img src="' . $photoPath . '" width="300px" class="cover-album">';
                        } else {
                            echo 'Image not found';
                        }
                        ?>
                    </label>
                    <!-- <input type="file" name="photo" id="photo"> -->
                </div>
            </div>
        </div>
        <div class="addRight">
            <label for="lyrics">Lyrics</label>
            <textarea name="lyrics" id="lyrics" cols="30" rows="10" required><?= $data['lyrics']; ?></textarea>
            <button type="submit" name="update">Update Song</button>
        </div>


    </form>

</body>

</html>