<?php
session_start();
include "inc/functions.php";
include "inc/navbar.php";
include "inc/footer.php";

if (!isset($_SESSION['login'])) {
    header("Location: login.php");
    exit;
}

if (isset($_SESSION['id_user'])) {
    $userID = $_SESSION['id_user'];
}

$id = $_GET['e'];

$data = query("SELECT * FROM playlists WHERE id = '$id'")[0];

if (isset($_POST['editPlaylist'])) {
    if (editPlaylist($_POST) > 0) {
        echo "
            <script>
            alert('The playlist has been successfully updated!');
            document.location.href = 'playlist.php';
            </script>
        ";
    } else {
        echo "
            <script>
            alert('Failed to update the playlist. Please check your input and try again.');
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
    <link rel="stylesheet" href="style/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&family=Signika:wght@300;400;500&display=swap');
    </style>
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
                        $photoPath = 'assets/upload/images/' . $data['photo'];
                        if (file_exists($photoPath)) {
                            echo '<img src="' . $photoPath . '" width="190px" class="cover-album">';
                        } else {
                            echo 'Image not found';
                        }
                        ?>
                    </label>
                </div>
            </div>
        </div>
        <div class="addRight">
        <button type="submit" name="editPlaylist">Edit Playlist</button>
        </div>

    </form>
</body>

</html>