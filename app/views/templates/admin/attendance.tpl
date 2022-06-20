{extends file="layouts/default.tpl"}
{block name="head" }
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.min.js" integrity="sha256-XF29CBwU1MWLaGEnsELogU6Y6rcc5nCkhhx89nFMIDQ=" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="/assets/css/style.css">
{/block}
{block name ='body'}
    <div class="container-fluid">
        <div class="row">
            <h2 class="page-title">{$attendances}
               
                <button class="ui primary button mini offsettop5 btn-add float-right"><i class="ui icon plus circle"></i>{$manual}</button>
            </h2>
        </div>  

        <div class="row">
            <div class="box box-success">
                <div class="box-body reportstable">
                    <form action="/" method="post" accept-charset="utf-8" class="ui small form form-filter" id="filterform">
                       
                        <div class="inline three fields">
                            <div class="two wide field">
                                <input id="datefrom" type="text" name="datefrom" value="" placeholder="Start Date" class="airdatepicker">
                                <i class="ui icon calendar alternate outline calendar-icon"></i>
                            </div>

                            <div class="two wide field">
                                <input id="dateto" type="text" name="dateto" value="" placeholder="End Date" class="airdatepicker">
                                <i class="ui icon calendar alternate outline calendar-icon"></i>
                            </div>

                            <input type="hidden" name="emp_id" value="">
                            <button id="btnfilter" class="ui icon button positive small inline-button"><i class="ui icon filter alternate">Save</i> </button>
                        </div>
                    </form>

                    <table >
                        <thead>
                            <tr>
                                <th>{$date}</th>
                                <th>{$employee}</th>
                                <th>{$timein}</th>
                                <th>{$timeout}</th>
                                <th>{$totalhours}</th>
                                <th>{$status}</th>
    
                            </tr>
                        </thead>
                        
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>
{/block}
