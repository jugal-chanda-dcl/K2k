<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class StudentProfile extends Model
{
  protected $fillable = [
      'user_id','class','institute','study_focus','group'
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
