<?php

namespace App\helpers{
    class smartyTemplate extends \Smarty{
        function __construct(){
            parent::__construct();
            $smarty_path = dirname(dirname(__DIR__)). DIRECTORY_SEPARATOR.'views'.DIRECTORY_SEPARATOR;
            $this->setTemplateDir($smarty_path.'templates');
            $this->setCompileDir( $smarty_path.'template_c');
            $this->setCacheDir($smarty_path.'cache');
            $this->setConfigDir($smarty_path.'config');
        }
        

    }
}
?>