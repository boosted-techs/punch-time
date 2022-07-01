<?php

@include 'database.php';

class RegisterController extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model('Login');
    }

    function index() {
        $this->load_view("register");
    }

    function register_user(){
        unset($_POST['confirm_password']);

        $this->model->Login->login();
        echo json_encode("login");
    }
    function login_user(){
        $this->model->Login->login_users();

    }










    // function test_input($data){
    //     $u_name= $email =$pass= $c_pass = $data;
    //     $data = trim($data);
    //     $data = stripslashes($data);
    //     $data = htmlspecialchars($data);
    //     return $data;
    // }

//     public function register( $username=null, $password=null, $email= null,$usertype=null)
// {
//     try {
//         $newPassword = password_hash($password, PASSWORD_DEFAULT);

//         // $stmt = $this->conn->prepare("INSERT INTO user(name, surname, username, password, email) 
//         //                      VALUES(:name, :surname, :username, :password, :email)");

//         $sqlData = $this->prepareData ($username,$email,$password,$usertype);
//         // if (!$this->validate ($sqlData))
//         //     return false;

//         $sqlData->bindParam(":username", $username);  
//         $sqlData->bindParam(":email", $email); 
//         $sqlData->bindParam(":password", $password);  
//         $sqlData->bindParam(":usertype", $usertype);

//         $sqlData->execute();   

//         return $sqlData;   
// }
//     catch(PDOException $e) {
//             echo $e->getMessage();
//     }
//}
}
    ?>