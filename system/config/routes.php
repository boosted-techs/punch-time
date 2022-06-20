<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
//Less define our simple routes in this file to help us map to the exact methods in our project

$routes['']                                  =               "Home/index";
//$routes['f']                               =               "Home/f";
$routes['login']                             =               "Login/index";
$routes['attend']                             =               "Smart/index";
$routes['person']                             =               "Personal/index";
$routes['dash']                             =               "Dashboard/index";
$routes['user']                             =               "User/index";
/*
 * Website
 */