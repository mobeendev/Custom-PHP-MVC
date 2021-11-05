<?php require_once "web/header.php"; ?>
    <div style="text-align: right; margin: 20px 0px 10px;">
        <a id="btnAddAction" href="index.php?action=teacher-add"><img src="web/image/icon-add.png" />Add Teacher</a>
    </div>
    <div id="toys-grid">

        <nav aria-label="Page navigation example">

            <ul class="pagination">
                <li class="page-item"><a class="page-link" href="?action=teacher&pageno=1">First</a></li>
                <li  class="<?php if($pageno <= 1){ echo 'disabled'; } ?>">
                    <a  class="page-link" href="<?php if($pageno <= 1){ echo '#'; } else { echo "?action=teacher&pageno=".($pageno - 1); } ?>">Prev</a>
                </li>
                <li class="<?php if($pageno >= $total_pages){ echo 'disabled'; } ?>">
                    <a class="page-link"  href="<?php if($pageno >= $total_pages){ echo '#'; } else { echo "?action=teacher&pageno=".($pageno + 1); } ?>">Next</a>
                </li>
                <li class="page-item" ><a  class="page-link" href="?action=teacher&pageno=<?php echo $total_pages; ?>">Last</a></li>
            </ul>
        </nav>

        <table cellpadding="10" cellspacing="1">
            <thead>
                <tr>
                    <th><strong>ID</strong></th>
                    <th><strong>Teacher Name</strong></th>
                    <th><strong>Class</strong></th>
                    <th><strong>Action</strong></th>

                </tr>
            </thead>
            <tbody>
                    <?php
                    if (! empty($result)) {
                        foreach ($result as $k => $v) {
                            ?>
          <tr>
                    <td><?php echo $result[$k]["id"]; ?></td>
                    <td><?php echo $result[$k]["name"]; ?></td>
                    <td><?php echo $result[$k]["class"]; ?></td>
                    <td><a class="btnEditAction"
                        href="index.php?action=teacher-edit&id=<?php echo $result[$k]["id"]; ?>">
                        <img src="web/image/icon-edit.png" />
                        </a>
                        <a class="btnDeleteAction" 
                        href="index.php?action=teacher-delete&id=<?php echo $result[$k]["id"]; ?>">
                        <img src="web/image/icon-delete.png" />
                        </a>
                    </td>
                </tr>
                    <?php
                        }
                    }
                    ?>
                
            
            
            <tbody>
        
        </table>
    </div>
</body>
</html>