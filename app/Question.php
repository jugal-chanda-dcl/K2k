<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    public function learn()
    {
      return $this->belongsTo(Learn::class);
    }
    public function options()
    {
      return $this->hasMany(Option::class);
    }
}
