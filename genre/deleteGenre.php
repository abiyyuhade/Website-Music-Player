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

$id = $_GET['id'];

if(deleteGenre($id) > 0) {
    echo "
        <script>
        alert('The genre has been successfully deleted!');
        document.location.href = '../admin/admin.php';
        </script>
        ";
} else {
    echo "
        <script>
        alert('Failed to delete the genre.');
        </script>
        ";
}
?>