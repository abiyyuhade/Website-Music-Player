<?php 
include "../inc/functions.php";

if(isset($_POST['addGenre'])) {
    if(addGenre($_POST) > 0) {
        echo "
            <script>
            alert('The new genre has been successfully added!');
            document.location.href = '../admin/admin.php';
            </script>
        ";
    } else {
        echo "
            <script>
            alert('Failed to add the new genre. Please check your input and try again.');
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
    <h1>Add New Genre</h1>
    <form action="" method="post">
        <label for="name">Name</label>
        <input type="text" name="name" id="name" autocomplete="off" required><br><br>
        <button type="submit" name="addGenre">Add New Genre</button>
    </form>
</body>
</html>