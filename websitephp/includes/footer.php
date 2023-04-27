    <script src="assets/js/jquery-3.6.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/alertche.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    
    <script>
      <?php if(isset($_SESSION['message'])) { ?>
          alertche('<?= $_SESSION['message']; ?>');
      <?php
        unset($_SESSION['message']);
      } 
      ?>
    </script>

    <div class="py-5 bg-dark">
      <div class="container">
        <div class="row">
          <div class="col-md-3">
            <h4 class="text-white">Lambda Hardware</h4>
            <hr>
            <a href="index.php" class="text-white"><i class="fa fa-angle-right me-2"></i>Начало</a> <br>
            <a href="contacts.php" class="text-white"><i class="fa fa-angle-right me-2"></i>Контакти</a> <br>
            <?php 
              if(isset($_SESSION['auth']))
              {
                ?>
                  <a href="cart.php" class="text-white"><i class="fa fa-angle-right me-2"></i>Количка</a> <br>
                <?php
              }
              else
              {
                ?>
                  <a href="about-us.php" class="text-white"><i class="fa fa-angle-right me-2"></i>За нас</a> <br>
                <?php
              }
            ?>
            <a href="categories.php" class="text-white"><i class="fa fa-angle-right me-2"></i>Категории</a>
          </div>
          <div class="col-md-3">
            <h4 class="text-white">Адрес</h4>
            <p class="text-white">
              бул. "Пещерско шосе" 26, 
              4002 ж.к. Младежки хълм, 
              Пловдив, България
            </p>
            <a href="tel:+3598918492784" class="text-white"><i class="fa fa-phone me-2"></i>+359 8918492784</a> <br>
            <a href="mailto:lambdaHardware@gmail.com" class="text-white"><i class="fa fa-envelope me-2"></i>lambdaHardware@gmail.com</a>
          </div>
          <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2958.4328398431257!2d24.727514315875855!3d42.14102357920223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14acd1cc3a847e3d%3A0xd2e94589d06dd729!2z0J_RgNC-0YTQtdGB0LjQvtC90LDQu9C90LAg0LPQuNC80L3QsNC30LjRjyDQv9C-INC10LvQtdC60YLRgNC-0YLQtdGF0L3QuNC60LAg0Lgg0LXQu9C10LrRgtGA0L7QvdC40LrQsA!5e0!3m2!1sen!2sbg!4v1676213249077!5m2!1sen!2sbg" class="w-100" height="200" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
          </div>
        </div>
      </div>
    </div>
    <div class="py-2 bg-danger">
      <div class="text-center">
        <p class="mb-0 text-white">Всички права са запазени. Copyright &copy; Lambda Hardware - <?= date('Y') ?></p>
      </div>
    </div>
  </body>
</html>