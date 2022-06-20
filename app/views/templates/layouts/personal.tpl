{extends file="header.tpl"}

{block name="head" }
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
     <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
{/block}

{block  name="body"}
 <div class="wrapper">
        
        <nav id="sidebar" class="active">
            <div class="sidebar-header bg-lightblue">
                <div class="logo">
                <a href="/" class="simple-text">
                    
                </a>
                </div>
            </div>

            <ul class="nav flex-column  w-100">
                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon sliders horizontal"></i>
                        <p>{$dashboard}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon clock outline"></i>
                        <p>{$attend}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon calendar alternate outline"></i>
                        <p>{$schedules}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/"class="nav-link h3  my-2">
                        <i class="ui icon calendar plus outline"></i>
                        <p>{$leave}</p>
                    </a>
                </li>
                <li class="nav-link">
                    <a href="/" class="nav-link h3  my-2">
                        <i class="ui icon cog"></i>
                        <p>{$setting}</p>
                    </a>
                </li>
            </ul>
        </nav>

        <div id="body" class="active">
            <nav class="navbar navbar-expand-lg navbar-light bg-lightblue">
                <div class="container-fluid">

                    <button type="button" id="slidesidebar" class="ui icon button btn-light-outline">
                        <i class="ui icon bars"></i> <span class="toggle-sidebar-menu">{$menu}</span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="nav navbar-nav ml-auto navmenu">
                            <li class="nav-item">
                                <div class="ui pointing link dropdown item" tabindex="0">
                                    <i class="ui icon flag"></i> <span class="navmenutext uppercase"></span>
                                    <i class="dropdown icon"></i>
                                    
                              </div>
                            </li>
                            <li class="nav-item">
                                <div class="ui pointing link dropdown item" tabindex="0">
                                    <i class="ui icon linkify"></i> <span class="navmenutext uppercase">{$quick}</span>
                                    <i class="dropdown icon"></i>
                                    <div class="menu" tabindex="-1">
                                      <a href="/" target="_blank" class="item"><i class="ui icon clock outline"></i> {$clock}</a>
                                      <div class="divider"></div>
                                      <a href="/" target="_blank" class="item"><i class="ui icon user outline"></i> {$profile}</a>
                                    </div>
                              </div>
                            </li>

                        
                            <li class="nav-item">
                               <div class="ui pointing link dropdown item" tabindex="0">
                                    <i class="ui icon user outline"></i><span class="navmenutext"></span>
                                    <i class="dropdown icon"></i>
                                    <div class="menu" tabindex="-1">
                                      <a href="/" class="item"><i class="ui icon user"></i> {$update}</a>
                                      <a href="/" class="item"><i class="ui icon lock"></i> {$change}</a>
                                      <div class="divider"></div>
                                      <a href="/" class="item"><i class="ui icon power"></i> {$logout}</a>
                                    </div>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
{/block}