<html>
<head>
<title>How to Create PHP Crud using OOPS and MySQLi</title>
<link href="web/css/style.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</head>
<body>
    <h2>How to Create PHP Crud using OOPS and MySQLi</h2>

    <?php

    if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {

        echo "Welcome to the member's area, " . $_SESSION['rollno'] . "!";?>

        <a href="index.php?action=logout" style="
    float: right;
    margin-top: 40px;
    color: blue;
    font-size: 17px;
    font-weight: bold;
    margin-right: 14px;
    font-style: oblique;
">  ( <?=$_SESSION['name']?> )Logout</a>

        <?php

    } else {?>
        <a href="index.php?action=login" style="
    float: right;
    margin-top: 11px;
    color: red;
    font-size: 17px;
    font-weight: bold;
    margin-right: 14px;
    font-style: oblique;
">Login</a>
    <?php }

    ?>

    <div>
        <ul class="menu-list">
            <li><a href="index.php">Student</a></li>
            <li><a href="index.php?action=teacher">Teacher</a></li>
            <li><a href="index.php?action=attendance">Attendance</a></li>
        </ul>


    </div>