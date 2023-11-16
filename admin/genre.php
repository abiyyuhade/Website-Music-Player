<h1 class="pageName">Genre</h1>
<button class="addSong"><a href="?p=addGenre">Add Genre</a></button>
<div class="tableBox">
    <table>
        <tr>
            <th class="id">No</th>
            <th class="title">Nama</th>
            <th class="action">Action</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($genre as $row): ?>
            <tr>
                <td>
                    <?= $i; ?>
                </td>
                <td>
                    <?= $row['name']; ?>
                </td>
                <td class="actionTable">
                    <a href="?p=editGenre&id=<?= $row['id']; ?>">
                        <i class="fa-solid fa-pen-to-square"></i>
                    </a> |
                    <a href="../genre/deleteGenre.php?id=<?= $row['id']; ?>" onclick="return confirm('Are you sure?')">
                        <i class="fa-solid fa-trash"></i>
                    </a>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</div>