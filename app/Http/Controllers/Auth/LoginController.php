<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
class LoginController extends Controller
{

    use AuthenticatesUsers;
    protected $redirectTo = '/dashboard';
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }


  
    public function authenticated(Request $request, $user)
    {
    
  
        // activity($user->name)
        //     ->performedOn($user)
        //     ->causedBy($user)
        //     ->log('LoggedIn');
        if (  activity($user->name)
        ->performedOn($user)
        ->causedBy($user)
        ->log('LoggedIn')) {
            if($user->hasRole('admin')){

                // dd('if ma 1');
                // return('if ma');
            // $user= User::where('email', $request->email)->first();
                //  $token = $user->createToken('my-app-token')->plainTextToken;
            
                $response = [
                    'user' => $user,
                    // 'token' => $token
                ];
            
                 return response($response, 201);
                // return redirect('dashboard');
            }elseif($user->hasRole('developer'))
            {
                dd('elseif ma');
                return('elseif ma');
                // return redirect('dashboard');
    
              
            }
             elseif($user->hasRole('user'))
            {
                dd('elseif ma');
                // return redirect('dashboard');
            }
            else
            {
                dd('else');
                return  ['else']; 
                $token = $user->createToken('my-app-token')->plainTextToken;
            
                $response = [
                    'user' => $user,
                    'token' => $token
                ];
            
                 return response($response, 201);
                // return redirect('/');
            }
        } else {
            return response([
                        'message' => ['These credentials do not match our records.']
                    ], 404);
    
        }


    }

    public function logout(Request $request)
    {
        $user = auth()->user();
        activity($user->name)
            ->performedOn($user)
            ->causedBy($user)
            ->log('LoggedOut');
        $this->guard()->logout();
        $request->session()->invalidate();
        return ('here');
        // return redirect('/');
    }
}
