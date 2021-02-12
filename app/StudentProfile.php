<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentProfile extends Model
{
  protected $fillable = [
      'user_id','class','institute','study_focus','group','avatar'
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
