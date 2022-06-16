{extends file="header.tpl"}

{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
     <link rel="stylesheet" type="text/css" href="{{ asset('/assets/css/style.css') }}">
{/block}


{block name="body"}

    <div class="wrapper">
        
        <div class="side-navbar active-nav d-flex justify-content-between flex-wrap flex-column" id="sidebar">
            
            <ul class="nav flex-column  w-100">
                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon sliders horizontal"></i>
                        <p>{$dashboard}</p>
                    </a>
                </li>

                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon users"></i>
                        <p>{$employee}</p>
                    </a>
                </li>
                    
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon clock outline"></i>
                        <p>{$attendance}</p>
                    </a>
                </li>

                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon calendar alternate outline"></i>
                        <p>{$schedule}</p>
                    </a>
                </li>
                
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon calendar plus outline"></i>
                        <p>{$leave}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon chart bar outline"></i>
                        <p>{$report}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon user circle outline"></i>
                        <p>{$user}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon cog"></i>
                        <p>{$setting}</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

{/block}


