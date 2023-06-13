<?php 

$name = filter_var(trim($_POST['name'])); 
$emails = filter_var(trim($_POST['emails'])); 
$telefon = filter_var(trim($_POST['telefon'])); 
$soob = filter_var(trim($_POST['soob']));


$mysql = new mysqli('localhost', 'root', '', 'registr');

$mysql->query("INSERT INTO `svazac` (`name`, `emails`, `telefon`, `soob`) VALUES('$name', '$emails', '$telefon' , '$soob')");
$mysql->close();
header('Location: /');
?>