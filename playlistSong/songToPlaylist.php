<?php
include "../inc/functions.php";

$idSong = $_GET['idSong'];
$idPl = $_GET['idPl'];

if(addSongToPlaylist($idSong, $idPl) > 0) {
    echo "
        <script>
        alert('The song has been successfully added to ur playlist!');
        window.history.back();
        </script>
        ";
} else {
    echo "
        <script>
        alert('Failed to add the song to ur playlist.');
        window.history.back();
        </script>
        ";
}
?>