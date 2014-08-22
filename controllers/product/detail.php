<?php
	//$id='3';
	$data = $app->request->getBody();
	$data = json_decode($data);
/*	require 'models/product.php';
	$_product=new product;
	$result=$_product->detail($id);*/
	require 'views/product/view_detail.php';
?>