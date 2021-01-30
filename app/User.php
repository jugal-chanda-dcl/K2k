<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Routing\Route;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','role_id','phone','profession','address','birthdate','age'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function learns()
    {
      return $this->hasMany('App\Learn');
    }
    public function contents()
    {
      return $this->hasMany('App\Content');
    }
    public function role()
    {
      return $this->belongsTo('App\Role');
    }
    public function teacherProfile()
    {
      return $this->hasOne(TeacherProfile::class);
    }
    public function studentProfile()
    {
      return $this->hasOne(StudentProfile::class);
    }
    public function answers()
    {
      return $this->hasMany('App\Answer');
    }
    public function contentDeveloperProfile($value='')
    {
      return $this->hasOne(ContentDeveloperProfile::class);
    }

    public function hasPermission(Route $route)
    {

      $role = $this->role;
      $permissions = $role->permissions;
      // get requested action
      $actionName = class_basename($route->getActionName());
      // check if requested action is in permissions list
      foreach ($permissions as $permission)
      {
        $_namespaces_chunks = explode('\\', $permission->controller);
        $controller = end($_namespaces_chunks);
        if ($actionName == $controller . '@' . $permission->method)
        {
          return true;
        }
      }
      return false;
    }

}
