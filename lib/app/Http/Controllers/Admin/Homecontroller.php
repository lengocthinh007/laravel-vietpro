<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;

class Homecontroller extends Controller
{
    public function gethome(){
   		return view('backend.index');
   	}
   	 public function getlogout(){
   	 	Auth::logout();
   	 	return redirect()->intended('login');
   	 }
}
