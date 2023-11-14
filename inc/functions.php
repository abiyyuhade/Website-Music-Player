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
    $role = "user";

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

    mysqli_query($conn, "INSERT INTO users (username, password, role) VALUES ('$username', '$password', '$role')");

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

    $newFileName = uniqid();
    $newFileName .= '.';
    $newFileName .= $extPictFix;

    move_uploaded_file($tmpName, '../assets/upload/images/' . $newFileName);

    return $newFileName;

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

    $newFileName = uniqid();
    $newFileName .= '.';
    $newFileName .= $extMusicFix;

    move_uploaded_file($tmpName, '../assets/upload/music/' . $newFileName);

    return $newFileName;
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

function findSong($keyword) {
    $query = "SELECT * FROM songs WHERE title LIKE '%$keyword%' OR artist LIKE '%$keyword%' ORDER BY title ASC";
    return query($query);
}

function deleteSong($id) {
    global $conn;
    $id = mysqli_real_escape_string($conn, $id);

    $file = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM songs WHERE id='$id'"));

    unlink('../assets/upload/images/' . $file["photo"]);
    unlink('../assets/upload/music/' . $file['music']);

    $delete = "DELETE FROM songs WHERE id = $id";

    mysqli_query($conn, $delete);
    return mysqli_affected_rows($conn);
}

function addPlaylist($data) {
    global $conn;

    $name = $data['name'];

    $photo = uploadPhoto();
    if(!$photo) {
        return false;
    }
    
    $id_user = $_SESSION['id_user']?? null;
    if ($id_user === null) {
        echo "
            <script>
            alert('User not authenticated. Something wrong!');
            </script>
        ";
        return false;
    }

    $query = "INSERT INTO playlists (name, photo, id_user) VALUES ('$name', '$photo', '$id_user')";

    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function editPlaylist($data) {
    global $conn;
    
    $id = $data['id'];
    $name = $data['name'];

    if ($_FILES['photo']['error'] === 0) {
        $photo = uploadPhoto();
        if (!$photo) {
            return false;
        }
    } else {
        $result = query("SELECT photo FROM playlists WHERE id = '$id'");
        $photo = $result[0]['photo'];
    }

    $id_user = $_SESSION['id_user']?? null;
    if ($id_user === null) {
        echo "
            <script>
            alert('User not authenticated. Something wrong!');
            </script>
        ";
        return false;
    }

    $query = "UPDATE playlists SET name = '$name', photo = '$photo', id_user = '$id_user' WHERE id = '$id'";

    mysqli_query($conn, $query);
    return mysqli_affected_rows($conn);
}

function deletePlaylist($id) {
    global $conn;
    $id = mysqli_real_escape_string($conn, $id);

    $file = mysqli_fetch_assoc(mysqli_query($conn, "SELECT * FROM playlists WHERE id='$id'"));

    unlink('../assets/upload/images/' . $file["photo"]);

    $delete = "DELETE FROM playlists WHERE id = $id";

    mysqli_query($conn, $delete);
    return mysqli_affected_rows($conn);
}
?>