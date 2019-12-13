<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfileRelatives extends Model
{
  public $timestamps = false;
  protected $table = 'profile_relatives';
  protected $fillable = ['full_name','type_relative','name_organization','position','user_id'];

}
