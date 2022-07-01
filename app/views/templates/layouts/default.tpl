{extends file="header.tpl"}

{block name="head" }
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
     <link rel="stylesheet" type="text/css" href="/assets/styles/style.css">
{/block}


{block name="body"}
{block name ="header"}
  <nav aria-label="menu nav" class="bg-gray-800 pt-2 md:pt-1 pb-1 px-1 mt-0 h-auto fixed w-full z-20 top-0">

        <div class="flex flex-wrap items-center">
            <div class="flex flex-shrink md:w-1/3 justify-center md:justify-start text-white">
                <a href="#" aria-label="Home">
                    <span class="text-xl pl-2"><i class="em em-grinning"></i></span>
                </a>
            </div>

            <div class="flex flex-1 md:w-1/3 justify-center md:justify-start text-white px-2">
                <span class="relative w-full">
                    <input aria-label="search" type="search" id="search" placeholder="Search" class="w-full bg-gray-900 text-white transition border border-transparent focus:outline-none focus:border-gray-400 rounded py-3 px-2 pl-10 appearance-none leading-normal">
                    <div class="absolute search-icon" style="top: 1rem; left: .8rem;">
                        <svg class="fill-current pointer-events-none text-white w-4 h-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                            <path d="M12.9 14.32a8 8 0 1 1 1.41-1.41l5.35 5.33-1.42 1.42-5.33-5.34zM8 14A6 6 0 1 0 8 2a6 6 0 0 0 0 12z"></path>
                        </svg>
                    </div>
                </span>
            </div>

            <div class="flex w-full pt-2 content-center justify-between md:w-1/3 md:justify-end">
                <ul class="list-reset flex justify-between flex-1 md:flex-none items-center">
                    <li class="flex-1 md:flex-none md:mr-3">
                        <a class="inline-block py-2 px-4 text-white no-underline" href="#">{$register}</a>
                    </li>
                    <li class="flex-1 md:flex-none md:mr-3">
                        <a class="inline-block text-gray-400 no-underline hover:text-gray-200 hover:text-underline py-2 px-4" href="#">{$link}</a>
                    </li>
                    <li class="flex-1 md:flex-none md:mr-3">
                        <div class="relative inline-block">
                            <button onclick="toggleDD('myDropdown')" class="drop-button text-white py-2 px-2"> <span class="pr-2"><i class="em em-robot_face"></i></span> Hi, User <svg class="h-3 fill-current inline" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                <path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z" /></svg></button>
                            <div id="myDropdown" class="dropdownlist absolute bg-gray-800 text-white right-0 mt-3 p-3 overflow-auto z-30 invisible">
                                <input type="text" class="drop-search p-2 text-gray-600" placeholder="Search.." id="myInput" onkeyup="filterDD('myDropdown','myInput')">
                                <a href="#" class="p-2 hover:bg-gray-800 text-white text-sm no-underline hover:no-underline block"><i class="fa fa-user fa-fw"></i> {$profile}</a>
                                <a href="#" class="p-2 hover:bg-gray-800 text-white text-sm no-underline hover:no-underline block"><i class="fa fa-cog fa-fw"></i> {$setting}</a>
                                <div class="border border-gray-800"></div>
                                <a href="#" class="p-2 hover:bg-gray-800 text-white text-sm no-underline hover:no-underline block"><i class="fas fa-sign-out-alt fa-fw"></i>{$logout}</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

    </nav>

 {block name="main"}
 

    <div class="flex flex-col md:flex-row">
        <aside id="sidebar" class="bg-side-nav w-1/2 md:w-1/6 lg:w-1/6 border-r border-side-nav hidden md:block lg:block">
            <div class="w-full flex-grow lg:flex lg:items-center lg:w-auto hidden lg:block mt-2 lg:mt-0 bg-white z-20" id="nav-content">

                <div class="md:mt-12 md:w-48 md:fixed md:left-0 md:top-0 content-center md:content-start text-left justify-between">
                    <ul class="list-reset flex flex-row md:flex-col pt-3 md:py-3 px-1 md:px-2 text-center md:text-left">
                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/dash"
                             class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fas fa-tachometer-alt float-left mx-2 text-blue-600 ">{$dashboard}</i>
                                
                                <span><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                       </li>
                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/employ" 
                                class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-envelope pr-0 md:pr-3 text-blue-600 "> {$employee}</i>
                                
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                        </li>
                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/attend" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fas fa-chart-area pr-0 md:pr-3 text-blue-600">
                                {$attendance}
                                </i>
                                 <span ><i class="fas fa-angle-right float-right"></i></span>
                                
                            </a>
                        </li>
                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/schedule" 
                             class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 text-blue-600 ">{$schedule}</i>
                                
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                                
                            </a>
                        </li>

                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/leave"
                              class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 text-blue-600 ">{$leave}</i>
                                
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                        </li>

                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/report" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 text-blue-600 ">{$report}</i>
                                
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                        </li>

                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/user" 
                            class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 text-blue-600 ">{$user}</i>
                                
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                        </li>

                        <li class=" w-full h-full py-3 px-2 border-b border-light-border bg-white">
                            <a href="/setting" class="block py-1 md:py-3 pl-1 align-middle text-gray-500 no-underline hover:text-gray-900 border-b-2 border-white hover:border-purple-500"">
                                <i class="fa fa-wallet pr-0 md:pr-3 text-blue-600 ">{$setting}</i>
                                <span ><i class="fas fa-angle-right float-right"></i></span>
                            </a>
                        </li>
                    </ul>
                </div>


            </div>
        </aside>
        {block name ="section"}
            <div id="main" class="main-content flex-1 bg-gray-100 mt-12 md:mt-2 pb-24 md:pb-5">

                <div class="bg-gray-800 pt-10">
                    <div class="rounded-tl-3xl bg-gradient-to-r from-blue-900 to-gray-800 p-4 shadow text-2xl text-white">
                        <h1 class="font-bold pl-2">{$dashboard}</h1>
                    </div>
                </div>

                <div class="flex flex-wrap">
                    
                    <div class="w-full md:w-1/2 xl:w-1/3 p-6">
                        
                        <div class="bg-gradient-to-b from-pink-200 to-pink-100 border-b-4 border-pink-500 rounded-lg shadow-xl p-5">
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

{/block}   
{/block}    
{/block}




