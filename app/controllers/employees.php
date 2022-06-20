<?php

class Employees extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
       
        $this->smarty->assign('employ',"Employees");
        $this->smarty->display('admin/employees.tpl');
    }

}
?>