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
                    $category = getByID("categories", $id);

                    if(mysqli_num_rows($category) > 0)
                    {
                        $data = mysqli_fetch_array($category);
                        ?>
                            <div class="card">
                                <div class="card-header">
                                    <h4>Редактиране на категория
                                        <a href="category.php" class="btn btn-primary float-end">Назад</a>
                                    </h4>
                                </div>
                                <div class="card-body">
                                    <form action="code.php" method="POST" enctype="multipart/form-data">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="hidden" name="category_id" value="<?= $data['id'] ?>">
                                                <label for="">Име</label>
                                                <input type="text" name="name" value="<?= $data['name'] ?>" placeholder="Името на категорията" class="form-control">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Слъг</label>
                                                <input type="text" name="slug" value="<?= $data['slug'] ?>" placeholder="Въведете слъг" class="form-control">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Описание</label>
                                                <textarea rows="3" name="description" placeholder="Въведете описание" class="form-control"><?= $data['description'] ?></textarea>
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Качи изображение</label>
                                                <input type="file" name="image" class="form-control">
                                                <label for="">Сегашното изображение</label>
                                                <input type="hidden" name="old_image" value="<?= $data['image'] ?>">
                                                <img src="../uploads/<?= $data['image'] ?>" height="50px" width="50px" alt="">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Мета заглавие</label>
                                                <input type="text" name="meta_title" value="<?= $data['meta_title'] ?>" placeholder="Въведете мета заглавие" class="form-control">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Meta описание</label>
                                                <textarea rows="3" name="meta_description" placeholder="Въведете мета описание" class="form-control"><?= $data['meta_description'] ?></textarea>
                                            </div>
                                            <div class="col-md-12">
                                                <label for="">Мета ключови думи</label>
                                                <textarea rows="3" name="meta_keywords" placeholder="Въведете мета ключови думи" class="form-control"><?= $data['meta_keywords'] ?></textarea>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="">Скрито?</label>
                                                <input type="checkbox" <?= $data['status'] ? "checked":"" ?> name="status">
                                            </div>
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-primary" name="update_category_btn">Обнови</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        <?php
                    }
                    else
                    {
                        echo "Категорията не е намерена";
                    }
                }
                else
                {
                    echo "ID липсва в url";
                }
            ?>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>