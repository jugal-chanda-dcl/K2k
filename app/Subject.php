<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    //
    protected $fillable = [
        'name', 'class','user_id','auto_aprove'
    ];

    public function topics()
    {
      // code...
      return $this->hasMany('App\Topic');
    }
    // For user Created
    public function user()
    {
      return $this->belongsTo(User::class);
    }
    // For subscriptions
    public function users()
    {
      return $this->belongsToMany(User::class,'subscriptions');
    }

    public function getAproveAttribute()
    {
      if($this->auto_aprove){
        return "On";
      }else{
        return "Off";
      }
    }

    public function subscriptionStatus($userId)
    {
      if($this->users->contains($userId)){
        if($this->users()->wherePivot('is_aproved',1)->get()->contains($userId)){
          return "aproved";
        }else{
          return "not aproved";
        }
      }else{
        return "not subscribe";
      }
    }
}
