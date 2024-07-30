<?php
include '../code/connect.php';
$item_id = $_GET['id'];
$result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `service` WHERE `item` = '$item_id'"));
$item_name = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `items` WHERE `id` = '$item_id'"));
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Apple Gear</title>
    <link rel="stylesheet" href="/css/style.css">
    <link rel="shortcut icon" href="/img/icon.png" type="image/png">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
</head>
<body>
    
    <div class="head">
        <div class="margin_head">

            <a href="/index.php">
                <div class="logo">
                    <img src="/img/logo_main.png" alt="">
                </div>
            </a>

            <div class="links">

                <a href="/php/uslugi.php">
                    <p>Услуги</p>
                </a>

                <a href="/php/sales.php">
                    <p>Акции</p>
                </a>

                <a href="/php/news.php">
                    <p>Новости</p>
                </a>

                <a href="/php/review.php">
                    <p>Отзывы</p>
                </a>

                <a href="/php/contacts.php">
                    <p>Контакты</p>
                </a>

                <a href="/php/track.php">
                    <p>Отслеживание</p>
                </a>

            </div>

            <a class="right" href="/index.php#gofix">
                <div class="zayavka">
                    <p>Отправить заявку</p>
                </div>
            </a>

        </div>
    </div>

    <div class="page">
        <h2>Ремонт <?=$item_name[0][1]?></h2>
    </div>

    <div class="pricegrid">

    <?php

    foreach ($result as $service) {
        echo '
        <div class="price">
            <p>'.$service[2].'</p>
            <p style="position: absolute; right:20px; top: 0px">'.$service[3].'₽</p>
        </div>
        ';
    }

    ?>
        
        



    </div>

    <div style="padding-top: 40px" class="page">
        <h2>Запишитесь на ремонт сейчас</h2>
    </div>

    <div class="gotofix">
        
        <br>
        <form action="/code/neworder.php" method="post">
            <input name="name" type="text" placeholder="Как вас зовут?">
            <input name="phone" type="text" placeholder="Ваш номер телефона">
            <input name="device" type="text" placeholder="Какое устройство сломалось?">
            <input name="problem" type="text" placeholder="Что случилось?">
            <button>Записаться</button>
        </form>
    </div>

    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
  


    <div class="footer">
        <a href="/index.php">
            <img src="/img/logo_foot.png" alt="">
        </a>
        <p>© 2008 — 2017 Apple-Gear - специализированный сервисный центр Apple в Москве</p>
    </div>

</body>
</html>