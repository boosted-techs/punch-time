
<?php

class loginController extends Controller
{
    function __construct()
    {
        parent::__construct();
       
        $this->model("Login");
    }

    function index() {
        
         $this->load_view("login");
    }
    // function log(){
    //     echo('$username');
    //     // $this->load_view("login");
    // }
        

}
?>