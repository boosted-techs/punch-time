<?php

class Setting extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
       
        $this->smarty->assign('set',"Settings");
        $this->smarty->display('admin/setting.tpl');
    }

}
?>