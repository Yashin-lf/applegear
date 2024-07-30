<?php
include '../code/connect.php';

$name = $_POST['name'];
$phone = $_POST['phone'];
$device = $_POST['device'];
$problem = $_POST['problem'];



$date = date("d.m.y");
$time = date("h:i:s");

echo $name;
echo $date;

$result = mysqli_query($connect, "INSERT INTO `applications`(`id`, `name`, `phone`, `device`, `problem`, `date`, `time`) VALUES 
(NULL,'$name','$phone','$device','$problem','$date','$time')");

header('Location: /php/ready.php');