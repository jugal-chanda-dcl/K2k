<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Routing\Route;
use Learn;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','role_id',
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

    // This is for teacher
    public function createdSubjects()
    {
      return $this->hasMany(Subject::class);
    }
    // For students
    public function subscribedSubjects()
    {
      return $this->belongsToMany(Subject::class,'subscriptions');
    }

    public function contents()
    {
      return $this->hasMany('App\Content');
    }
    public function role()
    {
      return $this->belongsTo('App\Role');
    }
    public function profile()
    {
      # code...
      return $this->hasOne(Profile::class);
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

    public function isPracticedLearn($questionId)
    {
      $answer = $this->answers()->where('question_id',$questionId)->first();
      if($answer){
        return $answer;
      }else{
        return false;
      }
    }
    public function practiceStatus($questionId)
    {
      $answer = $this->isPracticedLearn($questionId);
      if($answer){
        if($answer->checked){
          return "You practiced this topic and your score is ".$answer->score." out of ".$answer->total;
        }else{
          return "You Practice this topic but still answer not release.";
        }
      }else{
        return "You do not practice this topic";
      }
    }

    public function hasPermission(Route $route)
    {

      $role = $this->role;
      $permissions = $role->permissions;
      $actionName = class_basename($route->getActionName());
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
