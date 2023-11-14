<?php
include "inc/functions.php";

$id = $_GET['id'];

if(deleteSong($id) > 0) {
    echo "
        <script>
        alert('The song has been successfully deleted!');
        document.location.href = 'index.php';
        </script>
        ";
} else {
    echo "
        <script>
        alert('Failed to delete the song.');
        </script>
        ";
}
