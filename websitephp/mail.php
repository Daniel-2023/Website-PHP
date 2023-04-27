<?php
include('functions/userfunctions.php');

$name = $_POST['name'];
$email = $_POST['email'];
$message = $_POST['message'];
$to = "danielpopov18b@gmail.com";
$subject = "Запитване";

$headers = 'От: '.$name. "\r\n" . 
"CC: do-not-reply@lambdaHardware.com";

$txt = "Получихте имейл от ".$name ."\r\nEmail: " .$email ."\r\n
    Message: ". $message;

if($email!=NULL) {
    mail($to, $subject, $txt, $headers);
}

redirect("contacts.php", "Успешно изпратихте имейл");
?>