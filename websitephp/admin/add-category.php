<?php 

include('../middleware/adminMiddleware.php');
include('includes/header.php'); 

?>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4>Добави категория</h4>
                </div>
                <div class="card-body">
                    <form action="code.php" method="POST" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-6">
                                <label for="">Име</label>
                                <input type="text" name="name" placeholder="Въведете име на категорията" class="form-control">
                            </div>
                            <div class="col-md-6">
                                <label for="">Слъг</label>
                                <input type="text" name="slug" placeholder="Въведете слъг" class="form-control">
                            </div>
                            <div class="col-md-12">
                                <label for="">Описание</label>
                                <textarea rows="3" name="description" placeholder="Въведете описание" class="form-control"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label for="">Качи снимка</label>
                                <input type="file" name="image" class="form-control">
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета заглавие</label>
                                <input type="text" name="meta_title" placeholder="Въведете мета заглавие" class="form-control">
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета описание</label>
                                <textarea rows="3" name="meta_description" placeholder="Въведете мета описание" class="form-control"></textarea>
                            </div>
                            <div class="col-md-12">
                                <label for="">Мета ключови думи</label>
                                <textarea rows="3" name="meta_keywords" placeholder="Въведете мета ключови думи" class="form-control"></textarea>
                            </div>
                            <div class="col-md-6">
                                <label for="">Скрито?</label>
                                <input type="checkbox" name="status">
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" name="add_category_btn">Добави</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>