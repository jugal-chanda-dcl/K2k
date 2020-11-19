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
  public function learn($value='')
  {
    return $this->belongsTo('App\Learn');
  }
}
