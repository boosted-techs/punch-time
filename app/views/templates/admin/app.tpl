{extends file="layouts/default.tpl"}
{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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