<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContentDeveloperProfile extends Model
{
  protected $fillable = [
      'user_id','experience',
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
