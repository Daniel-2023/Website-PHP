<?php
include("../functions/myfunctions.php");

    if(isset($_SESSION['auth']))
    {
        if($_SESSION['role_as'] != 1)
        {
            redirect("../index.php", "Нямате достъп до тази страница");
        }
    }
    else
    {
        redirect("../login.php", "Влезте, за да продължите");
    }
?>