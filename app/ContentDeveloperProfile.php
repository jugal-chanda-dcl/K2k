<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ContentDeveloperProfile extends Model
{
  protected $fillable = [
      'user_id','year_of_experience','total_completed_projects','focus'
  ];
  public function user()
  {
    return $this->belongsTo(User::class);
  }
}
