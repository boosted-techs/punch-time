<?php
if ( !defined('APPLICATION_LOADED') || !APPLICATION_LOADED ) {
    echo json_encode(array("status" => "fail", "code" => "503", "message" => "Invalid request"));
}


class Users_model extends Model
{
    function __construct()
    {
        parent::__construct();
    }


    function add_user($data= false)
    {
        $id = $this->inputs->post("id");
        $fname = $this->inputs->post("fname");
        $lname = $this->inputs->post("lname");
        $email = $this->inputs->post("email");
        $role = $this->inputs->post("role");
        $account = $this->inputs->post("account");
        $gender = $this->inputs->post("gender");
        $date = $this->inputs->post("date");

        $this->db->insert("employee", ["id"=> $id,"fname" => $fname,"lname" => $lname,
            "email" => $email, "role" => $role, "account" => $account, "gender" => $gender, "date" => date("Y-m-d")]);

    }
    function get_user(){
        $this->db->orderBy("id","asc");
        return $this->db->get("employee",null,"id,fname,lname,email, gender,role, account, date");
    }



}