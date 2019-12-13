<?php

namespace App;

use DB;
use App;
use App\Traits\Active;
use App\Traits\Featured;
use App\Traits\JobTrait;
use App\Traits\CountryStateCity;
use Illuminate\Database\Eloquent\Model;

class Resume extends Model
{

    use Active;
    use featured;
    use JobTrait;
    use CountryStateCity;

    protected $table = 'profile_cvs';
    public $timestamps = true;
    protected $guarded = ['id'];
    //protected $dateFormat = 'U';
    protected $dates = ['created_at', 'updated_at', 'expiry_date'];

    public function user()
    {
        return $this->belongsTo('App\User', 'user_id', 'id');
    }

    public function skills()
    {
        return $this->hasMany('App\ProfileSkill','user_id','user_id');
    }


}
