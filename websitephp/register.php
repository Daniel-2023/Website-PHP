<?php 
session_start();

if(isset($_SESSION['auth']))
{
    $_SESSION['message'] = "Вече сте влезнали в акаунта си";
    header('Location: index.php');
    exit();
}

include('includes/header.php'); 
?>

<div class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <?php 
                if(isset($_SESSION['message']))
                {
                    ?>
                    <div class="alert alert-warning alert-dismissible fade show" role="alert">
                        <?= $_SESSION['message']; ?>.
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <?php
                    unset($_SESSION['message']);
                }
                ?>
                <div class="card">
                    <div class="card-header">
                        <h4>Регистрация</h4>
                    </div>
                    <div class="card-body">
                        <form action="functions/authcode.php" method="POST">
                            <div class="mb-3">
                                <label class="form-label">Потребителско име</label>
                                <input type="text" name="name" class="form-control" placeholder="Въведете потребителско име">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Телефон</label>
                                <input type="number" name="phone" class="form-control" placeholder="Въведете телефонен номер">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputEmail1" class="form-label">Имейл</label>
                                <input type="email" name="email" class="form-control" placeholder="Въведете имейл" id="exampleInputEmail1" aria-describedby="emailHelp">
                            </div>
                            <div class="mb-3">
                                <label for="exampleInputPassword1" class="form-label">Парола</label>
                                <input type="password" name="password" class="form-control" placeholder="Въведете парола" id="exampleInputPassword1">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Потвърдете паролата</label>
                                <input type="password" name="cpassword" class="form-control" placeholder="Напишете същата парола" id="exampleInputPassword1">
                            </div>
                            <button type="submit" name="register_btn" class="btn btn-primary">Изпрати</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>