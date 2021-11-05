<?php require_once "web/header.php"; ?>

<form name="frmAdd" method="post" action="" id="frmAdd">
    <div id="mail-status"></div>
    <div>
        <label style="padding-top: 20px;">Name</label> <span
            id="name-info" class="info"></span><br /> <input type="text"
            name="name" id="name" class="demoInputBox"
            value="<?php echo $result[0]["name"]; ?>">
    </div>
    <div>
        <label>Class</label> <span id="class-info" class="info"></span><br />
        <input type="text" name="class" id="class" class="demoInputBox"
            value="<?php echo $result[0]["class"]; ?>">
    </div>
    <div>
        <input type="submit" name="add" id="btnSubmit" value="Save" />
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"
        type="text/javascript"></script>

    </body>
    </html>