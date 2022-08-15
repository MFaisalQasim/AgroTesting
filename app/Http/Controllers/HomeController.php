<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    
    public function __construct()
    {
        // return ('her');
        $this->middleware('guest');
    }

    public function index()
    {
        // return ('her');
        return view('/');
    }
    
    
}
