<?php
namespace App\Controllers;
class Login extends BaseController
{
    
    function __construct()
    {
        parent::__construct();
        //create a controller instance
        $this->middleware('guest')->except('logout');
    }

    protected function authenticated(Request $request) 
    {
        $type = \Auth::user()->acc_type;
        if ($type == 1) 
        {
            return redirect('personal/dashboard');
        } 
        if($type == 2) 
        {
            return redirect('dashboard');
        } 
        if($type == null || $type == 0) {
            return redirect('login');
        }
    }

    /**
     * Include status as credential.
     *
    */
    protected function credentials(\Illuminate\Http\Request $request) 
    {
         return ['username' => $request->{$this->username()}, 'email' => $request->{$this->username()}, 'password' => $request->password, 'status' => 1];
    }

    
    /**
     * Auth logout user.
     *
     */
    public function logout() 
    {
        Auth::logout();
        return redirect('login'); 
    }


    // function index() {
    //     $this->load_view("home");
    // }

}
?>