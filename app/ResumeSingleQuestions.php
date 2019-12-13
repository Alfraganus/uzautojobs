<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ResumeSingleQuestions extends Model
{
    protected $table = 'resume_single_questions';
    public $timestamps = false;
    protected $fillable = [
        'yonalish',
//        'application_status',
        'children_quantity',
        'turar_joy',
        'yashash_joy',
        'phone_home',
        'trip_readiness',
        'driving_licence',
        'work_shift_readiness',
        'army_document',
        'sudlangan',
        'extra_info',
        'height',
        'date_filled_application',
        'user_id',
        'passport_number',
        'vacancy_infomation_source',
    ];


}
