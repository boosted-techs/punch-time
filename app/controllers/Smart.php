<?php
class Smart extends Controller{
    function __construct(){
        parent::__construct();
    }
    function index (){
        $this->smarty->assign('username',"User name");
        $this->smarty->assign('email',"Email");
        $this->smarty->assign('pass',"Password");
        $this->smarty->assign('remember',"Remember Me");
        $this->smarty->assign('sign',"Sign In");
        $this->smarty->assign('signup',"Sign Up");
        $this->smarty->assign('forgot',"forgot Password?");
        $this->smarty->assign('register',"Register");
        $this->smarty->display('auth/login.tpl');

        $this->smarty->assign('register',"Register");
        $this->smarty->assign('login',"Login");
        $this->smarty->assign('logout',"Logout");
        $this->smarty->display('admin/app.tpl');

        $this->smarty->assign('dashboard',"Dashboard");
        $this->smarty->assign('employee',"Employees");
        $this->smarty->assign('attendance',"Attendance");
        $this->smarty->assign('schedule',"Schedule");
        $this->smarty->assign('leave',"Leave");
        $this->smarty->assign('report',"Report");
        $this->smarty->assign('user',"Users");
        $this->smarty->assign('setting',"Setting");
        $this->smarty->display('layouts/default.tpl');

        $this->smarty->assign('attendances',"Attendance");
        $this->smarty->assign('manual',"Manual Entry");
        $this->smarty->assign('date',"Date");
        $this->smarty->assign('employee',"Employee");
        $this->smarty->assign('timein',"Time In");
        $this->smarty->assign('timeout',"Time Out");
        $this->smarty->assign('totalhours',"Total Hours");
        $this->smarty->assign('status',"Status(IN/OUT)");
        $this->smarty->display('admin/attendance.tpl');


        $this->smarty->assign('in',"Punch in");
        $this->smarty->assign('out',"Punch Out");
        $this->smarty->display('clock.tpl');


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

        
        $this->smarty->assign('filter',"Filter");
        $this->smarty->assign('date',"Date");
        $this->smarty->assign('in',"Time In");
        $this->smarty->assign('out',"Time Out");
        $this->smarty->assign('hours',"Total Hours");
        $this->smarty->assign('status',"Status(IN/OUT)");
        $this->smarty->display('personal/personal-attendance.tpl');

        $this->smarty->assign('dashboard',"Dashboard");
        $this->smarty->assign('current',"Attendance (Current Month)");
        $this->smarty->assign('late',"Late Arrivals");
        $this->smarty->assign('early',"Early departures");
        $this->smarty->assign('present',"Present Schedule");
        $this->smarty->assign('rest',"Rest days");
        $this->smarty->assign('Leave',"Leaves of Absence");
        $this->smarty->assign('pending',"pending");
        $this->smarty->assign('approved',"Approved");
        $this->smarty->assign('date',"Date");
        $this->smarty->assign('time',"Time");
        $this->smarty->assign('desc',"Description");
        $this->smarty->assign('previous',"Previous Schedule");
        $this->smarty->assign('from',"From Date /Until");
        $this->smarty->assign('leaves',"Recent leaves of Absence");
        $this->smarty->assign('startdate',"Start Date");
        $this->smarty->assign('recent',"Recent Attendances");
        $this->smarty->display('personal/personal-dashboard.tpl');
    }
}
?>