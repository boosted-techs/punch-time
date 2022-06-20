<?php

class Leaves extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
       
        $this->smarty->assign('leave',"Leaves Of Absence");
        $this->smarty->display('admin/leaves.tpl');
    }

}
?>