<?php

class Dashboard extends Controller
{
    function __construct()
    {
        parent::__construct();
        $this->model("Accounts_model");
    }

    /**
     * @throws SmartyException
     */
    function index() {
        $this->model->Accounts_model->is_logged_in();
        $this->smarty->display("home.tpl");
    }

    function logout(){
        $this->session->destroy();
        $this->redirect("/");
    }
}