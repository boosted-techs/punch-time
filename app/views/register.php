<?php
/**
 * Created by PhpStorm.
 * User: Ashiraff
 * Company: Boosted Technologies LTD
 * Company Email: office@boostedtechs.com
 * Company Website:https://www.boostedtechs.com
 * Author's website: https://www.tumusii.me
 * Date: 7/19/21
 * Time: 9:29 AM
 */

if (!defined('APPLICATION_LOADED') || !APPLICATION_LOADED) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}


// session_start();
// require_once('controllers/Home.php');
// $user = new Home();

// if($user->isLoggedIn()!="") {
//     $user->redirect('home.php');
// }

// if(isset($_POST['submit'])) {
//     $username = strip_tags($_POST['username']);
//     $email = strip_tags($_POST['email']);
//     $password = strip_tags($_POST['password']);
//     $usertype = strip_tags($_POST['usertype']);

// if($username=="") {
//         $error[] = "username !";    
// } else if ($usertype =="") {
//       $error[] = "Provide usertype!";
//     } else if($password=="") {
//         $error[] = "provide password !";
//       } else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
//         $error[] = 'Please enter a valid email address !';
//         } else if(strlen($password) < 6){
//             $error[] = "Password must be atleast 6 characters"; 
//           } else {
//                 try {
//                     $sqlData = $this->db->ArrayBuilder()->getValue ($this->employee, $username, 1);
//                     // $sqlData = $user->runQuery("SELECT username FROM user WHERE username=:username");
//                     $sqlData->execute(array(':username'=>$username));
//                     $row=$sqlData->fetch(PDO::FETCH_ASSOC);

//                     if($row['username']==$username) {
//                             $error[] = "sorry username already taken !";
//                      } 
//                     //else {
//                     //     if($user->register($username,$password,$email,$usertype)){   
//                     //         $user->redirect('login.php?joined');
//                     //     }
//                     // }
//                 }
//                 catch(PDOException $e) {
//                     echo $e->getMessage();
//                 }
//             }   
//}


//  $uname_error=$email_error= $pass_error=$cpass_error =$gender_err=null;
//  $u_name= $email =$pass= $c_pass = $gender =null;

// if($_SERVER["REQUEST_METHOD"]=='POST'){
//   if(empty($_POST['u_name'])){
//     $uname_error ="please enter your user name";
//   }else{
//     $u_name =test_input($_POST['u_name']);
//     if (!preg_match("/^[a-zA-Z-' ]*$/",$u_name)) {
//       $uname_error = "Only letters and white space allowed";
// }
// }

//   if(empty($_POST["email"])){
//     $email_error = "Email is Required";
//   }else{
//     $email = test_input($_POST['email']);
//     if (!filter_var($email, FILTER_VALIDATE_EMAIL)){
//       $email_error = "invalid format";
//     }
//   }

//   if(empty($_POST["gender"])){
//     $gender_err ="Gender is required";
//   }else{
//     $gender = test_input($_POST['gender']);
//   }

//   if(!empty($_POST["pass"]) && ($_POST["pass"] == $_POST["c_pass"])){
//     $pass = test_input($_POST["pass"]);
//     $c_pass = test_input($_POST["c_pass"]);
//     if(strlen($_POST["pass"]) <='10'){
//       $pass_error ="Your password must contain atleast 10 characters!";
//     }elseif(!preg_match("#[0-9]+#", $pass)){
//       $pass_error ="Your password must contain atleast one number";
//     }elseif(!preg_match("#[A-Za-z]+#", $pass)){
//       $pass_error="Your passwor should contain atleast one capital letter or lower letter";
//     }elseif(!preg_match('/[\'^$%&*()}{@#~?<>,.|=-_+~`]/')){
//       $pass_error="Your password should contain a special character";
//     }
//   }
//   elseif(strcmp($pass, $c_pass) !==0){
//     $pass_error = "Passwords donot match";
//   }else{
//     $pass_error ="Please enter password";
//   }

//}
?>
<!DOCTYPE html>
<head>
    <!-- Basic Page Needs -->
    <meta name="refresh"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js"
            integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/assets/styles/style.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="https://unpkg.com/petite-vue" defer></script>
    <style>.error {
            color: #FF0000;
        }</style>


    <script type="module">
        import {createApp} from 'https://unpkg.com/petite-vue?module'

        createApp({
            // exposed to all expressions
            stateLoading: false,
            submitting: true,
            serverMessage: '',
            // methods
            post_form_to_api(e,form_data){
                const xhr = new XMLHttpRequest();
                const outer_scope = this;

                xhr.onload = function(){

                    const response = JSON.parse(this.responseText)

                    // check if response is a string
                    if(typeof response === 'string'){
                        if(response === "login"){
                            alert("Account created")
                            alert("Now you can Login")
                        }
                    }

                    // check if response is object
                    if(typeof response === 'object'){
                        if(response.status === "login_successful"){
                            alert("Login successful")
                            window.location.href = '/login'
                        }
                    }

                }

                xhr.open("post", e.target.action);
                xhr.send(form_data);
            },
            submit_form_new(e){
                e.preventDefault()
                this.stateLoading = true
                const form_data = new FormData(e.target);
                this.post_form_to_api(e,form_data)
            }
        }).mount()
    </script>
</head>
<body class="bg-white font-family-karla h-screen ">
<div class="container px-6 py-6 h-full">
    <div class="flex justify-center items-center flex-wrap h-full g-6 text-gray-800 ">
        <div class="h-screen md:w-8/12 lg:w-12/12 lg:ml-20">

            <nav class="container mx-auto p-4 pt-6 mb-4 flex items-center text-gray-700">
                <a class="text-2xl font-semibold cursor-pointer">Punch System</a>
                <div class="sm:hidden ml-auto">
                    <!-- Icon from https://icons8.com/ -->
                    <img
                            class="w-auto h-12 cursor-pointer"
                            src="https://img.icons8.com/dotty/80/000000/hamburger.png"
                    />
                </div>
                <div class="hidden sm:block ml-auto">
                    <a class="font-semibold mr-4 hover:underline cursor-pointer py-2 px-4 bg-gray-800 rounded text-lg font-semibold text-white cursor-pointer hover:bg-gray-900"
                    >Register</a
                    >
                    <a class="font-semibold mr-4 hover:underline cursor-pointer py-2 px-4 bg-gray-800 rounded text-lg font-semibold text-white cursor-pointer hover:bg-gray-900"
                    >Login</a
                    >



                </div>
            </nav>



            <div class="py-12">
                <div class="max-w-md mx-auto bg-gray-200 shadow-lg rounded-lg md:max-w-5xl">
                    <div class="md:flex ">
                        <div class="w-full p-4 px-5 py-5">
                            <div class="md:grid md:grid-cols-3 gap-2 ">

                                <form @submit="submit_form_new" enctype="multipart/form-data"
                                      action="/register"
                                      class="col-span-2 p-5"><h1 class="text-xl font-medium ">Create Account</h1>
                                    <div class="flex justify-center flex-col pt-3"><label
                                                class="block text-gray-500 text-sm font-bold mb-2">username</label>
                                        <input type="text"
                                               class="h-14 w-full pl-10 pr-20 rounded-lg z-0 focus:shadow focus:outline-none bg-gray-200 text-gray-500"
                                               placeholder="Enter Your Name" name="username" required=""></div>
                                    <div class="flex justify-center flex-col pt-3"><label
                                                class="block text-gray-500 text-sm font-bold mb-2">Phone</label> <input
                                                type="text"
                                                class="h-14 w-full pl-10 pr-20 rounded-lg z-0 focus:shadow focus:outline-none bg-gray-200 text-gray-500"
                                                placeholder="Enter Your Phone e.g: 0771234569" name="phone" required="">
                                    </div>
                                    <div class="flex justify-center flex-col pt-3"><label
                                                class="block text-gray-500 text-sm font-bold mb-2">Email</label> <input
                                                type="email"
                                                class="h-14 w-full pl-10 pr-20 rounded-lg z-0 focus:shadow focus:outline-none bg-gray-200 text-gray-500"
                                                placeholder="Enter Your Email e.g: ivilleinc@gmail" name="Email"
                                                required=""></div>
                                    <div class="flex justify-center flex-col pt-3"><label
                                                class="block text-gray-500 text-sm font-bold mb-2">Password</label>
                                        <input type="password"
                                               class="h-14 w-full pl-10 pr-20 rounded-lg z-0 focus:shadow focus:outline-none bg-gray-200 text-gray-500"
                                               placeholder="*****" name="password" required=""></div>
                                    <div class="flex justify-center flex-col pt-3"><label
                                                class="block text-gray-500 text-sm font-bold mb-2">Confirm
                                            Password</label> <input type="password"
                                                                    class="h-14 w-full pl-10 pr-20 rounded-lg z-0 focus:shadow focus:outline-none bg-gray-200 text-gray-500 text-gray-500"
                                                                    placeholder="*****" name="confirm_password"
                                                                    required=""></div>
                                    <div class="mb-6 form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none">

                                        <input type="radio" name="Gender" value="male">
                                        <label for="male"><span>Male</span></label>
                                        <input type="radio" name="Gender"  value="female">

                                        <label for="female"><span>Female</span></label>
                                    </div>
                                    <div class="flex justify-between items-center mt-6 pt-6 border-t"></div>
                                    <div class="flex justify-between items-center mt-6 pt-6 border-t">
                                        <button type="submit"
                                                class="h-12 w-full bg-blue-500 rounded focus:outline-none text-black hover:bg-blue-600">
                                            Submit
                                        </button>
                                    </div>
                                </form>



                                <div class="p-5 bg-gray-800 rounded overflow-visible"><span
                                            class="text-xl font-medium text-gray-100 block pb-3">Login</span> <span
                                            class="text-xs text-gray-400">Enter your credentials to continue</span>
                                    <form @submit="submit_form_new" enctype="multipart/form-data"
                                          action="/login_user"
                                          class="col-span-2 p-5">
                                        <main
                                                class="container mx-auto p-4 mt-12 bg-white flex flex-col items-center justify-center text-gray-700"
                                        >
                                            <div class=" sm:w-full md:w-full lg:w-full xl:w-full mb-4">
                                                <h1 class="text-4xl font-semibold ">Login here</h1>
                                            </div>
                                            <div class=" sm:w-full md:w-full lg:w-full xl:w-full mb-4">
                                                <input
                                                        class="mb-4 p-2 appearance-none block w-full bg-gray-200 placeholder-gray-900 rounded border focus:border-teal-500"
                                                        type="text"
                                                        name="Email" required=""
                                                        placeholder="Email"
                                                />
                                                <input
                                                        class="mb-4 p-2 appearance-none block w-full bg-gray-200 placeholder-gray-900 rounded border focus:border-teal-500"
                                                        type="password"
                                                        placeholder="*****" name="password" required=""
                                                />

                                                <div class="flex items-center">
                                                    <div class="flex items-center">
                                                        <input id="remember-me" type="checkbox" class="mt-1 mr-2" />
                                                        <label for="remember-me">Remember me!</label>
                                                    </div>

                                                </div>
                                            </div>
                                            <div class=" sm:w-full md:w-full lg:w-full xl:w-full mb-4">
                                                <a class="text-sm font-bold text-teal-500 hover:underline cursor-pointer"
                                                >Forgot your password?</a
                                                >
                                            </div>

                                        </main>

                                        <div class="flex justify-between items-center mt-6 pt-6 border-t">
                                            <button
                                                    class="ml-auto w-1/2 bg-gray-800 text-white p-2 rounded font-semibold hover:bg-gray-900"
                                                    type="submit"
                                            >
                                                Submit
                                            </button>

                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
</body>
</html>

