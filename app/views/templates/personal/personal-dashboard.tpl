{extends file="layouts/personal.tpl"}
{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
{/block}

{block name ='body'}
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <h2 class="page-title">{$dashboard}</h2>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="info-box">
                <span class="info-box-icon bg-green"><i class="ui icon clock outline"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text"><span class="uppercase">{$current}</span></span>
                    <div class="progress-group">
                        <div class="progress sm">
                            <div class="progress-bar progress-bar-green" style="width: 100%"></div>
                        </div>
                        <div class="stats_d">
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td>{$late}</td>
                                        
                                    </tr>
                                    <tr>
                                        <td>{$early}</td>
                                       
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="ui icon user circle"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text">{$present}</span>
                    <div class="progress-group">
                        <div class="progress sm">
                            <div class="progress-bar progress-bar-aqua" style="width: 100%"></div>
                        </div>
                        <div class="stats_d">
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td>{$time}</td>
                                        <td>
                                            <span class="bolder">
                                                
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>{$rest}</td>
                                        <td><span class="bolder"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="info-box">
                <span class="info-box-icon bg-orange"><i class="ui icon home"></i></span>
                <div class="info-box-content">
                    <span class="info-box-text uppercase">{$Leave}</span>
                    <div class="progress-group">
                        <div class="progress sm">
                            <div class="progress-bar progress-bar-orange" style="width: 100%"></div>
                        </div>
                        <div class="stats_d">
                            <table style="width: 100%;">
                                <tbody>
                                    <tr>
                                        <td>{$approved} </td>
                                        <td><span class="bolder"></span></td>
                                    </tr>
                                    <tr>
                                        <td>{$pending} </td>
                                        <td><span class="bolder"></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">

        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">{$recent}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-striped nobordertop">
                        <thead>
                            <tr>
                                <th class="text-left">{$date}</th>
                                <th class="text-left">{$time}</th>
                                <th class="text-left">{$desc}</th>
                            </tr>
                        </thead>
                        <tbody>
                           
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">{$previous}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-striped nobordertop">
                        <thead>
                            <tr>
                                <th class="text-left">{$time}</th>
                                <th class="text-left">{$from}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="box box-success">
                <div class="box-header with-border">
                    <h3 class="box-title">{$leaves}</h3>
                    <div class="box-tools pull-right">
                        <button type="button" class="btn btn-box-tool" data-widget="remove"><i
                                class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-striped nobordertop">
                        <thead>
                            <tr>
                                <th class="text-left">{$desc}</th>
                                <th class="text-left">{$date}</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>
{/block}