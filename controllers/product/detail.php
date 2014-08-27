<?php
	$data = $app->request->getBody();
	$data = json_decode($data);
	$product=(object) array();
	$product->id=$data->id;
	$product->category=$data->category;
	require 'models/product.php';
	$_product=new product($product);
	$result=$_product->detail();
	require 'views/product/view_detail.php';
?>