<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\User;
use App\Admin;
use App\Role;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Carbon\Carbon;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
        $this->middleware('guest:admin');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'phone' => ['required', 'string', 'max:14', 'unique:users'],
            'profession' => ['required', 'string'],
            'address' => ['required', 'string'],
            'birthdate' => 'required|date|date_format:Y-m-d',
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }
    public function showRegistrationForm()
    {
      return view('auth.register',['roles'=>Role::all()]);
    }

    public function showAdminRegisterForm()
    {
        return view('auth.register', ['url' => 'admin',]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
      dd($data);
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'phone' => $data['phone'],
            'profession' => $data['profession'],
            'address' => $data['address'],
            'birthdate' => $data['birthdate'],
            'password' => Hash::make($data['password']),
            'role_id' => $data['role_id']
        ]);
    }

    protected function createAdmin(Request $request)
    {
        $now = Carbon::now();
        $data = $request->validate([
          'name' => ['required', 'string', 'max:255'],
          'email' => ['required', 'string', 'email', 'max:255', 'unique:admins'],
          'phone' => ['required', 'string', 'max:14', 'unique:admins'],
          'profession' => ['required', 'string'],
          'address' => ['required', 'string'],
          'birthdate' => 'required|date|date_format:Y-m-d|before: $now',
          'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);


        Admin::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $data['phone'],
            'profession' => $data['profession'],
            'address' => $data['address'],
            'birthdate' => $data['birthdate'],
            'password' => Hash::make($request->password),
            'age' => Carbon::parse($data['birthdate'])->diffInDays($now)
        ]);
        return redirect()->intended('login/admin');
    }
}
