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

if ( !defined('APPLICATION_LOADED') || ! APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
?>
<!DOCTYPE html>
<head>
    <!-- Basic Page Needs -->
    <meta name="refresh" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Log  in</title>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/vue@5.0.6/dist/vue.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <script src="assets/js/login.js"></script>
     <link rel="stylesheet" type="text/css" href="/assets/styles/style.css">
     
</head>
<body class="bg-gray font-family-karla h-screen">
  <div class="container px-6 py-12 h-full">
    <div class="flex justify-center items-center"><h1>Login Form</h1></div>
    
    <br><br>
    
    <div class="flex justify-center items-center flex-wrap h-full g-6 text-gray-800">
      
      <div class="md:w-8/12 lg:w-6/12 mb-12 md:mb-0">
        
        
        
        <div class="bg-gray h-screen md:w-8/12 lg:w-5/12 lg:ml-20">
          <div id="login">
            <form action="/login" method="post">
                <!-- username input -->
                <div class="mb-6">
                  <input
                    type="text"
                    name = "username"
                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                    v-model="logDetails.username"
                    placeholder="username"
                    v-on:keyup="keymonitor"
                    required
                  />
                </div>
                <!-- Email input -->
                <div class="mb-6">
                  <input
                    type="text"
                    name="email"
                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                    v-model="logDetails.email"
                    placeholder="Email address"
                    v-on:keyup="keymonitor"
                    required
                  />
                </div>

                <!-- Password input -->
                <div class="mb-6">
                  <input
                    type="password"
                    name="password"
                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                    v-model="logDetails.password"
                    placeholder="Password"
                    v-on:keyup="keymonitor"
                    required
                  />
                </div>
                <!-- usertype input -->
                <div class="mb-6">
                  <input
                    type="text"
                    name="usertype"
                    class="form-control block w-full px-4 py-2 text-xl font-normal text-gray-700 bg-white bg-clip-padding border border-solid border-gray-300 rounded transition ease-in-out m-0 focus:text-gray-700 focus:bg-white focus:border-blue-600 focus:outline-none"
                    v-model="logDetails.usertype"
                    placeholder="usertype"
                    v-on:keyup="keymonitor"
                    required
                  />
                </div>
                

                <div class="flex justify-between items-center mb-6">
                  <div class="form-group form-check">
                    <input
                      type="checkbox"
                      class="form-check-input appearance-none h-4 w-4 border border-gray-300 rounded-sm bg-white checked:bg-blue-600 checked:border-blue-600 focus:outline-none transition duration-200 mt-1 align-top bg-no-repeat bg-center bg-contain float-left mr-2 cursor-pointer"
                      id="exampleCheck3"
                      checked
                    />
                    <label class="form-check-label inline-block text-gray-800" for="exampleCheck2"
                      >Remember me</label
                    >
                  </div>
                  <a
                    href="#!"
                    class="text-blue-600 hover:text-blue-700 focus:text-blue-700 active:text-blue-800 duration-200 transition ease-in-out"
                    >Forgot password?</a
                  >
                </div>

                <!-- Submit button -->
                <button
                  type="submit"
                  name="submit"
                  class="inline-block px-7 py-3 bg-blue-600  font-medium text-sm leading-snug uppercase rounded shadow-md hover:bg-blue-700 hover:shadow-lg focus:bg-blue-700 focus:shadow-lg focus:outline-none focus:ring-0 active:bg-blue-800 active:shadow-lg transition duration-150 ease-in-out w-full"
                  data-mdb-ripple="true"
                  data-mdb-ripple-color="light"
                >
                  Login
                </button>
              
                <div
                  class="flex items-center my-4 before:flex-1 before:border-t before:border-gray-300 before:mt-0.5 after:flex-1 after:border-t after:border-gray-300 after:mt-0.5"
                >
                  <p class="text-center font-semibold mx-4 mb-0">Dont have an account?<a href="/" > Register now</a></p>
                </div>
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
      

</body>
</html>












     