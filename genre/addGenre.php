<?php 

if (!isset($_SESSION['login'])) {
    header("Location: ../login.php");
    exit;
}

if ($_SESSION['role'] !== 'admin') {
    header("Location: ../index.php");
    exit;
}

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
    <h1 class="addTitle">Add New Genre</h1>
    <form action="" method="post" enctype="multipart/form-data" class="addBox">
        <div class="addLeft">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" placeholder="Genre Name" required>
        </div>
        <div class="addRight">
            <button type="submit" name="addGenre">Add new Genre</button>
        </div>
    </form>
</body>
</html>