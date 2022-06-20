<?php

class Personal extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
        $this->smarty->assign('dashboard',"My Dashboard");
        $this->smarty->assign('attend',"My Attendance");
        $this->smarty->assign('schedules',"My Schedules");
        $this->smarty->assign('leave',"My Leave");
        $this->smarty->assign('setting',"Setting");
        $this->smarty->assign('menu',"Menu");
        $this->smarty->assign('quick',"Quick Access");
        $this->smarty->assign('clock',"TIME IN/OUT");
        $this->smarty->assign('profile',"My profile");
        $this->smarty->assign('update',"Update User");
        $this->smarty->assign('change',"Change password");
        $this->smarty->assign('logout',"Log Out");
        $this->smarty->display('layouts/personal.tpl');
        
    }

}