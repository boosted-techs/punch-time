{extends file="layouts/default.tpl"}
{block name="head" }
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
     <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
{/block}
{block name="body"}

    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light ">
           <div class="container">

                <form action="" method="post">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        
                        <ul class="navbar-nav mr-auto">

                        </ul>

    
                        <ul class="nav justify-content-end ">
                                <li class="nav-item d-flex">
                                    <a class="nav-link" href="/">{$register}</a>
                                </li>
                                
                            
                                <li class="nav-item dflex dropdown">
                                    <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                        {$login} <span class="caret"></span>
                                    </a>
                                
                                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                        <a class="nav-link dropdown-item" href="/"">
                                                {$logout}
                                        </a>
                                    </div>
                                </li>
                        </ul>
                    </div>
                </form>
            </div>
        </nav>
    </div>         

{/block}