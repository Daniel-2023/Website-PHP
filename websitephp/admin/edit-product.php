<?php 

include('../middleware/adminMiddleware.php');
include('includes/header.php'); 

?>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <?php 
                if(isset($_GET['id']))
                {
                    $id = $_GET['id'];

                    $product = getByID("products",$id);

                    if(mysqli_num_rows($product) > 0)
                    {
                        $data = mysqli_fetch_array($product);
                        ?>
                            <div class="card">
                                <div class="card-header">
                                    <h4>Редактирай продукт
                                        <a href="products.php" class="btn btn-primary float-end">Назад</a>
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <!-- multipart/form-data е за приемане на снимки -->
                                    <form action="code.php" method="POST" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="">Избери категория</label>
                                                <select name="category_id" class="form-select mb-2">
                                                    <option selected>Избери категория</option> 
                                                    <?php
                                                        $categories = getAll("categories");

                                                        if(mysqli_num_rows($categories) > 0)
                                                        {
                                                            foreach($categories as $item) {
                                                                ?>
                                                                    <option value="<?= $item['id']; ?>" <?= $data["category_id"] == $item['id']?'selected':'' ?>><?= $item['name']; ?></option>
                                                                <?php
                                                            }
                                                        }
                                                        else
                                                        {
                                                            echo "Няма категории";
                                                        }
                                                    ?>   
                                                </select>
                                            </div>
                                            <input type="hidden" name="product_id" value="<?= $data['id']; ?>">
                                            <div class="col-md-6">
                                                <label for="">Име</label>
                                                <input type="text" required name="name" value="<?= $data['name']; ?>" placeholder="Въведете името на продукта" class="form-control mb-2">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Слъг</label>
                                                <input type="text" required name="slug" value="<?= $data['slug']; ?>" placeholder="Въведете слъг" class="form-control mb-2">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Малко описание</label>
                                                <textarea rows="3" required name="small_description" placeholder="Въведете малко описание" class="form-control mb-2"><?= $data['small_description']; ?></textarea>
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Описание</label>
                                                <textarea rows="3" required name="description" placeholder="Въведете описание" class="form-control mb-2"><?= $data['description']; ?></textarea>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Онлайн цена</label>
                                                <input type="text" required name="original_price" value="<?= $data['original_price']; ?>" placeholder="Въведете онлайн цена" class="form-control mb-2">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Цена в магазина</label>
                                                <input type="text" name="selling_price" value="<?= $data['selling_price']; ?>" placeholder="Въведете цена в магазина" class="form-control mb-2">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Качи изображение</label>
                                                <input type="hidden" name="old_image" value="<?= $data['image']; ?>">
                                                <input type="file" name="image" class="form-control mb-2">
                                                <label for="">Сегашното изображение</label>
                                                <img src="../uploads/<?= $data['image']; ?>" alt="Снимка на продукта" height="50px" width="50px">
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <label for="">Брой</label>
                                                    <input type="number" required name="qty" value="<?= $data['qty']; ?>" placeholder="Въведете бройка" class="form-control mb-2">
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="">Скрито?</label>
                                                    <input type="checkbox" name="status" <?= $data['status'] == '0'?'':'checked' ?>>
                                                </div>
                                                <div class="col-md-3">
                                                    <label for="">Популярно</label>
                                                    <input type="checkbox" name="trending" <?= $data['trending'] == '0'?'':'checked' ?>>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Мета заглавие</label>
                                                <input type="text" required name="meta_title" value="<?= $data['meta_title']; ?>" placeholder="Въведете мета заглавие" class="form-control mb-2">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Мета описание</label>
                                                <textarea rows="3" required name="meta_description" placeholder="Въведете мета описание" class="form-control mb-2"><?= $data['meta_description']; ?></textarea>
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Мета ключови думи</label>
                                                <textarea rows="3" required name="meta_keywords" placeholder="Въведете мета ключови думи" class="form-control mb-2"><?= $data['meta_keywords']; ?></textarea>
                                            </div>
                                            <div class="col-md-12 p-2">
                                                <button type="submit" class="btn btn-primary" name="update_product_btn">Обнови</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        <?php
                    }
                    else
                    {
                        echo "Продукта не е намерен за това id";
                    }
                }
                else
                {
                    echo "Id липсва в url";
                }
            ?>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>