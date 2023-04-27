<?php 
include('../middleware/adminMiddleware.php');
include('includes/header.php'); 
?>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-primary">
                    <h4 class="text-white">Поръчки
                        <a href="order-history.php" class="btn btn-warning float-end">История</a>
                    </h4>
                </div>
                <div class="card-body" id="">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Потребител</th>
                            <th>Номер за проследяване</th>
                            <th>Цена</th>
                            <th>Дата</th>
                            <th>Действие</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $orders = getAllOrders();

                            if(mysqli_num_rows($orders) > 0)
                            {
                                foreach ($orders as $item) {
                                    ?>
                                        <tr>
                                            <td><?= $item['id']; ?></td>
                                            <td><?= $item['name']; ?></td>
                                            <td><?= $item['tracking_number']; ?></td>
                                            <td><?= $item['total_price']; ?> лв</td>
                                            <td><?= $item['created_at']; ?></td>
                                            <td>
                                                <a href="view-order.php?t=<?= $item['tracking_number']; ?>" class="btn btn-primary">Виж детайли</a>
                                            </td>
                                        </tr>
                                    <?php
                                }
                            }
                            else
                            {
                                ?>
                                <td colspan="5">Нямате поръчки</td>
                                <?php
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
