<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
//Less define our simple routes in this file to help us map to the exact methods in our project

$routes['']                                  =               "Test/index";
//$routes['f']                               =               "Home/f";
$routes['login']                             =               "Login/index";
$routes['attend']                             =               "Smart/index";
$routes['person']                             =               "Personal/index";
$routes['dash']                             =               "Dashboard/index";
$routes['user']                             =               "Users/index";
$routes['leave']                             =               "Leaves/index";
$routes['schedule']                             =               "Schedule/index";
$routes['report']                             =               "Report/index";
$routes['setting']                             =               "Setting/index";
$routes['employ']                             =               "Employees/index";
$routes['test']                             =                   "Test/index";
$routes['save'] = "Test/save";
/*
 * Website
 */