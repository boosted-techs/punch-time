<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}
@include 'database.php';

class Users_model extends Model {
    function __construct() {
        parent::__construct();
    }


    function add_user() {
       

        if(isset($_POST['submit'])){
           unset($_POST['submit']);
            $username = $this->db->insert ('employee', ($_POST));
            $email = $this->db->insert ('employee', ($_POST));
            $pasword = $this->db->insert ('employee', ($_POST));
            $usertype= $this->db->insert ('employee', ($_POST));
            

        };



        // print_r($_GET);
       

        //$names = $this->inputs->get("names");
       // $name = $this->inputs->get->name;

       // $this->session->set_user_data("aaa", 444);
        //$this->session->data("aa");
        //
      //$this->db->insert  ("employee", [$names]);
        //  $this->db->insert ("", []);
        // echo $name;

        //  $names = $this->db->insert ($this->dbTable, $sqlData);
        // if (!empty ($this->primaryKey) && empty ($this->data[$this->primaryKey]))
        //     $this->data[$this->primaryKey] = $names;
        // $this->isNew = false;
        // $this->toSkip = array();
        // return $names;
    }
}