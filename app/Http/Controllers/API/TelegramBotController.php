<?php


namespace App\Http\Controllers\API;


use App\IdForTelegramBot;
use App\Job;
use Illuminate\Http\Request;
use App\Http\Controllers\API\BaseController as BaseController;
use Validator;


class TelegramBotController extends BaseController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = IdForTelegramBot::all();
        $job_name = Job::all();
        return $this->sendResponse($data->toArray(), 'Products retrieved successfully.');
    }

    public function JobName()
    {
        $job_name = Job::all();
        return $this->sendResponse($job_name->toArray(), 'Products retrieved successfully.');
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

}