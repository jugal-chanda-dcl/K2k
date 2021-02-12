<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TeacherProfile extends Model
{
  protected $fillable = [
      'user_id','year_of_experience','specilization','avatar'
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
