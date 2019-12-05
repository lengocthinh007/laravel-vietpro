<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use  App\Http\Requests\addproductrequest;
use App\Models\Product;
use App\Models\category;
use DB;
class Productcontroller extends Controller
{
    public function getProduct(){
    	$data['product'] = DB::table('product')->join('cate','product.prod_cate','=','cate.cate_id')->orderBy('Prod_id','desc')->get();
    		return view('backend.product',$data);
    }
    public function getadd(){
    	$data['cate'] = category::all();
    	return view('backend.addproduct',$data);
    }
     public function postadd(addproductrequest $request){
     	
     	$product = new Product;
     	$product->prod_name = $request->name;
     	$product->prod_slug = str_slug($request->name);
     	
     	$product->prod_accessories = $request->accessories;
     	$product->prod_price = $request->price;
     	$product->prod_warranty = $request->warranty;
     	$product->prod_promotion = $request->promotion;
     	$product->prod_condition = $request->condition;
     	$product->prod_status = $request->status;
     	$product->prod_description = $request->description;
     	$product->prod_cate = $request->cate;
     	$product->prod_featured = $request->featured;
        if($request->hasFile('img'))
        {
            $file = $request->File('img');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return back()->with('loi','Bạn chỉ được chọn file có đuôi jpg,png,jpeg');
            }
            $filename = $file->getClientOriginalName();
            $Hinh = str_random(4)."_".$filename;
            while(file_exists("Hinh/".$Hinh))
            {
                $Hinh = str_random(4)."_".$filename;
            }
            $file->move("public/Hinh",$Hinh);
            $product->prod_img = $Hinh;
        }
        else
        {
            // $product->prod_img = "";
            return redirect()->intended('admin/product/add')->with('loi','Bạn chưa chọn ảnh');
        }
     	$product->save();
     	
     	return back();

    }
    public function getedit($id){
        $data['pro'] = product::find($id);
        $data['cate'] = category::all();
    	return view('backend.editproduct',$data);
    }
     public function postedit(Request $request,$id){
        $product = Product::find($id);
        $this->validate($request,
            [
                    'name'=>'unique:product,prod_name,'.$product->prod_id.',prod_id'
            ],
            [
                    'name.unique'=>'Tên sản phẩm đã bị trùng'
            ]);
        $arr['prod_name'] = $request->name;
         $arr['prod_slug'] =str_slug($request->name);
         $arr['prod_accessories'] =  $request->accessories;
         $arr['prod_price'] = $request->price;
         $arr['prod_warranty'] = $request->warranty;
         $arr['prod_promotion'] = $request->promotion;
         $arr['prod_condition'] = $request->condition;
         $arr['prod_status'] = $request->status;
         $arr['prod_description'] = $request->description;
          $arr['prod_cate'] =$request->cate;
         $arr['prod_featured'] = $request->featured;
         // if($request->hasFile('img')){
         //    $img=$request->img->getClientOriginalName();
         //    $arr['prod_img'] = $img;
         //    $request->img->storeAs('avatar',$img);
         // }
         if($request->hasFile('img'))
        {
            $file = $request->File('img');
            $duoi = $file->getClientOriginalExtension();
            if($duoi != 'jpg' && $duoi != 'png' && $duoi != 'jpeg')
            {
                return back()->with('loi','Bạn chỉ được chọn file có đuôi jpg,png,jpeg');
            }
            $filename = $file->getClientOriginalName();
            $Hinh = str_random(4)."_".$filename;
            while(file_exists("Hinh/".$Hinh))
            {
                $Hinh = str_random(4)."_".$filename;
            }
            $file->move("public/Hinh",$Hinh);
            unlink("public/Hinh/".$product->prod_img);
            $arr['prod_img'] = $Hinh;
        }
         $product->update($arr);
         return redirect('admin/product');
     }
     public function getdelete($id){
        $product = Product::find($id);
        $product->delete();
        if($product->prod_img!=""){
        unlink("public/Hinh/".$product->prod_img);
        }
        return back();
    }
}
