<?php
	$category='9';
	require 'models/product.php';
	$_product=new product;
	$result=$_product->getProductByCategory($category);
	require 'views/product/view_getProductByCategory.php';
?>