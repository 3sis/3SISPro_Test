<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\AppAuthorizationHeader;
use App\Models\ApplicationMaster;
use Illuminate\Support\Facades\Log;


class AuthController extends Controller
{
     public function index()
    {
        if(\Auth::id()){
          return redirect('/state');
        }
        return view('auth.login');
    }
    public function login(Request $request){
        // dd($request->all());
     try {
           // validate data
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        // login code
        if(\Auth::attempt($request->only('email','password'))){
            // return redirect('/state');
            //landing page App Id
            $LandingPage_App_id = 11;
            $fetchData = AppAuthorizationHeader::where('user_id',\Auth::id())
                                                ->where('AAAHHAppId',$LandingPage_App_id)->first();

            $app_data = ApplicationMaster::where('AMAMHAppId',$LandingPage_App_id)->first();

              // dd(\Auth::id(),$fetchData);
            if($fetchData){
                   return redirect('/state');
            }else{
                return back()->withError('Your not authorized to '.$app_data->AMAMHDesc1);
                   // return response()->json(['status' => 'error' ]);
            }


        }
        return back()->withError('Login details are not valid');


         } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }

    }
    // public function register_view()
    // {
    //     return view('auth.register');
    // }
    public function register(Request $request){
        // validate
        $request->validate([
            'name'=>'required',
            'email' => 'required|unique:users|email',
            'password'=>'required|confirmed'
        ]);

        // save in users table

        User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=> \Hash::make($request->password)
        ]);

        // login user here

        if(\Auth::attempt($request->only('email','password'))){
            dd('err');
            // return redirect('home');
        }

        return redirect('register')->withError('Error');


    }
    public function logout(){
        \Session::flush();
        \Auth::logout();
        return redirect('/');
    }
}
