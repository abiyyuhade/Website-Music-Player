<?php 
include "../inc/functions.php";

$genre = query("SELECT * FROM genres");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>List Genre</h1>
    <a href="addGenre.php">Add More Genre</a><br><br>
    <table>
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach($genre as $row) : ?>
        <tr>
            <td><?= $i; ?></td>
            <td><?= $row['name'] ?></td>
            <td>
                <a href="editGenre.php?id=<?= $row['id']; ?>">Edit</a> |
                <a href="deleteGenre.php?id=<?= $row['id']; ?>">Delete</a>
            </td>
        </tr>

        <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</body>
</html>