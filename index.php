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

    <div class="banner">
        <div class="banner_margin">
            <h2>Здоровье вашего девайса - наша <span style="background: #F53647">задача</span></h2>
            <h3>Авторизованный сервисный центр Apple</h3>
        </div>
    </div>

    <div id="gofix" class="about_margin">
        <div class="about">
            <h3>Быстро - от 2 часов</h3>
            <p>Мы проведём диагностику прямо на месте и сразу назовём ориентировочные сроки и стоимость ремонта. Обычно ремонт длится от 2 дней и не более 45 дней.</p>
        </div>
        <div class="about">
            <h3>Профессионально</h3>
            <p>Мы действительно знаем, что делать. Наши инженеры обладают сертификатами от Apple. На месте вышедшей из строя части появится новая оригинальная запчасть.</p>
        </div>
        <div class="about">
            <h3>Без потери гарантии</h3>
            <p>После обращения в наш сервисный центр гарантия на ваше устройство сохранится. Более того, вы получите гарантийный срок не менее 90 дней на новые детали.</p>
        </div>
        <div class="about">
            <h3>Рассрочка и кредит</h3>
            <p>Заявку можно оформить при передаче устройства в сервис. Оформление займёт не более 10 минут.</p>
        </div>
    </div>

    <div class="gofix">
        <h2>Запишитесь на ремонт сейчас</h2>
        <br>
        <form action="/code/neworder.php" method="post">
            <input name="name" type="text" placeholder="Как вас зовут?">
            <input name="phone" type="text" placeholder="Ваш номер телефона">
            <input name="device" type="text" placeholder="Какое устройство сломалось?">
            <input name="problem" type="text" placeholder="Что случилось?">
            <button>Записаться</button>
        </form>
    </div>

    <h3 class="howh3">Как наc найти?</h3>

    <div class="map">
        <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A8e8740f053b98e0c27485bb1ebed6882db78895f1ad83b51fe2de925e5a1efeb&amp;width=100%&amp;height=400&amp;lang=ru_RU&amp;scroll=true"></script>
    </div>

    <div class="footer">
        <a href="/index.php">
            <img src="/img/logo_foot.png" alt="">
        </a>
        <p>© 2008 — 2017 Apple-Gear - специализированный сервисный центр Apple в Москве</p>
    </div>

</body>
</html>