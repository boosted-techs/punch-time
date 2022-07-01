<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
@include 'database.php';

class Login extends Model {
    function __construct() {
        parent::__construct();

    }


    function login() {
        $this->db->insert ('login', ($_POST));
    }

    function login_users(){
        $current_user = null;
        $users = $this->db->get('login');
        foreach ($users as $user){
            if($user['Email'] === $_POST['Email']){
                $current_user = $user;
                break;
            }
        }

        if($current_user === null){
            echo json_encode('email_not_exist');
            return;
        }

        // comparing passwords
        if($current_user['password'] !== $_POST['password']){
            echo json_encode('wrong_password');
            return;
        }

        // then login
        echo json_encode(
            (object)[
                'status' => 'login_successful',
                'data' => $current_user,
            ]
        );
    }


    // function register() {

    //     echo "hi angie<br>";
    //     var_dump($_POST);
       
    //     if(isset($_POST['submit'])){
    //         unset($_POST['submit']);
    //         $username = $this->db->insert ('login', ($_POST));
    //         $email = $this->db->insert ('login', ($_POST));
    //         $pasword = $this->db->insert ('login', ($_POST));
    //         $usertype= $this->db->insert ('login', ($_POST));
    //         echo('$username');
    //     };
        
    // }



       
    
}