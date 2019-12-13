<?php

namespace App\Traits;

use DB;
use File;
use ImgUploader;
use App\City;

trait CityTrait
{

    private function getCityIdsAndNumJobs($limit = 21)
    {
        return DB::table('jobs')
                        ->select('city_id','is_active', DB::raw('COUNT(jobs.city_id) AS num_jobs'))
                        ->groupBy('city_id','is_active')
                        ->orderBy('num_jobs', 'DESC')
            ->where('is_active',1)
                        ->limit($limit)
                        ->get();
    }

}
