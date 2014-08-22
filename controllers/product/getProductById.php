<?php
	$id='3';
	require 'models/product.php';
	$_product=new product;
	$result=$_product->getProductById($id);
	require 'views/product/view_getProductById.php';
?>