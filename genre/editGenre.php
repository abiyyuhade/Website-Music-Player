<?php 
include "../inc/functions.php";

$id = $_GET['id'];

$data = query("SELECT * FROM genres WHERE id = '$id'")[0];

if(isset($_POST['editGenre'])) {
    if(editGenre($_POST) > 0) {
        echo "
            <script>
            alert('The genre has been successfully updated!');
            document.location.href = '../admin/admin.php';
            </script>
        ";
    } else {
        echo "
        <script>
        alert('Failed to update the genre. Please check your input and try again.');
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
    <h1>Edit Genre</h1>
    <form action="" method="post">
        <input type="hidden" name="id" value="<?= $data['id']; ?>">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" value="<?= $data['name']; ?>" autocomplete="off" required><br><br>
        <button type="submit" name="editGenre">Edit Genre</button>
    </form>
</body>
</html>