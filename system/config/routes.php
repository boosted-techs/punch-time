<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
//Less define our simple routes in this file to help us map to the exact methods in our project

$routes['']                                  =               "RegisterController/index";
$routes['login']                             =               "defaultController/index";
$routes['app']                               =               "App/index";
$routes['attend']                            =               "Smart/index";
$routes['person']                            =               "Personal/index";
$routes['dash']                              =               "Dashboard/index";
$routes['user']                              =               "UsersController/index";
$routes['user/add_user']                     =               "UsersController/add";
$routes['leave']                             =               "Leaves/index";
$routes['schedule']                          =               "Schedule/index";
$routes['report']                            =               "Report/index";
$routes['setting']                           =               "Setting/index";
$routes['employ']                            =               "Employees/index";
$routes['register']                          =               "RegisterController/register_user";
$routes['add_user']                          =               "HomeController/index";
$routes['login_user']                        =                "RegisterController/login_user";
//$routes['login']                           =               "LoginController/index";
/*
 * Website
 */