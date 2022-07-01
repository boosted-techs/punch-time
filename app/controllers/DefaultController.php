<?php

class defaultController extends Controller
{
     function __construct()
    {
        parent::__construct();
    }

    function index() {
        
        $this->smarty->assign('logout',"Logout");
        $this->smarty->assign('register',"Register");
        $this->smarty->assign('dashboard',"Dashboard");
        $this->smarty->assign('employee',"Employees");
        $this->smarty->assign('attendance',"Attendance");
        $this->smarty->assign('schedule',"Schedule");
        $this->smarty->assign('leave',"Leave");
        $this->smarty->assign('report',"Report");
        $this->smarty->assign('user',"Users");
        $this->smarty->assign('link',"Link");
        $this->smarty->assign('tasks',"Tasks");
        $this->smarty->assign('profile',"Profile");
        $this->smarty->assign('logout',"Log Out");
        $this->smarty->assign('new',"New Employee");
        $this->smarty->assign('issue',"Issues");
        $this->smarty->assign('setting',"Setting");

        
        //  $this->smarty->assign('dashboard',"Dashboard");
        // $this->smarty->assign('employee',"Employees");
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

        $this->smarty->display('layouts/default.tpl');

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
       // $this->load_view("layouts/default");
    }
    
    

}
?>