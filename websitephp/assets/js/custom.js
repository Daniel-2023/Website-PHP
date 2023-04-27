$(document).ready(function () {

    $(document).on('click','.increment-btn', function (e) {
        e.preventDefault();

        var qty = $(this).closest('.product_data').find('.input-qty').val();

        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        if(value < 10)
        {
            value++;
            $(this).closest('.product_data').find('.input-qty').val(value);
        }
    });

    $(document).on('click','.decrement-btn', function (e) {
        e.preventDefault();

        var qty = $(this).closest('.product_data').find('.input-qty').val();

        var value = parseInt(qty, 10);
        value = isNaN(value) ? 0 : value;
        if(value > 1)
        {
            value--;
            $(this).closest('.product_data').find('.input-qty').val(value);
        }
    });

    $(document).on('click','.addToCartBtn', function (e) {
        e.preventDefault();

        var qty = $(this).closest('.product_data').find('.input-qty').val();
        var prod_id = $(this).val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "add"
            },
            success: function (response) {
                if(response == 201)
                {
                    alertche("Добавихте продукта в количката");
                }
                else if(response == "existing")
                {
                    alertche("Продукта вече е в количката");
                }
                else if(response == 401)
                {
                    alertche("Влезте в акаунта си за да продължите");
                }
                else if(response == 500)
                {
                    alertche("Настъпна някаква грешка");
                }
            }
        });
    });

    $(document).on('click','.updateQty', function () {
        var qty = $(this).closest('.product_data').find('.input-qty').val();
        var prod_id = $(this).closest('.product_data').find('.prodId').val();

        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "prod_id": prod_id,
                "prod_qty": qty,
                "scope": "update"
            },
            success: function (response) {
                
            }
        });
    });

    $(document).on('click','.deleteItem', function () {
        var cart_id = $(this).val();
        
        $.ajax({
            method: "POST",
            url: "functions/handlecart.php",
            data: {
                "cart_id": cart_id,
                "scope": "delete"
            },
            success: function (response) {
                if(response == 200)
                {
                    alertche("Изтрихте продукта от количката");
                    $('#mycart').load(location.href + " #mycart");
                }
                else
                {
                    alertche(response);
                }
            }
        });
    });

});