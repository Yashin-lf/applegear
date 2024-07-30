<?php
session_start();
include '../code/connect.php';

$device = $_POST['device'];
$service = $_POST['service'];
$status = 'Скоро начнем';
$result = mysqli_query($connect, "INSERT INTO `orders`(`id`, `device`, `service`, `status`) VALUES (NULL,'$device','$service','$status')");

header('Location: orders.php');