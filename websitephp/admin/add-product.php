<?php 
 
include('../middleware/adminMiddleware.php');
include('includes/header.php');

?>

<div class="container">
    <div class="row mt-5">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Добави продукт</h4>
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
                                                    <option value="<?= $item['id']; ?>"><?= $item['name']; ?></option>
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
                            <div class="col-md-6">
                                <label for="">Име</label>
                                <input type="text" required name="name" placeholder="Въведете името на продукта" class="form-control mb-2">
                            </div>
                            <div class="col-md-6">
                                <label for="">Слъг</label>
                                <input type="text" required name="slug" placeholder="Въведете слъг" class="form-control mb-2">
                            </div>
                            <div class="col-md-12">
                                <label for="">Малко описание</label>
                                <textarea rows="3" required name="small_description" placeholder="Въведете малко описание" class="form-control mb-2"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label for="">Описание</label>
                                <textarea rows="3" required name="description" placeholder="Въведете описание" class="form-control mb-2"></textarea>
                            </div>
                            <div class="col-md-6">
                                <label for="">Онлайн цена</label>
                                <input type="text" required name="original_price" placeholder="Въведете онлайн цена" class="form-control mb-2">
                            </div>
                            <div class="col-md-6">
                                <label for="">Цена в магазина цена</label>
                                <input type="text" name="selling_price" placeholder="Въведете цена в магазина" class="form-control mb-2">
                            </div>
                            <div class="col-md-12">
                                <label for="">Качи изображение</label>
                                <input type="file" name="image" class="form-control mb-2">
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <label for="">Брой</label>
                                    <input type="number" required name="qty" placeholder="Въведете бройка" class="form-control mb-2">
                                </div>
                                <div class="col-md-3">
                                    <label for="">Скрито?</label>
                                    <input type="checkbox" name="status">
                                </div>
                                <div class="col-md-3">
                                    <label for="">Популярно</label>
                                    <input type="checkbox" name="trending">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета заглавие</label>
                                <input type="text" required name="meta_title" placeholder="Въведете мета заглавие" class="form-control mb-2">
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета описание</label>
                                <textarea rows="3" required name="meta_description" placeholder="Въведете мета описание" class="form-control mb-2"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета ключови думи</label>
                                <textarea rows="3" required name="meta_keywords" placeholder="Въведете мета ключови думи" class="form-control mb-2"></textarea>
                            </div>
                            <div class="col-md-12 p-2">
                                <button type="submit" class="btn btn-primary" name="add_product_btn">Добави</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>