<?php
include "inc/functions.php";

if (isset($_POST['register'])) {

    if (register($_POST) > 0) {
        echo "
            <script>
                alert('Successfully Create a New User');
                document.location.href = 'login.php';
            </script>
        ";
    } else {
        echo mysqli_error($conn);
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <link rel="icon" type="icon/x-image" href="images/logo.png">
    <link rel="stylesheet" href="style/style.css">
</head>

<body>
    <div class="containerForm">
        <div class="title">
            <h1>Register</h1>
        </div>
        <form action="" method="post">
            <label for="username">Username</label><br>
            <input type="text" name="username" id="username" placeholder="Username" autocomplete="off"><br>
            <label for="password">Password</label><br>
            <input type="password" id="password" name="password" placeholder="Password"><br>
            <label for="confPassword">Confirm Password</label><br>
            <input type="password" name="confPassword" id="confPassword" placeholder="Confirm Password"><br>
            <button type="submit" name="register">Register</button>
            <p>Already have an account?
                <a href="login.php">Log In here</a>
                .
            </p>
        </form>
    </div>
</body>

</html>