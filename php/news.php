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
                    <p style="color: #F53647">Новости</p>
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
        <h2>Новости </h2>
    </div>

    <div class="items_grid">

    <?php
    include '../code/connect.php';
    $result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `news`"));

    foreach ($result as $new) {
        echo '
        <a href="/php/new.php?id='.$new[0].'">
            <div class="uslitem sale">
                
                <div style="background-image: url('.$new[3].')" class="image">
                </div>

                <h3>'.$new[1].'</h3>

            </div>
        </a>
        ';
    }

    ?>

        



    </div>

    <div class="space">
    </div>



    <div class="footer">
        <a href="/index.php">
            <img src="/img/logo_foot.png" alt="">
        </a>
        <p>© 2008 — 2017 Apple-Gear - специализированный сервисный центр Apple в Москве</p>
    </div>

</body>
</html>