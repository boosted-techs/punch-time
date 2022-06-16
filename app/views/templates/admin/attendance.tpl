{extends file="layouts/default.tpl"}
{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
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
