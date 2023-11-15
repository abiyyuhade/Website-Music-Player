<?php
include "../inc/functions.php";

$id = $_GET['id'];

if(deleteGenre($id) > 0) {
    echo "
        <script>
        alert('The genre has been successfully deleted!');
        document.location.href = 'listGenre.php';
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