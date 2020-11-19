<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Role;
use App\Permission;
use Illuminate\Support\Facades\Route;

class RoleController extends Controller
{
    public function __construct()
    {
      $permission_ids = [];
      foreach (Route::getRoutes()->getRoutes() as $key => $route) {
        // code...
        // get route action
        $action = $route->getActionname();
        // separating controller and method
        $_action = explode('@',$action);
        $controller = $_action[0];
        $method = end($_action);
        // check if this permission is already exists
        $permission_check = Permission::where(['controller'=>$controller,'method'=>$method])->first();
        if(!$permission_check){
            $permission = new Permission;
            $permission->controller = $controller;
            $permission->method = $method;
            $permission->save();
            // add stored permission id in array
            $permission_ids[] = $permission->id;
        }

        // // find admin role.
        // $admin_role = Role::where('name','admin')->first();
        // // atache all permissions to admin role
        // $admin_role->permissions()->attach($permission_ids);

      }
    }




    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('role.index',['roles'=>Role::all()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      $permissions = Permission::where('name','!=','')->get();
      return view('role.create',['permissions' => $permissions]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $validatedData = $request->validate([
        'name' => 'required|unique:roles|max:255',
        'description' => 'required',
        'permissons' => 'required',
      ]);

      $role = Role::create([
          'name' => $validatedData['name'],
          'description' => $validatedData['description'],
      ]);

      $role->permissions()->attach($request->permissons);

      return redirect()->back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $permissions = Permission::where('name','!=','')->get();
        // dd(Role::all());
        return view('role.edit',['role'=>Role::find($id),'permissions'=>$permissions]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $validatedData = $request->validate([
        'name' => 'required|max:255',
        'description' => 'required',
        'permissons' => 'required',
      ]);

      $role = Role::find($id);
      $role->name = $validatedData['name'];
      $role->description = $validatedData['description'];
      $role->save();
      $role->permissions()->sync($request->permissons);
      return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Role::destroy($id);
        return redirect()->back();
    }
}
