<?php 

include('../middleware/adminMiddleware.php');
include('includes/header.php'); 

if(isset($_GET['t']))
{
    $tracking_number = $_GET['t'];

    $orderData = checkTrackingNumberValid($tracking_number);
    if(mysqli_num_rows($orderData) < 0)
    {
        ?>
            <h4>Настъпна някаква грешка</h4>
        <?php
        die();
    }
}
else
{
    ?>
        <h4>Настъпна някаква грешка</h4>
    <?php
    die();
}

$data = mysqli_fetch_array($orderData);
?>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <a href="orders.php" class="btn btn-warning float-end"><i class="fa fa-reply me-2"></i> Назад</a>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Детайли за доставката</h4>
                            <hr>
                            <div class="row">
                                <div class="col-md-12 mb-2">
                                    <label class="fw-bold">Име</label>
                                    <div class="border p-1">
                                        <?= $data['name']; ?>
                                    </div>
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label class="fw-bold">Имейл</label>
                                    <div class="border p-1">
                                        <?= $data['email']; ?>
                                    </div>
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label class="fw-bold">Телефонен номер</label>
                                    <div class="border p-1">
                                        <?= $data['phone']; ?>
                                    </div>
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label class="fw-bold">Проследяващ номер</label>
                                    <div class="border p-1">
                                        <?= $data['address']; ?>
                                    </div>
                                </div>

                                <div class="col-md-12 mb-2">
                                    <label class="fw-bold">Пощенски код</label>
                                    <div class="border p-1">
                                        <?= $data['pincode']; ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4>Детайли за поръчката</h4>
                            <hr>

                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Продукт</th>
                                        <th>Цена</th>
                                        <th>Количество</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $order_query = "SELECT o.id as oid, o.tracking_number, o.user_id, oi.*, oi.qty as orderqty, p.* FROM orders o, order_items oi,
                                            products p WHERE oi.order_id=o.id AND p.id=oi.prod_id 
                                            AND o.tracking_number='$tracking_number' ";
                                        $order_query_run = mysqli_query($con, $order_query);

                                        if(mysqli_num_rows($order_query_run) > 0)
                                        {
                                            foreach ($order_query_run as $item) {
                                                ?>
                                                    <tr>
                                                        <td class="align-middle">
                                                            <img src="../uploads/<?= $item['image']; ?>" width="50px" height="50px" alt="<?= $item['name']; ?>">
                                                            <?= $item['name']; ?>
                                                        </td>
                                                        <td class="align-middle">
                                                            <?= $item['price']; ?> лв
                                                        </td>
                                                        <td class="align-middle"> 
                                                            <?= $item['orderqty']; ?>
                                                        </td>
                                                    </tr>
                                                <?php
                                            }
                                        }
                                    ?>
                                </tbody>
                            </table>

                            <hr>
                            <h5>Крайна цена: <span class="float-end fw-bold"><?= $data['total_price']; ?> лв</span></h5>

                            <hr>
                            
                            <label class="fw-bold">Състояние</label>
                            <div class="mb-3">
                                <form action="code.php" method="POST">
                                    <input type="hidden" name="tracking_number" value="<?= $data['tracking_number']; ?>">
                                    <select name="order_status" id="" class="form-select">
                                        <option value="0" <?= $data['status'] == 0?"selected":"" ?>>Обработва се</option>
                                        <option value="1" <?= $data['status'] == 1?"selected":"" ?>>Изпълнена</option>
                                        <option value="2" <?= $data['status'] == 2?"selected":"" ?>>Отказана</option>
                                    </select>
                                    <button type="submit" name="update_order_btn" class="btn btn-primary mt-2">Обнови</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
