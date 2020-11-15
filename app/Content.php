<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $fillable = ['title','content','ammount','user_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
