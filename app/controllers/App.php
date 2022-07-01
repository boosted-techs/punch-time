<?php

class App extends Controller
{
    function __construct()
    {
        parent::__construct();
    }

    function index() {
        $this->load_view("app");
    }

}