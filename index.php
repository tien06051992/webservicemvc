<?php
    require_once "Slim/Slim.php";
    require 'library/database.php';
    \Slim\Slim::registerAutoloader(); // call function autoload
    // create oject
    $app = new \Slim\Slim();
    $app->response()->header("Content-Type", "application/json");
    // call function, which is controller
/*    $app->get('/user/:action/:data', function ($action,$data) {
        switch ($action) {
            case 'login':
                require 'controllers/user/login.php';
                break;
            case 'signup':
                require 'controllers/user/signup.php';
                break;
            default:
                echo 'create new action or get list user';
                break;
        }
         // set valiable return
    });*/
    
    //now function get, last function post to check
    //-------USER---------
    $app->post('/user/signup', function () use ($app) {
        require 'controllers/user/signup.php';
    });
    $app->post('/user/login', function () use ($app) {
        require 'controllers/user/login.php';
    });
    //-------PRODUCT------------
    $app->get('/product/category', function () use ($app) {
        require 'controllers/product/category.php';
    });
    $app->get('/product/getProductByCategory', function () use ($app) {
        require 'controllers/product/getProductByCategory.php';
    });
    $app->post('/product/getProductById', function () use ($app) {
        require 'controllers/product/getProductById.php';
    });
    $app->post('/product/detail', function () use ($app) {
        require 'controllers/product/detail.php';
    });
    $app->run();
?>
