<h1 class="pageName">Playlist</h1>
<button class="addSong"><a href="../playlist/addPlaylist.php">Add Playlist</a></button>
<div class="tableBox">
    <table>
        <tr>
            <th class="id">No</th>
            <th class="title">Name</th>
            <th class="artist">Made By</th>
            <th class="cover">Cover</th>
            <th class="action">Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($playlist as $row) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td><?= $row['name']; ?></td>
                <td><?= $row['user_name']; ?></td>
                <td>
                    <img src="../assets/upload/images/<?= $row['photo']; ?>" alt="">
                </td>
                <td>
                    <a href="../playlist/editPlaylist.php?id=<?= $row['id']; ?>">Edit</a> |
                    <a href="../playlist/deletePlaylist.php?id=<?= $row['id']; ?>" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</div>