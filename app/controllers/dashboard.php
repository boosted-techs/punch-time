<?php

class Dashboard extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
        $this->smarty->assign('dashboard',"Dashboard");
        $this->smarty->assign('employees',"Employees");
        $this->smarty->assign('regular',"Regular");
        $this->smarty->assign('intern',"Internee");
        $this->smarty->assign('attendances',"Attendances");
        $this->smarty->assign('online',"Online");
        $this->smarty->assign('offline',"Offline");
        $this->smarty->assign('leave',"Leaves of Absence");
        $this->smarty->assign('pending',"pending");
        $this->smarty->assign('approved',"Approved");
        $this->smarty->assign('new',"New Employee");
        $this->smarty->assign('name',"Name");
        $this->smarty->assign('position',"Position");
        $this->smarty->assign('startdate',"Start Date");
        $this->smarty->assign('recent',"Recent Attendances");
        $this->smarty->assign('type',"Type");
        $this->smarty->assign('time',"Time");
        $this->smarty->assign('leaves',"Recent leaves of Absence");
        $this->smarty->assign('date',"Date");
        $this->smarty->display('admin/dashboard.tpl');
        
    }

}