<?php

class Schedule extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
       
        $this->smarty->assign('schedule',"Schedules");
        $this->smarty->display('admin/schedule.tpl');
    }

}
?>