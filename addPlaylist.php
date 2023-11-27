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
    <h1 class="addTitle">Add New Playlist</h1>
    <!-- <form action="" method="post" enctype="multipart/form-data">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" autocomplete="off" required><br><br>
        <label for="photo">Photo</label>
        <input type="file" name="photo" id="photo"><br><br>
        <button type="submit" name="addPlaylist">Add Playlist</button>
    </form> -->
    <form action="" method="post" enctype="multipart/form-data" class="addBox">
        <div class="addLeft">
            <label for="name">Playlist Name</label>
            <input type="text" name="name" id="name" placeholder="Name of the Playlist" required>
            <div class="fileBox">
                <div>
                    <label for="">Cover</label>
                    <label for="photo" class="file">
                        <i class="fa-solid fa-image"></i>
                        <p>Add Cover Album</p>
                    </label>
                    <input type="file" name="photo" id="photo">
                </div>
            </div>
        </div>
        <div class="addRight">
            <button type="submit" name="addPlaylist">Add Playlist</button>
        </div>
    </form>
</body>
</html>