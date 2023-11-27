<?php 

if(isset($_POST['addPlaylist'])) {
    if(addPlaylist($_POST) > 0) {
        echo "
            <script>
            alert('The new playlist has been successfully added!');
            document.location.href = 'listPlaylist.php';
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
    <h1 class="addTitle">Add New Playlist</h1>
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