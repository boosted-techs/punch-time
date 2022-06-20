<?php

class Report extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
       
        $this->smarty->assign('report',"Reports");
        $this->smarty->display('admin/report.tpl');
    }

}
?>