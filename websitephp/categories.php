<?php 
include('functions/userfunctions.php');
include('includes/header.php'); 
?>

<div class="py-3 bg-primary">
    <div class="container">
        <h6 class="text-white">
            <a class="text-white text-decoration-none" href="index.php">Начало / </a>
            Категории</h6>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Нашите Категории</h1>
                <hr>
                <div class="row">
                    <?php 
                        $categories = getAllActive("categories");

                        if(mysqli_num_rows($categories) > 0)
                        {
                            foreach($categories as $item)
                            {
                                ?>
                                    <div class="col-md-3 mb-3">
                                        <a href="products.php?category=<?= $item['slug']; ?>" class="text-decoration-none">
                                            <div class="card shadow">
                                                <div class="card-body">
                                                    <img src="uploads/<?= $item['image']; ?>" alt="Снимка на категория" class="w-100">
                                                    <h4 class="text-center"><?= $item['name']; ?></h4>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                <?php
                            }
                        }
                        else
                        {
                            echo "Няма налични категории";
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
