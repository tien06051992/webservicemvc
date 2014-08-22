<?php
	require 'models/user.php';
	$_user=new user;
	$data=array("error" => "Unauthorized",
"code" => 1,);
	$data=$_user->login();
	echo json_encode($data);
?>