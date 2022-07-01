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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/assets/styles/style.css">
    
    <script>
      import Index from './views/Index.vue'
     </script>
     
</head>
<body class="bg-white font-family-karla h-screen">
  <div class="container px-6 py-12 h-full">
    <div class="flex justify-center items-center flex-wrap h-full g-6 text-gray-800">
      <div class="md:w-8/12 lg:w-6/12 mb-12 md:mb-0">
        
    
        
        <div class="h-screen md:w-8/12 lg:w-5/12 lg:ml-20">
        <div>
        <h3>Admin page</h3>
        <a href="/log">Login</a>
        <a href="#">Sign Up</a>
        
        </div>
      </div>

      

</body>
</html>












     