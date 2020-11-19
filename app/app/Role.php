<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
  protected $fillable = [
      'name', 'description',
  ];

  public function user($value='')
  {
    return $this->belongsTo('App\user');
  }

  public function permissions()
  {
    return $this->belongsToMany('App\Permission');
  }

}
