<?php

    $host="localhost";
    $username="root";
    $password="";
    $database="phpecom";

    //Creating the database connection
    $con = mysqli_connect($host, $username, $password, $database);

    //Check if the database connection is successful
    if(!$con)
    {
        die("Connection Failed: ". mysqli_connect_error());
    }
?>