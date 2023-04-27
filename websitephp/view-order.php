<?php 
include('functions/userfunctions.php');
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

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a class="text-white text-decoration-none" href="index.php">Начало / </a>
            <a class="text-white text-decoration-none" href="my-orders.php">Поръчки / </a>
            Детайли
            </h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <a href="my-orders.php" class="btn btn-warning float-end"><i class="fa fa-reply"></i> Назад</a>
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
                                            $userId = $_SESSION['auth_user']['user_id'];

                                            $order_query = "SELECT o.id as oid, o.tracking_number, o.user_id, oi.*, oi.qty as orderqty, p.* FROM orders o, order_items oi,
                                                products p WHERE o.user_id='$userId' AND oi.order_id=o.id AND p.id=oi.prod_id 
                                                AND o.tracking_number='$tracking_number' ";
                                            $order_query_run = mysqli_query($con, $order_query);

                                            if(mysqli_num_rows($order_query_run) > 0)
                                            {
                                                foreach ($order_query_run as $item) {
                                                    ?>
                                                        <tr>
                                                            <td class="align-middle">
                                                                <img src="uploads/<?= $item['image']; ?>" width="50px" height="50px" alt="<?= $item['name']; ?>">
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
                                <div class="border p-1 mb-3">
                                    <?php
                                        if($data['status'] == 0)
                                        {
                                            echo "Обработва се";
                                        }
                                        else if($data['status'] == 1)
                                        {
                                            echo "Изпълнена";
                                        }
                                        else if($data['status'] == 2)
                                        {
                                            echo "Отказана";
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
