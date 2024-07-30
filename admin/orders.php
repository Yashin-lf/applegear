<?php
session_start();
include '../code/connect.php';
$hash = $_COOKIE['admin'];
$result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `admin` WHERE `hash` = '$hash'"));
if (!isset($result[0])) {
    header('Location: login.php');
}

if (isset($_GET['status_id'])) {
    $order_id = $_GET['status_id'];
    $refresh = mysqli_query($connect, "UPDATE `orders` SET `status` = `status` + 1 WHERE `id` = '$order_id'");
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
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">
</head>

<body>

    <div class="admincontent">

        <div class="nav">

            <h2><span style="color: #F53647">Gear</span>.Admin</h2>

            <a href="#">
                <p>Заявки</p>
            </a>

            <a href="#">
                <p style="color: #F53647">Заказы</p>
            </a>

            <a href="#">
                <p>Спосиок техники</p>
            </a>

            <a href="#">
                <p>Список услуг</p>
            </a>

            <a href="#">
                <p>Акции</p>
            </a>

            <a href="#">
                <p>Новости</p>
            </a>

            <a href="#">
                <p>Отзывы</p>
            </a>


        </div>

        <div class="content">

            <h3>Заказы</h3>

            <h4>Создать заказ</h4>

            <form class="addorder" action="neworder.php" method="post">
                <input name="device" type="text" placeholder="Устройство"><br>
                <input name="service" type="text" placeholder="Что делаем?"><br>
                <button>Создать</button>
            </form>


            <?php

            $result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `orders` ORDER BY `orders`.`id` DESC "));

            foreach ($result as $order) {

                if ($order[3] == 1) {
                    $status_order = 'Скоро начнем';
                }
                if ($order[3] == 2) {
                    $status_order = 'Ремонтируем';
                }
                if ($order[3] == 3) {
                    $status_order = 'Готово';
                }

                echo '
                <div class="order">

                <h5>Заказ №'.$order[0].'</h5>
                <p>Девайс: '.$order[1].'</p>
                <p>Ремонт: '.$order[2].'</p>

                <div class="status">
                    <p>'.$status_order.'</p>
                </div>';

                if ($order[3] != 3) {
                    echo '<a href="?status_id='.$order[0].'">
                    <div class="change">
                        <p>Следующий шаг</p>
                    </div>
                </a>';
                }

                echo '
    
                </div>
                ';
            }

            ?>

            


        </div>



    </div>

</body>

</html>