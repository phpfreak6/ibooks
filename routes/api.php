<?php

use Illuminate\Http\Request;
 
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
    // return $request->user();
// });


Route::post('login', 'API\UserController@login');  //Login 
Route::post('register', 'API\UserController@register');  //Register 

Route::post('getAllCategories', 'API\ApiController@allcategories');   // All Categories
Route::post('getHomeSection', 'API\ApiController@homepage');   // All Categories

Route::post('getAllBooks', 'API\ApiController@allbooks');

Route::group(['middleware' => 'auth:api'], function(){
	Route::post('details', 'API\UserController@details');
}); 