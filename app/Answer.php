<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
  $fillable = ['user_id','question_id','answer','answered','score','total','checked'];
  public function user()
  {
    return $this->belongsTo('App\User');
  }

  public function question()
  {
    return $this->belongsTo('App\Question');
  }

}
