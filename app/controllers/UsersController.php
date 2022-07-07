<?php

class UsersController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Users_model");
    }

    function index()
    {
        $this->smarty->assign('id', "ID");
        $this->smarty->assign('user', "Create Users");
        $this->smarty->assign('fname', "First Name");
        $this->smarty->assign('lname', "Last Name");
        $this->smarty->assign('role', "Roles");
        $this->smarty->assign('email', "Email");
        $this->smarty->assign('date', "Date Assigned");
        $this->smarty->assign('account', "Account type");
        $this->smarty->assign('gender', "GENDER");
        $this->smarty->assign('action', "Action");
        $this->smarty->assign('save', "Save");
        $this->smarty->assign("data", $this->model->Users_model->get_user());
        $this->smarty->display('admin/user.tpl');
    }

    function add()
    {
        $response = $this->model->Users_model->add_user();
        $this->redirect("/user");

    }


}
?>