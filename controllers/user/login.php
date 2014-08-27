<?php
	require 'models/user.php';
	$data=$app->request->getBody();
	$data=json_decode($data);
	$user=(object) array();
	$user->name=$data->name;
	$user->pass=$data->pass;
	$_user=new user($user);
	$data=$_user->login();
	require 'views/user/view_login.php';
?>