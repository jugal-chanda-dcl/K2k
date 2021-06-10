<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Topic extends Model
{

  protected $fillable = [
      'name', 'subject_id',
  ];

  public function subject()
  {
    // code...
    return $this->belongsTo('App\Subject');
  }
  public function learn()
  {
    return $this->hasOne('App\Learn');
  }

  public function attempt()
  {
    $learn = $this->learn;
    if($learn->question)
    {
      $question = $learn->question;
      return auth()->user()->answers()->where('question_id',$question->id)->count();
    }
    else
    {
      return 0;
    }
  }

  public function reviewed()
  {
    if($this->attempt()>0)
    {
      $question = $this->learn->question;
      $answers = auth()->user()->answers()->where('question_id',$question->id);
      return $answers->where('checked',1)->count();
    }
    else
    {
      return 0;
    }
  }
  public function score()
  {
    if($this->reviewed() > 0)
    {
      $question = $this->learn->question;
      $answers = auth()->user()->answers()->where('question_id',$question->id);
      return $answers->where('checked',1)->sum('score');
    }
    return 0;
  }
}
