<?php
session_start();

if(isset($_SESSION['login']) && $_SESSION['login'] === true) {
    header("Location: index.php");
    exit;
}

if(isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $result = mysqli_query($conn, "SELECT * FROM users WHERE username = '$username'");

    if(mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);
        if(password_verify($password, $row['password'])) {
            $_SESSION['login'] = true;
            $_SESSION['id_user'] = $row['id'];
            $_SESSION['role'] = $row['role'];

            if ($row['role'] === 'admin') {
                header("Location: admin/admin.php");
            } else {
                header("Location: index.php");
            }
            exit;
        }
    }

    $error = true;
}
include "inc/functions.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="icon" type="icon/x-image" href="images/logo.png">
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    <?php if(isset($error)) :?>
        <p style="color: red; font-style: italic;">Username / Password is Wrong!</p>
    <?php endif; ?>

    <div class="containerForm">
		<div class="title">
			<h1>Log in to Spotipi</h1>
		</div>
		<form action="" method="post">
			<label for="username">Username</label><br>
			<input type="text" name="username" id="username" placeholder="Username" required autocomplete="off"><br>
			<label for="password">Password</label><br>
			<input type="password" name="password" id="password" placeholder="Password" required ><br>
			<button type="submit" name="login">Log In</button>
			<p>Don't have an account?
				<a href="register.php">Sign Up for Spotipi</a>
			</p>
		</form>
	</div>
</body>
</html>