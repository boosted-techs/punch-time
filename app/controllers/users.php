<?php

class User extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
        $this->smarty->assign('id',"ID");
        $this->smarty->assign('name',"NAMES");
        $this->smarty->assign('role',"ROLE");
        $this->smarty->assign('email',"EMAIL");
        $this->smarty->assign('account',"ACCOUNT TYPE");
        $this->smarty->assign('gender',"GENDER");
        $this->smarty->assign('status',"STATUS");
        $this->smarty->assign('save',"Save");
        $this->smarty->display('admin/user.tpl');
        
    }

}