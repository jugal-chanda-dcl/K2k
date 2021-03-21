<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    protected $fillable = [
      'phone','profession','address','birthdate','age','user_id'
    ];
}
