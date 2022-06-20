{extends file="layouts/default.tpl"}
{block name="head" }
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
{/block}
{block name ='body'}
{block name='section'}
{includes file ="user.php"}
<div class="container-fluid">
        <div class="row">
            <h2 class="page-title">{$user}
            <button class="ui positive button mini offsettop5 btn-add float-right"><i class="ui icon plus"></i>Add</button>
            <a href="#" class="ui blue button mini offsettop5 float-right"><i class="ui icon user"></i>Roles</a>
            </h2>
        </div>

        <div class="row">
            <div class="box box-success">
                <div class="box-body">
                    <form action="/" method="post" accept-charset="utf-8" class="ui small form form-filter" id="filterform">
                       
                        <div class="row">
                           <div class= "">
                              <label>{$id}</label>
                              <input type="number" name="id" placeholder="ID">
                           </div>
                           <div class= "">
                              <label>{$name}</label>
                              <input type="text" name="NAMES" placeholder="Enter your name">
                           </div>
                           <div class= "">
                              <label>{$role}</label>
                              <input type="text" name="ROLE" placeholder="enter your role">
                           </div>
                           <div class= "">
                              <label>{$email}</label>
                              <input type="text" name="EMAIL" placeholder="enter your email">
                           </div>
                           <div class= "">
                              <label>{$account}</label>
                              <input type="text" name="ACCOUNT TYPE" placeholder="choose your account type">
                           </div>
                           <div class= "">
                              <label>{$gender}</label>
                              <input type="radio" name="GENDER" id="male" value="male">
                              <label for="male">Male</label>

                              <label>{$gender}</label>
                              <input type="radio" name="GENDER" id="female" value="female">
                              <label for="female">Female</label>
                           </div>
                           <div class= "col">
                              <label>{$status}</label>
                              <input type="text" name="STATUS" placeholder="choose">
                           </div>
                           <div>
                               <button type="submit" name="submit">{$save}</button>
                           </div>

                        </div>
                    </form>
                   
                </div>
            </div>
        </div>
    </div>
{/block}
{/block}