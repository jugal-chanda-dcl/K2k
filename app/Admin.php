<?php

namespace App;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

use Illuminate\Database\Eloquent\Model;

class Admin extends Authenticatable
{

  /**
  fields = [
  id : pk
  name: string
  email: string|unique
  phone: string|unique
  profession: string
  address: string
  birthdate: date
  age: string
  password: string
  is_supper: boolean|default: false
  rememberToken
  timestamps
]
  **/

  use Notifiable;

  protected $guard = 'admin';

  protected $fillable = [
      'name', 'email', 'password','phone','profession','address','birthdate','age'
  ];

  protected $hidden = [
      'password', 'remember_token',
  ];
}
