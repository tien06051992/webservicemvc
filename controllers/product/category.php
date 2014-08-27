<?php
	$product = (object)array();
	$product->id = '';
	$product->category = '';
	require 'models/product.php';
	$_product=new product($product);
	$result=$_product->category();
	require 'views/product/view_category.php';
?>