<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

// {"response":{"status":"1","message":"success","data":[{"auction_id":"1","station":"12","start_date":"2017-09-13","start_time":"12:03","end_date":"2017-09-13","end_time":"19:02","reserve_price":"400","status":"1","auction_status":2,"auction_detail":{"highest_bid":"5","quantity":"1","image":"chair.png"}},{"auction_id":"2","station":"12","start_date":"2017-09-12","start_time":"13:07","end_date":"2017-09-12","end_time":"18:00","reserve_price":"600","status":"0","auction_status":2}]}}

// {"response":{"status":"1","message":"Logged in sucessfully!!","data":[{"id":11,"name":"sukhpal"}]}}
// return response()->json(array("response"=>array("status"=>"1", "message"=>"Logged in sucessfully!!", "data"=>[array("id"=>11,"name"=>"sukhpal")])), $this->successStatus);

class UserController extends Controller
{

    public $successStatus = 200;
	
    public $per_page = 3;

    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function login(){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['token'] =  $user->createToken('MyApp')->accessToken;
            return response()->json(['success' => $success], $this->successStatus);
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }

    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;

        return response()->json(['success'=>$success], $this->successStatus);
    }

    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }
}