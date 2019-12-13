<?php
namespace App\Http\Controllers;
use App\ProfileEducation;
use App\ProfileExperience;
use App\ProfileLanguage;
use App\ProfileRelatives;
use App\ProfileSkill;
use App\ResumeSingleQuestions;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use PDF;
class ExportController extends Controller
{

    public function exporttest($test)
    {
        $pdf = App::make('dompdf.wrapper');
//        $pdf->load_html(utf8_decode($html), 'UTF-8');
        $pdf->loadHTML(utf8_decode('wewewew'),'UTF-8') ;
        return $pdf->stream();
    }

    public function export_pdf($id)
    {
        $data = User::where(['id'=>$id])->first();
        $profile_relative = ProfileRelatives::where(['user_id'=>$id])->get();
        $resume_single_questions = ResumeSingleQuestions::where(['user_id'=>$id])->first();
        $user_education = ProfileEducation::where(['user_id'=>$id])->get();
        $user_exprience = ProfileExperience::where(['user_id'=>$id])->get();
        $user_languages = ProfileLanguage::where(['user_id'=>$id])->get();
        $user_skills = ProfileSkill::where(['user_id'=>$id])->get();

        $class = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css";
        $font = public_path('open-sans.ttf');
        $pdf = PDF::loadView('user.demo', compact(
            'data',
            'class',
            'name',
            'resume_single_questions',
            'user_education',
            'font',
            'user_exprience',
            'user_languages',
            'user_skills',
            'profile_relative'
        ));

        $path = public_path().'/pdf';
        $pdf->save($path.'/my_pdf_name.pdf', 'UTF-8');
        $name = $data->first_name.' '.$data->last_name.' resume.pdf';
//        return response()->download($path.'/my_pdf_name.pdf');
        return $pdf->download($name);
    }
    public function generate_pdf($id) {
        $data = User::where(['id'=>$id])->first();
        $profile_relative = ProfileRelatives::where(['user_id'=>$id])->get();
        $resume_single_questions = ResumeSingleQuestions::where(['user_id'=>$id])->first();
        $user_education = ProfileEducation::where(['user_id'=>$id])->get();
        $user_exprience = ProfileExperience::where(['user_id'=>$id])->get();
        $user_languages = ProfileLanguage::where(['user_id'=>$id])->get();
        $user_skills = ProfileSkill::where(['user_id'=>$id])->get();

        $class = "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css";
        $path = public_path().'/pdf';
        $pdf = PDF::loadView('user.demo', compact(
            'data',
            'class',
            'name',
            'resume_single_questions',
            'user_education',
            'font',
            'user_exprience',
            'user_languages',
            'user_skills',
            'profile_relative'
        ));
        $pdf->save($path.'/my_pdf_name.pdf', 'UTF-8');
        return response()->download($path.'/my_pdf_name.pdf');
    }



}