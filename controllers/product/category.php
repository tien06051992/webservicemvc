<?php
	require 'models/product.php';
	$_product=new product;
	$result=$_product->category();
	require 'views/product/view_category.php';
?>