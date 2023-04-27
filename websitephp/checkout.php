<?php 
include('functions/userfunctions.php');
include('includes/header.php'); 
?>

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a class="text-white text-decoration-none" href="index.php">Начало / </a>
            <a class="text-white text-decoration-none" href="cart.php">Количка / </a>
            Плащане
        </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="card">
            <div class="card-body shadow">
                <form action="functions/placeorder.php" method="POST">
                    <div class="row">
                        <div class="col-md-7">
                            <h5>Данни за клиента</h5>
                            <hr>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Име</label>
                                    <input type="text" name="name" placeholder="Въведете трите си имена" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Имейл</label>
                                    <input type="email" name="email" placeholder="Вашия e-mail" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Телефон</label>
                                    <input type="text" name="phone" placeholder="Въведете телефонен номер" class="form-control">
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="fw-bold">Пощенски код</label>
                                    <input type="text" name="pincode" required placeholder="Въведете пощенски код" class="form-control">
                                </div>
                                <div class="col-md-12 mb-3">
                                    <label class="fw-bold">Адрес</label>
                                    <textarea name="address" required class="form-control" rows="5" placeholder="Въведете вашия адрес"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <h5>Данни за поръчката</h5>
                            <hr>  
                                <?php $items = getCartItems(); 
                                    $totalPrice = 0;
                                    foreach ($items as $citem) 
                                    {
                                        ?>
                                        <div class="mb-1 border">
                                            <div class="row align-items-center">
                                                <div class="col-md-2">
                                                    <img src="uploads/<?= $citem['image']; ?>" alt="Снимка" width="80px">
                                                </div>
                                                <div class="col-md-5">
                                                    <h5><?= $citem['name']; ?></h5>
                                                </div>
                                                <div class="col-md-3">
                                                    <h5><?= $citem['original_price']; ?> лв</h5>
                                                </div>
                                                <div class="col-md-2">
                                                    <h5>x <?= $citem['prod_qty']; ?></h5>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
                                        $totalPrice += $citem['original_price'] * $citem['prod_qty'];
                                    }
                                ?>
                                <hr>
                            <h5>Крайна цена: <span class="float-end fw-bold"><?= $totalPrice ?> лв</span></h5>
                            <div>
                                <input type="hidden" name="payment_mode" value="COD">
                                <button type="submit" name="placeOrderBtn" class="btn btn-primary w-100">Потвърди и поръчай</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
