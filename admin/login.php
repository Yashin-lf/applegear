<?php
session_start();
include '../code/connect.php';
$hash = $_COOKIE['admin'];
$result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `admin` WHERE `hash` = '$hash'"));
if (isset($result[0])) {
    header('Location: orders.php');
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Gear</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/admin.css">
    <link rel="shortcut icon" href="/img/icon.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<body>

    <div class="welocad">

        <h1>Вход на страницу администратора</h1>

        <form action="checkadmin.php" method="post">
            <input name="pass" type="password" placeholder="Пароль администратора">
            <button>Войти</button>
        </form>

        <?php

        if (isset($_SESSION['nopass'])) {

            echo '<div class="nopass">
            <p>'.$_SESSION['nopass'].'</p>
            </div>';

            session_destroy(); 
        }

        ?>
        
    </div>
    
</body>
</html>