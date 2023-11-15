<h1 class="pageName">Genre</h1>
<button class="addSong"><a href="../genre/addGenre.php">Add Genre</a></button>
<div class="tableBox">
    <table>
        <tr>
            <th class="id">No</th>
            <th class="title">Nama</th>
            <th class="action">Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($genre as $row) : ?>
        <tr>
            <td><?= $i; ?></td>
            <td><?= $row['name']; ?></td>
            <td>
                <a href="../genre/editGenre.php?id=<?= $row['id']; ?>">Edit</a> |
                <a href="../genre/deleteGenre.php?id=<?= $row['id']; ?>" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
        <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</div>