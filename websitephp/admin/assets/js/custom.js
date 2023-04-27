$(document).ready(function () {

    $(document).on('click', '.delete_product_btn', function (e) {
        e.preventDefault();

        var id = $(this).val();

        swal({
            title: "Сигурни ли сте?",
            text: "След като бъде изтрит, няма да може да бъде възстановен",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    method: "POST",
                    url: "code.php",
                    data: {
                        'product_id':id,
                        'delete_product_btn':true
                    },
                    success: function (response) {
                        if(response == 200)
                        {
                            swal("Успех!", "Продукта беше изтрит успешно!", "success");
                            $("#products_table").load(location.href + " #products_table");
                        }
                        else if(response == 500)
                        {
                            swal("Грешка!", "Възникна някаква грешка!", "error");
                        }
                    }
                });
            } 
          });
    });

    $(document).on('click', '.delete_category_btn', function (e) {
        e.preventDefault();

        var id = $(this).val();

        swal({
            title: "Сигурни ли сте?",
            text: "След като бъде изтритa, няма да може да бъде възстановенa",
            icon: "warning",
            buttons: true,
            dangerMode: true,
          })
          .then((willDelete) => {
            if (willDelete) {
                $.ajax({
                    method: "POST",
                    url: "code.php",
                    data: {
                        'category_id':id,
                        'delete_category_btn':true
                    },
                    success: function (response) {
                        if(response == 200)
                        {
                            swal("Успех!", "Категорията беше изтрита успешно!", "success");
                            $("#category_table").load(location.href + " #category_table");
                        }
                        else if(response == 500)
                        {
                            swal("Грешка!", "Възникна някаква грешка!", "error");
                        }
                    }
                });
            } 
          });
    });
});