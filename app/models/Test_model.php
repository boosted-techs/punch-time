<?php

class Test_model extends Model
{
    function __construct()
    {
        parent::__construct();
    }

    function save_user($data = false) {
        $names = $this->inputs->post("names");
        $email = $this->inputs->post("email");
        $password = $this->inputs->post("password");

//        echo $password;
//        if (strlen($password) < 8)
//            echo "Password must be 8 characters";
        $this->db->insert("users", ["name" => $names,
            "email" => $email, "password" => $password, "date_signin" => date("Y-m-d")]);
    }

    function get_user_information() {
        $this->db->orderBy("id", "desc");
        return $this->db->get("users", null, "name, id, date_signin, email, password");
    }

}