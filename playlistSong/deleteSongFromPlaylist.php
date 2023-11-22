<?php
include "../inc/functions.php";

$idPls = $_GET['idPls'];

if(deleteSongFromPlaylist($idPls) > 0) {
    echo "
        <script>
        alert('The song has been successfully deleted from ur playlist!');
        window.history.back();
        </script>
        ";
} else {
    echo "
        <script>
        alert('Failed to delete the song from ur playlist.');
        window.history.back();
        </script>
        ";
}
?>