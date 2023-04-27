<?php 
session_start();
include('includes/header.php'); ?>

<section class="Material-contact-section section-padding section-dark mt-5 mb-5">
    <div class="container">
        <div class="row">
            <!-- Заглавие -->
            <div class="col-md-12 wow animated fadeInLeft" data-wow-delay=".2s">
                <h1 class="section-title">Нуждаете се от помощ?</h1>
            </div>
        </div>
        <div class="row">
            <!-- Лява секция -->
            <div class="col-md-6 mt-3 contact-widget-section2 wow animated fadeInLeft" data-wow-delay=".2s">
                <p>Имате конкретни въпроси? Търсите помощ от консултант? Свържете се с нас като попълните формуляра и ще ви върнем отговор възможно най-бързо.</p>

                <div class="find-widget">
                    Компания: <a href="#">Lambda Hardware</a>
                </div>
                <div class="find-widget">
                    Адрес: <a href="#">бул. "Пещерско шосе" 26, 4002 ж.к. Младежки хълм, Пловдив</a>
                </div>
                <div class="find-widget">
                    Телефон: <a href="#">+359 08918492784</a>
                </div>
                <div class="find-widget">
                    Имейл: <a href="#">lambdaHardware@gmail.com</a>
                </div>
            </div>

            <!-- Дясна секция -->
            <div class="col-md-6">
                <form method="post" action="mail.php">
                    <!-- Име -->
                    <div class="form-group label-floating">
                        <label class="control-label" for="name">Име</label>
                        <input class="form-control" type="text" name="name" required>
                    </div>
                    <!-- Имейл -->
                    <div class="form-group label-floating">
                        <label class="control-label" for="email">Имейл</label>
                        <input class="form-control" type="email" name="email" required>
                    </div>
                    <!-- Съобщение -->
                    <div class="form-group label-floating">
                        <label for="message" class="control-label">Съобщение</label>
                        <textarea class="form-control" name="message" required></textarea>
                    </div>
                    <!-- Изпращане -->
                    <div class="form-submit mt-5 mb-5">
                        <input type="submit" class="form-control" value="Изпрати">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<?php include('includes/footer.php'); ?>