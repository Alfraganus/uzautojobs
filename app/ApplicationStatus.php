<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ApplicationStatus extends Model
{
    protected $table = 'application_status';
    public $timestamps = false;
    protected $fillable = ['status_code','status_name'];

    public function jobStatus()
    {
        return $this->belongsTo('App\JobApply', 'application_status', 'status_code');
    }

}
