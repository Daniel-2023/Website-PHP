<?php 
include('functions/userfunctions.php');
include('includes/header.php'); 
?>

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a class="text-white text-decoration-none" href="index.php">Начало / </a>
            Поръчки</h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Номер за проследяване</th>
                            <th>Цена</th>
                            <th>Дата</th>
                            <th>Действие</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $orders = getOrders();

                            if(mysqli_num_rows($orders) > 0)
                            {
                                foreach ($orders as $item) {
                                    ?>
                                        <tr>
                                            <td><?= $item['id']; ?></td>
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
