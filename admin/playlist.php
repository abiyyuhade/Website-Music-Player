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
        <?php foreach ($playlist as $row): ?>
            <tr>
                <td>
                    <?= $i; ?>
                </td>
                <!-- harusnya anchor buat ke page baru yg isinya daftar lagu dalam playlist -->
                <td>
                    <?= $row['name']; ?>
                </td>
                <td>
                    <?= $row['user_name']; ?>
                </td>
                <td class="coverTable">
                    <img src="../assets/upload/images/<?= $row['photo']; ?>" alt="">
                </td>
                <td class="actionTable">
                    <a href="../playlist/editPlaylist.php?id=<?= $row['id']; ?>">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a> |
                    <a href="../playlist/deletePlaylist.php?id=<?= $row['id']; ?>"
                        onclick="return confirm('Are you sure?')">
                        <i class="fa-solid fa-trash"></i>
                    </a>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</div>