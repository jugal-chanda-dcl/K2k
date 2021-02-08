<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Learn extends Model
{
    protected $fillable = [
        'topic_id','content',
    ];

    public function topic()
    {
      return $this->belongsTo('App\Topic');
    }
    public function question()
    {
      return $this->hasOne(Question::class);
    }
}
