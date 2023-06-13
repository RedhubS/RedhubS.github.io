<?php 

$login = filter_var(trim($_POST['login'])); 
$email = filter_var(trim($_POST['email'])); 
$password = filter_var(trim($_POST['password'])); 
$tel = filter_var(trim($_POST['tel']));
if(mb_strlen($login) < 5 || mb_strlen($login) > 90){
	echo "Недопустимая длина логина";
	exit();
}
if(mb_strlen($tel) < 5 || mb_strlen($tel) > 11){
	echo "Недопустимая длина номера телефона";
	exit();
}
if(mb_strlen($password) < 0 || mb_strlen($password) > 32){
	echo "Недопустимая длина пароля";
	exit();
}
if(mb_strlen($email) < 5 || mb_strlen($email) > 32){
	echo "Недопустимая длина Электронной почты";
	exit();
}
$password = md5($password."thisisforhabr");
$mysql = new mysqli('localhost', 'root', '', 'registr');

$result1 = $mysql->query("SELECT * FROM `users` WHERE `login` = '$login'");
$user1 = $result1->fetch_assoc();
if(!empty($user1)){
	echo "Данный логин уже используется!";
	exit();
}
$mysql->query("INSERT INTO `users` (`login`, `password`, `email`, `tel`) VALUES('$login', '$password', '$email' , '$tel' )");
$mysql->close();
header('Location: /');
?>