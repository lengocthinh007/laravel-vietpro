<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','frontendcontroller@gethome');
Route::get('detail/{id}/{slug}.html','frontendcontroller@getdetail');
Route::post('detail/{id}/{slug}.html','frontendcontroller@postcomment');
Route::get('category/{id}/{slug}.html','frontendcontroller@getcate');
Route::get('search','frontendcontroller@getsearch');
Route::group(['prefix'=>'cart'],function(){
	Route::get('add/{id}','Cartcontroller@getcart');
	Route::get('show','Cartcontroller@getshow');
	Route::get('delete/{id}','Cartcontroller@getdelete');
	Route::get('update','Cartcontroller@getupdate');
	Route::post('show','Cartcontroller@postcomplete');
});
Route::get('complete','Cartcontroller@getcomplete');

Route::group(['namespace'=>'Admin'],function(){
	Route::group(['prefix'=>'login','middleware'=>'Ckeckedlogin'],function(){
		Route::get('/','Logincontroller@getLogin');
		Route::post('/','Logincontroller@postLogin');
		});
	Route::get('logout','Homecontroller@getlogout');
	Route::group(['prefix'=>'admin','middleware'=>'Ckeckedlogout'],function(){
			Route::get('home','Homecontroller@gethome');
		Route::group(['prefix'=>'category'],function(){
			Route::get('/','Categorycontroller@getcategory');
			Route::post('/','Categorycontroller@postcategory');
			Route::get('edit/{id}','Categorycontroller@getedit');
			Route::post('edit/{id}','Categorycontroller@postedit');
			Route::get('delete/{id}','Categorycontroller@getdelete');
		});
		Route::group(['prefix'=>'product'],function(){
			Route::get('/','Productcontroller@getProduct');
			Route::get('add','Productcontroller@getadd');
			Route::post('add','Productcontroller@postadd');
			Route::get('edit/{id}','Productcontroller@getedit');
			Route::post('edit/{id}','Productcontroller@postedit');
			Route::get('delete/{id}','Productcontroller@getdelete');
	});
	});
});
