<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class IdForTelegramBot extends Model
{
    protected $table = 'job_apply';

    public $timestamps = false;
    protected $fillable = ['application_status', 'user_id'];
}
