<?php
/*	require 'models/user.php';
	$_user=new user;
	$data=$_user->signup();
	echo json_encode($data);*/
    require 'models/user.php';
	$_user=new user;
	print_r($_POST);
	//$data=$_POST;
	//$json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
	//$data=json_decode($_POST[$json]);
	//$data=$_user->signup($data);
	//$data[]=$_user->signup($_FILES["file"]["name"]);
	//print_r($data);
	//echo json_encode($data);
?>