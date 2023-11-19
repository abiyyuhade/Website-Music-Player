<?php
session_start();

$id = $_GET['id'];

$data = query("SELECT * FROM playlists WHERE id = '$id'")[0];

if (isset($_POST['editPlaylist'])) {
    if (editPlaylist($_POST) > 0) {
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
    <form action="" method="post" enctype="multipart/form-data" class="addBox">
        <input type="hidden" name="id" value="<?= $data['id']; ?>">
        <div class="addLeft">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" value="<?= $data['name']; ?>" autocomplete="off" required>
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
        <button type="submit" name="editPlaylist">Edit Playlist</button>
        </div>

    </form>
</body>

</html>