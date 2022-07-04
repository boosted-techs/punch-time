<?php

class Test extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Test_model");
    }

    function index() {
        $this->smarty->assign("data", $this->model->Test_model->get_user_information());
       $this->smarty->display("cart.tpl");
    }

    function save() {
        $response = $this->model->Test_model->save_user();
        $this->redirect("/");
    }

}