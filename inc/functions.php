<?php
$host = 'localhost';
$username = 'root';
$password = '';
$db = 'db_spotipi';

$conn = mysqli_connect($host, $username, $password, $db) or die ('Not Connected Yet!');

function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $rows[] = $row;
    }
    return $rows;
}

function register($data) {
    global $conn;

    $username = stripslashes($data['username']);
    $password = mysqli_real_escape_string($conn, $data['password']);
    $confPassword = mysqli_real_escape_string($conn, $data['confPassword']);

    $result = mysqli_query($conn, "SELECT username FROM users WHERE username = '$username'");

    if (mysqli_fetch_assoc($result)) {
        echo "
            <script>
                alert('Username has been Taken Already!');
            </script>
        ";
        return false;
    }

    if($password !== $confPassword) {
        echo "
            <script>
                alert('Password and Confirm Password Does Not Matched!');
             </script>
        ";
        return false;
    }

    $password = password_hash($password, PASSWORD_DEFAULT);

    mysqli_query($conn, "INSERT INTO users VALUES ('', '$username', '$password')");

    return mysqli_affected_rows($conn);
}

function addSong($data) {
    global $conn;
    $title = $data['title'];
    $artist = $data['artist'];
    $lyrics = mysqli_real_escape_string($conn, $data['lyrics']);

    $photo = uploadPhoto();
    if(!$photo) {
        return false;
    }

    $music = uploadMusic();
    if(!$music) {
        return false;
    }

    $query = "INSERT INTO songs (title, artist, lyrics, photo, music) VALUES ('$title', '$artist', '$lyrics', '$photo', '$music')";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function uploadPhoto() {
    if (empty($_FILES['photo']['name'])) {
        return null;
    }

    $fileName = $_FILES['photo']['name'];
    $fileSize = $_FILES['photo']['size'];
    $error = $_FILES['photo']['error'];
    $tmpName = $_FILES['photo']['tmp_name'];

    if($error !== 0) {
        echo "
            <script>
                alert('Error uploading image');
            </script>
        ";
        return false;
    }

    $extPictValid = ['jpg', 'jpeg', 'png'];
    $extPict = pathinfo($fileName, PATHINFO_EXTENSION);
    $extPictFix = strtolower($extPict);
    if(!in_array($extPictFix, $extPictValid)) {
        echo "
            <script>
                alert('Invalid image format. Please upload a JPG, JPEG, or PNG file.');
            </script>
        ";
        return false;
    }

    if($fileSize > 100000000) {
        echo "
            <script>
                alert('Its to big.');
            </script>
        ";
        return false;
    }

    move_uploaded_file($tmpName, './assets/upload/images/' . $fileName);

    return $fileName;

}

function uploadMusic() {
    if (empty($_FILES['music']['name'])) {
        return null;
    }

    $fileName = $_FILES['music']['name'];
    $fileSize = $_FILES['music']['size'];
    $error = $_FILES['music']['error'];
    $tmpName = $_FILES['music']['tmp_name'];

    if($error !== 0) {
        echo "
            <script>
                alert('Error uploading image');
            </script>
        ";
        return false;
    }

    $extMusicValid = ['mp3'];
    $extMusic = pathinfo($fileName, PATHINFO_EXTENSION);
    $extMusicFix = strtolower($extMusic);
    if(!in_array($extMusicFix, $extMusicValid)) {
        echo "
            <script>
                alert('Invalid music format. Please upload a MP3 file.');
            </script>
        ";
        return false;
    }

    if($fileSize > 10000000000000) {
        echo "
            <script>
                alert('Its to big.');
            </script>
        ";
        return false;
    }

    move_uploaded_file($tmpName, './assets/upload/music/' . $fileName);

    return $fileName;
}

function updateSong($data) {
    global $conn;
    
    $id = $data['id'];
    $title = $data['title'];
    $artist = $data['artist'];
    $lyrics = mysqli_real_escape_string($conn, $data['lyrics']);

    $query = "UPDATE songs SET title = '$title', artist = '$artist', lyrics = '$lyrics' WHERE id = '$id'";
    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}
?>