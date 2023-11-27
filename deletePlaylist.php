<?php
include "inc/functions.php";

$id = $_GET['d'];

if(deletePlaylist($id) > 0) {
    echo "
        <script>
        alert('The playlist has been successfully deleted!');
        document.location.href = 'playlist.php';
        </script>
        ";
} else {
    echo "
        <script>
        alert('Failed to delete the playlist.');
        </script>
        ";
}