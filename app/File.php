<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class File extends Model
{
  protected $fillable = [
      'path', 'learn_id','type'
  ];
    public function learn()
    {
      return $$this->belongsTo(Learn::class);
    }
}
