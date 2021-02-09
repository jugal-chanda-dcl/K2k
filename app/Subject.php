<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    //
    protected $fillable = [
        'name', 'class','user_id'
    ];

    public function topics()
    {
      // code...
      return $this->hasMany('App\Topic');
    }
    public function user()
    {
      return $this->belongsTo(User::class);
    }
    public function users()
    {
      return $this->belongsToMany(User::class,'subscriptions');
    }
}
