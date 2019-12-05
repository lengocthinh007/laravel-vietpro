<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Cart;
use App\Models\Product;
use Mail;

class Cartcontroller extends Controller
{
     public function getcart($id){
     	$product = Product::find($id);
     	Cart::add(['id' => $id, 'name' => $product->prod_name, 'qty' => 1, 'price' => $product->prod_price, 'weight' => 550, 'options' => ['img' => $product->prod_img]]);
     	return redirect('cart/show');
     }
      public function getshow(){
      	$data['total'] = Cart::total();
      	$data['items'] = Cart::content();
      	return view('frontend.cart',$data);
      }
       public function getdelete($id){
       	if($id=='all')
       	{
       		Cart::destroy();
       	}else{
       		Cart::remove($id);
       	}
       	return back();
       }
       public function getupdate(Request $request){
       	Cart::update($request->rowId,$request->qty);
       }
        public function postcomplete(Request $request){
        	$data['info']=$request->all();
        	$data['cart'] = Cart::content();
        	$email = $request->email;
        	$data['total'] = Cart::total();
        	Mail::send('frontend.email', $data, function ($message) use ($email) {
   				 $message->from('lengocthinh006@gmail.com', 'Thinhpro');
   				 $message->to($email,$email);
   				 $message->cc('lengocthinh008@gmail.com', 'Thinhvip');
   				 $message->subject('Xác nhận hóa đơn mua hàng');
});
          Cart::destroy();
        	return redirect('complete');
        }
         public function getcomplete(){
         	return view('frontend.complete');
         }
}
