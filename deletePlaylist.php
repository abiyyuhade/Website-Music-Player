<?php
include "inc/functions.php";

$id = $_GET['d'];

if(deletePlaylistUser($id) > 0) {
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