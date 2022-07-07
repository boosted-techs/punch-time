<?php

//@include 'database.php';

class RegisterController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model('Login');
    }

    function index() {

        $this->load_view("register");
    }

    function register_user(){
        unset($_POST['confirm_password']);

        $this->model->Login->login();
        echo json_encode("login");
    }
    function login_user(){
        $this->model->Login->login_users();

    }


}
?>