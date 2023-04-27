<nav class="navbar navbar-expand-lg sticky-top navbar-dark bg-dark shadow">
  <div class="container">
    <a class="navbar-brand" href="index.php">Lambda Hardware</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="categories.php">Категории</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="contacts.php">Контакти</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="about-us.php">За нас</a>
        </li>
        <?php
          if(isset($_SESSION['auth']))
          {
            ?>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  <?= $_SESSION['auth_user']['name']; ?>
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="cart.php"><i class="fa fa-shopping-cart me-2"></i>Количка</a></li>
                  <li><a class="dropdown-item" href="my-orders.php"><i class="fa fa-list me-2"></i>Поръчки</a></li>
                  <li><a class="dropdown-item" href="logout.php"><i class="fa fa-reply me-2"></i>Изход</a></li>
                </ul>
              </li>
            <?php
          }
          else
          {
            ?>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Профил
                </a>
                <ul class="dropdown-menu">
                  <li><a class="dropdown-item" href="register.php">Регистрирай се</a></li>
                  <li><a class="dropdown-item" href="login.php">Влез</a></li>
                </ul>
              </li>
            <?php
          }
        ?>
      </ul>
    </div>
  </div>
</nav>