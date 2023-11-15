<?php
session_start();
if (!isset($_SESSION['login'])) {
    header("Location: ../login.php");
    exit;
}

if ($_SESSION['role'] !== 'admin') {
    header("Location: ../index.php");
    exit;
}

include "../inc/functions.php";
include "../inc/navbar.php";
include "../inc/footer.php";

$genre = query("SELECT * FROM genres");

if (isset($_POST['add'])) {
    if (addSong($_POST) > 0) {
        echo "
            <script>
            alert('The new song has been successfully added!');
            document.location.href = '../admin/admin.php';
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
    <link rel="stylesheet" href="../style/global.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Add More Song</title>
</head>

<body>
    <h1 class="addTitle">Add New Song</h1>
    <form action="" method="post" enctype="multipart/form-data" class="addBox">
        <div class="addLeft">
            <label for="title">Title</label>
            <input type="text" name="title" id="title" placeholder="Title of the Song" required>
            <label for="artist">Artist</label>
            <input type="text" name="artist" id="artist" placeholder="Artist" required>

            <!-- Gua nambahin genre disini pan -->
            <label for="genre">Genre</label>
            <select name="genre" id="genre">
                <?php foreach ($genre as $row) : ?>
                    <option value="<?= $row['id'] ?>"><?= $row['name'] ?></option>
                <?php endforeach; ?>
            </select>
            <!-- Sampe sini -->

            <div class="fileBox">
                <div>
                    <label for="">Cover</label>
                    <label for="photo" class="file">
                        <i class="fa-solid fa-image"></i>
                        <p>Add Cover Album</p>
                    </label>
                    <input type="file" name="photo" id="photo">
                </div>
                <div>
                    <label for="">Music</label>
                    <label for="music" class="file">
                        <i class="fa-solid fa-music"></i>
                        <p>Add Music</p>
                    </label>
                    <input type="file" name="music" id="music">
                </div>
            </div>
        </div>
        <div class="addRight">
            <label for="lyrics">Lyrics</label>
            <textarea name="lyrics" id="lyrics" cols="30" rows="10" required>Lyrics of the Song</textarea>
            <button type="submit" name="add">Add Song</button>
        </div>


    </form>
</body>

</html>