<?php

$login = filter_var(trim($_POST['login']));
$password = filter_var(trim($_POST['password']));

if(mb_strlen($login) < 5 || mb_strlen($login) > 90){
	echo "Недопустимая длина логина";
	exit();
}
if(mb_strlen($password) < 0 || mb_strlen($password) > 32){
	echo "Недопустимая длина пароля";
	exit();
}
$password = md5($password."forhktkntuhpi");

$mysql = new mysqli('localhost', 'root', '', 'registr');
$result1 = $mysql->query("SELECT * FROM `mened` WHERE `login` = '$login' AND `password` = '$password'");
$users = $result1->fetch_assoc(); 





$mysql->close();
header('Location: index2.html');
?>