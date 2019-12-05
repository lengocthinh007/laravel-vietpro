<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\category;
use App\Models\Binhluan;

class frontendcontroller extends Controller
{
     public function gethome(){
     	$data['featured'] = Product::where('prod_featured',1)->orderBy('prod_id','desc')->take(8)->get();
     	$data['new'] = Product::orderBy('prod_id','desc')->take(8)->get();
     	return view('frontend.home',$data);
     }
     public function getdetail($id){

     	   $data['item'] = Product::find($id);
           $data['comments'] = Binhluan::where('com_product',$id)->get();
     	  return view('frontend.details',$data);
     }
       public function getcate($id){
        $data['catename'] = category::find($id);
     	$data['items'] = Product::where('prod_cate',$id)->orderBy('prod_id','desc')->paginate(8);

     	return view('frontend.category',$data);
       }
         public function postcomment(Request $request,$id){
            $comment = new Binhluan;
            $comment->com_name = $request->name;
             $comment->com_mail = $request->email;
              $comment->com_content = $request->content;
               $comment->com_product = $id;
               $comment->save();
               return back();

         }
          public function getsearch(Request $request){
            $result = $request->text;
            $data['key'] = $result;
            $result = str_replace(' ','%', $result);
            $data['items'] = Product::where('prod_name','like','%'.$result.'%')->get();
            return view('frontend.search',$data);
            
          }
       
}
