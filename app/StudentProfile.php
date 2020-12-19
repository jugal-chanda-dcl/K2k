<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentProfile extends Model
{
  protected $fillable = [
      'user_id','age','class','institute'
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
