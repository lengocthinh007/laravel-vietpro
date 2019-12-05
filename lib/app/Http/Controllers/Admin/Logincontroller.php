<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
class Logincontroller extends Controller
{
   	public function getLogin(){
   		return view('backend.login');
   	}
   	public function postLogin(Request $request){
   		$arr = ['email'=>$request->email,'password'=>$request->password];
   		if($request->remember='Remember Me'){
   			$remember=true;
   		}
   		else{
   			$remember=false;
   		}
   		if(Auth::attempt($arr,$remember)){
   			return redirect()->intended('admin/home');
   		}else{
   			return back()->withInput()->with('error','Tài khoản hoặc mật khẩu không đúng');
   		}
   	}
}
