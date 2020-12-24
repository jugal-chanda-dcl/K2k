<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Learn extends Model
{
    protected $fillable = [
        'topic_id', 'user_id','content',
    ];

    public function topic()
    {
      return $this->belongsTo('App\Topic');
    }
    public function user()
    {
      return $this->belongsTo('App\User');
    }
    public function questions()
    {
      return $this->hasMany(Question::class);
    }
}
