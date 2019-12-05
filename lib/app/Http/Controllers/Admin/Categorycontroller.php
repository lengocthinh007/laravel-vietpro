<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\category;
use App\Http\Requests\caterequest;
use App\Http\Requests\editcaterequest;
class Categorycontroller extends Controller
{
    public function getcategory(){
    	$data['cate']=category::all();
   		return view('backend.category',$data);
   	}
   	public function postcategory(caterequest $request){
   		$category = new category;
   		$category->cate_name = $request->name;
   		$category->cate_slug = str_slug($request->name);
   		$category->save();
   		return back();
   	}
    public function getedit($id){
        $data['cate']=category::find($id);
      return view('backend.editcategory',$data);
    }
      public function postedit(editcaterequest $request,$id){
        $category = category::find($id);
      $category->cate_name = $request->name;
      $category->cate_slug = str_slug($request->name);
      $category->save();
      return redirect()->intended('admin/category');
      }
       public function getdelete($id){
        category::destroy($id);
        return back();

       }
}
