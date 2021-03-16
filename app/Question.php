<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    /**

    Fields = [id,learn_id,content,timestamps,practice_limit]

    **/
    public function learn()
    {
      return $this->belongsTo(Learn::class);
    }
    public function answers()
    {
      return $this->hasMany('App\Answer');
    }

    public function isAnswered($userId)
    {
      if($this->answers->where('user_id',$userId)->first() != null){
        return 1;
      }
      else{
        return 0;
      }
    }
}
