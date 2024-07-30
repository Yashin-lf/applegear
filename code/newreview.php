<?php
session_start();
include '../code/connect.php';

$name = $_POST['name'];
$text = $_POST['text'];
$rate = $_POST['rate'];

print_r($_FILES['image']);


$result = mysqli_query($connect, "INSERT INTO `review`(`id`, `name`, `text`, `rating`) VALUES (NULL,'$name','$text','$rate')");

$_SESSION['alert'] = 'Отзыв успешно оставлен';

header('Location: /php/review.php');

