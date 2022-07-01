<?php

class UsersController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Users_model");
    }
     
    function index() {
        $this->smarty->assign('id',"ID");
        $this->smarty->assign('user',"Users");
        $this->smarty->assign('name',"NAMES");
        $this->smarty->assign('role',"ROLE");
        $this->smarty->assign('email',"EMAIL");
        $this->smarty->assign('password',"Password");
        $this->smarty->assign('account',"ACCOUNT TYPE");
        $this->smarty->assign('gender',"GENDER");
        $this->smarty->assign('status',"STATUS");
        $this->smarty->assign('save',"Save");
        $this->smarty->display('admin/user.tpl');  
    }
     
    function add() {
        $this->load_view("home");
        
    }
    // function add_new_user() {
    //     $this->model->Users_model->add_user();
    //    //$this->redirect('/');
    // }

}
?>