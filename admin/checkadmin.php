<?php
session_start();
include '../code/connect.php';
$pass = $_POST['pass'];
$pass = md5('fdsgfd' . $pass);

$result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `admin` WHERE `password` = '$pass'"));

if (isset($result[0])) {

    $newhash = md5('fdsgfd' . time());
    $update = mysqli_query($connect, "UPDATE `admin` SET `hash`='$newhash' WHERE `password` = '$pass'");

    setcookie("admin", $newhash, time()+3600);
    header('Location: orders.php');
   
}   else {
    $_SESSION['nopass'] = 'Пароль не подходит';
    header('Location: login.php');
}

