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
}
