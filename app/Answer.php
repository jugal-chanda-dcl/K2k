<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Answer extends Model
{
  /**

  fields = [
  id: pk
  user_id: foreignId: users
  question_id: foreignId:questions
  answer : text
  timestamps
  answered: boolean
  score: integer
  total: integer
  checked: integer|default(0)
]
  **/
  protected $fillable = ['user_id','question_id','answer','answered','score','total','checked'];
  public function user()
  {
    return $this->belongsTo('App\User');
  }

  public function question()
  {
    return $this->belongsTo('App\Question');
  }

}
