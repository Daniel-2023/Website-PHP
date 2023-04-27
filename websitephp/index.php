<?php 

include('functions/userfunctions.php');
include('includes/header.php');
include('includes/slider.php');
?>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>Популярни продукти</h4>
                <hr>
                <div class="owl-carousel">
                    <?php 
                        $trendingProducts = getAllTrending();
                        if(mysqli_num_rows($trendingProducts) > 0)
                        {
                            foreach ($trendingProducts as $item)
                            {
                                ?>
                                    <div class="item">
                                        <a href="product-view.php?product=<?= $item['slug']; ?>">
                                            <div class="card shadow">
                                                <div class="card-body">
                                                    <img src="uploads/<?= $item['image']; ?>" alt="Снимка на продукта" class="w-100">
                                                    <h6 class="text-center"><?= $item['name']; ?></h6>
                                                </div>
                                            </div>
                                        </a>
                                    </div>  
                                <?php
                            }
                        }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="py-5 bg-f2f2f2">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>За нас</h4>
                <hr>
                <p>
                    Фирмата започва работа през 2017 година. В много кратък период печели доверието на хиляди клиенти. Предлагаме най-конкурентно способните
                    цени в цяла България, точно каквито са в САЩ. Работим с всички световни доставчици на части, за да осигурим постоянно количество и най-добрите цени.
                </p>
                <p>
                    Бърза доставка до 3 дена с Еконт или Спийди. 30 дни право на връщане без въпроси и излишни проблеми. Всичко е за сметка на фирмата.
                    <br>
                    Всички наши служители имат минимум 3 години опит в тяхната работа. Може да се доверите на нашите специалисти с вашите проблеми и въпроси.
                </p>
            </div>
        </div>
    </div>
</div>
    
<?php include('includes/footer.php'); ?>
<script>
    $(document).ready(function () {
        $('.owl-carousel').owlCarousel({
            loop:true,
            margin:10,
            nav:true,
            responsive:{
                0:{
                    items:1
                },
                600:{
                    items:3
                },
                1000:{
                    items:5
                }
            }
        })
    });
</script>