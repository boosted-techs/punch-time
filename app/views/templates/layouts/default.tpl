{extends file="header.tpl"}

{block name="head" }
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
     <link rel="stylesheet" type="text/css" href="/assets/styles/style.css">
{/block}


{block name="body"}
{block name ="header"}
  <nav aria-label="menu nav" class="bg-white fixed w-full z-10 top-0 shadow">
        <div class="w-full container mx-auto flex flex-wrap items-center mt-0 pt-3 pb-3 md:pb-0">

            <div class="w-1/2 pl-2 md:pl-0">
                <a class="text-gray-900 text-base xl:text-xl no-underline hover:no-underline font-bold" href="#">
                    <i class="fas fa-sun text-pink-600 pr-3"></i> Administrator
                </a>
            </div>

            <div class="w-1/2 pr-0">
                <div class="flex relative inline-block float-right">

                    <div class="relative text-sm">
                        <button id="userButton" class="flex items-center focus:outline-none mr-3">
                            <img class="w-10/12 max-h-10 rounded-full mr-6" src="/assets/images/Angie.jpg" alt="User"> <span class="hidden md:inline-block">Hi, User </span>
                            <svg class="pl-2 h-2"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 129 129" xmlns:xlink="http://www.w3.org/1999/xlink" ">
                                <g>
                                    <path d="m121.3,34.6c-1.6-1.6-4.2-1.6-5.8,0l-51,51.1-51.1-51.1c-1.6-1.6-4.2-1.6-5.8,0-1.6,1.6-1.6,4.2 0,5.8l53.9,53.9c0.8,0.8 1.8,1.2 2.9,1.2 1,0 2.1-0.4 2.9-1.2l53.9-53.9c1.7-1.6 1.7-4.2 0.1-5.8z" />
                                </g>
                            </svg>
                        </button>
                        <div  class="bg-white rounded shadow-md mt-2 absolute mt-12 top-0 right-0 min-w-full overflow-auto z-30 invisible">
                            <ul class="list-reset">
                                <li><a href="#" class="px-4 py-2 block text-gray-900 hover:bg-gray-400 no-underline hover:no-underline">My account</a></li>
                                <li><a href="#" class="px-4 py-2 block text-gray-900 hover:bg-gray-400 no-underline hover:no-underline">Notifications</a></li>
                                <li>
                                    <hr class="border-t mx-2 border-gray-400">
                                </li>
                                <li><a href="#" class="px-4 py-2 block text-gray-900 hover:bg-gray-400 no-underline hover:no-underline">Logout</a></li>
                            </ul>
                        </div>
                    </div>


{*                    <div class="block lg:hidden pr-4">*}
{*                        <button id="nav-toggle" class="flex items-center px-3 py-2 border rounded text-gray-500 border-gray-600 hover:text-gray-900 hover:border-teal-500 appearance-none focus:outline-none">*}
{*                            <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">*}
{*                                <title>Menu</title>*}
{*                                <path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z" />*}
{*                            </svg>*}
{*                        </button>*}
{*                    </div>*}
                </div>
            </div>


                <div  class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block mt-2 lg:mt-0 bg-white z-20" id="nav-content">
                    <ul class="list-reset lg:flex flex-1 items-center px-4 md:px-0">
                        <li class="mr-6 my-2 md:my-0" >
                            <a href="/dash"
                             class="block py-1 md:py-3 pl-1 align-middle text-pink-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-pink-500"">
                            <i class="fas fa-tachometer-alt float-left mx-2  "></i><span class="pb-1 md:pb-0 text-sm">{$dashboard}</span>

                            </a>
                       </li>
                        <li class="mr-3 my-2 md:my-0">
                            <a href="/employ" 
                                class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-pink-500"">
                                <i class="fa fa-envelope pr-0 md:pr-3  "> {$employee}</i>
                                

                            </a>
                        </li>
                        <li class="mr-3 my-2 md:my-0">
                            <a href="/attend" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fas fa-chart-area pr-0 md:pr-3 ">
                                {$attendance}
                                </i>

                                
                            </a>
                        </li>
                        <li class="mr-3 my-2 md:my-0">
                            <a href="/schedule" 
                             class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-red-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 ">{$schedule}</i>
                                

                                
                            </a>
                        </li>

                        <li class="mr-3 my-2 md:my-0">
                            <a href="/leave"
                              class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3  ">{$leave}</i>
                                

                            </a>
                        </li>

                        <li class="mr-3 my-2 md:my-0">
                            <a href="/report" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 ">{$report}</i>
                                

                            </a>
                        </li>

                        <li class="mr-3 my-2 md:my-0">
                            <a href="/user" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 ">{$user}</i>
                                

                            </a>
                        </li>

                        <li class="mr-3 my-2 md:my-0">
                            <a href="/setting" class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-green-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3  ">{$setting}</i>

                            </a>
                        </li>
                    </ul>

                    <div class="relative pull-right pl-4 pr-4 md:pr-0">
                        <input type="search" placeholder="Search" class="w-full bg-gray-100 text-sm text-gray-800 transition border focus:outline-none focus:border-gray-700 rounded py-1 px-2 pl-10 appearance-none leading-normal">
                        <div class="absolute search-icon" style="top: 0.375rem;left: 1.75rem;">
                            <svg class="fill-current pointer-events-none text-gray-800 w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"></path>
                            </svg>
                        </div>
                    </div>
                </div>
        </div>
  </nav>

        {block name ="section"}
        <div class="container w-full mx-auto pt-20">
            <div id="main" class="w-full px-4 md:px-0 md:mt-8 mb-16 text-gray-800 leading-normal">

                <div class="flex flex-wrap">
                    
                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b bg-pink-300 border rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-pink-600"><i class="fas fa-users fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h2 class="font-bold uppercase text-gray-600">{$employee}</h2>
                                  <p class="font-bold text-3xl">
                                    <div class="p-5">
                                        <table  class="w-full p-5 text-gray-700" style="width: 100%;">
                                    
                                           <thead>
                                                <tr>
                                                   <th class="text-left text-blue-900">{$regular}</th>
                                                   <th class="text-left text-blue-900">{$intern}</th>
                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>20</td>
                                                    <td>30</td>  
                                                </tr>
                                                <tr>
                                            
                                                 </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-green-200 to-green-100 border-b-4 border-green-600 rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-green-600"><i class="fa fa-wallet fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <a href="/attend" class="block py-1 md:py-3 pl-1 align-middle text-white no-underline hover:text-white ">
                                     <h2 class="font-bold uppercase text-gray-600">{$attendance}</h2>
                                     
                                    </a>
                                    
                                   <p class="font-bold text-3xl">
                                      <div class="pt-5">
                                        <table  class="w-full p-5 text-gray-700" style="width: 100%;">
                                    
                                           <thead>
                                                <tr>
                                                   <th class="text-left text-blue-900">{$online}</th>
                                                   <th class="text-left text-blue-900">{$offline}</th>
                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>20</td>
                                                    <td>30</td>  
                                                </tr>
                                                <tr>
                                            
                                                 </tr>
                                            </tbody>
                                        </table>
                                     </div>
                                   </p>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-blue-200 to-blue-100 border-b-4 border-blue-500 rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-blue-600"><i class="fas fa-server fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h2 class="font-bold uppercase text-gray-600">{$leave}</h2>
                                    <p class="font-bold text-3xl"><div class="p-5">
                                      <div>
                                        <table  class="w-full p-5 text-gray-700" style="width: 100%;">
                                    
                                           <thead>
                                                <tr>
                                                   <th class="text-left text-blue-900">{$approved}</th>
                                                   <th class="text-left text-blue-900">{$pending}</th>
                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>20</td>
                                                    <td>30</td>  
                                                </tr>
                                                <tr>
                                            
                                                 </tr>
                                            </tbody>
                                        </table>
                                     </div>
                                    </p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    </div>
                    

                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-yellow-200 to-yellow-100 border-b-4 border-yellow-600 rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-yellow-600"><i class="fas fa-user-plus fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h2 class="font-bold uppercase text-gray-600">{$new}</h2>
                                    <p class="font-bold text-3xl">2 <span class="text-yellow-600"><i class="fas fa-caret-up"></i></span></p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    
                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-indigo-200 to-indigo-100 border-b-4 border-indigo-500 rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-indigo-600"><i class="fas fa-tasks fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h2 class="font-bold uppercase text-gray-600">{$tasks}</h2>
                                    <p class="font-bold text-3xl">7 tasks</p>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-red-200 to-red-100 border-b-4 border-red-500 rounded-lg shadow-xl p-5">
                            <div class="flex flex-row items-center">
                                <div class="flex-shrink pr-4">
                                    <div class="rounded-full p-5 bg-red-600"><i class="fas fa-inbox fa-2x fa-inverse"></i></div>
                                </div>
                                <div class="flex-1 text-right md:text-center">
                                    <h2 class="font-bold uppercase text-gray-600">{$issue}</h2>
                                    <p class="font-bold text-3xl">3 <span class="text-red-500"><i class="fas fa-caret-up"></i></span></p>
                                </div>
                            </div>
                        </div>
                        
                    </div>

                    <div class="flex flex-col md:flex-row"></div>
                </div>                   
            </div>

         {/block}
        </div>
    </div>


{/block}
{/block}




