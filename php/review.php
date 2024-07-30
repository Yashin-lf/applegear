<?php
session_start();
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
                    <p style="color: #F53647">Отзывы</p>
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
        <h2>Отзывы</h2>
    </div>

    <div class="review_conent">

        <div class="review_form ">

        <h2>Оставьте отзыв тут</h2>

            <form action="/code/newreview.php" method="post" enctype="multipart/form-data">

                <input class="input" name="name" type="text" placeholder="Как вас зовут?">
                <input class="input" name="text" type="text" placeholder="Что вы о нас думаете?">

                <p style="margin-top:20px">На сколько вы нас оцените?</p>
                <input name="rate" id="myRange" class="selector" type="range" min="1" max="5" step="1" value="3"> 
                <div class="checkrating">
                    <p>1</p>
                    <p>2</p>
                    <p>3</p>
                    <p>4</p>
                    <p>5</p>
                </div>

                <button>Отправить отзыв</button>

            </form>

            
                <?php
                if (isset($_SESSION['alert'])) {
                    echo '
                    <div class="alert">
                    <p>'.$_SESSION['alert'].'</p>
                    </div>
                    ';
                    session_destroy();
                }
                ?>
                

        </div>
        

        <?php

        include '../code/connect.php';
        $result = mysqli_fetch_all(mysqli_query($connect, "SELECT * FROM `review`"));

        foreach ($result as $review) {
            echo '
            <div class="review">

            <div class="userinfo">
                
                <img id="avatar" src="/img/avatar.png" alt="">

                <div class="rate">
                    
                    <h2>'.$review[1].'</h2>
                    
                    <div class="stars">
                    ';

                    $i = 1;
                    while ($i <= $review[3]):
                        echo '<img src="/img/star.png" alt="">';
                        $i++;
                    endwhile;

                    echo '
                    </div>

                </div>

            </div>

            <p>'.$review[2].'</p>

        </div>
            ';
        }

        ?>


       

    </div>

    

    <div class="space">
    </div>
    <div class="space">
    </div>
    




    <div class="footer">
        <a href="/index.php">
            <img src="/img/logo_foot.png" alt="">
        </a>
        <p>© 2008 — 2017 Apple-Gear - специализированный сервисный центр Apple в Москве</p>
    </div>

    <script>

        var slider = document.getElementById("myRange");
        var output = document.getElementById("demo");
        output.innerHTML = slider.value;

        slider.oninput = function() {
            output.innerHTML = this.value;
        }

    </script>


</body>
</html>