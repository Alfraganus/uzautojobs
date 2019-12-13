<!DOCTYPE html>
<html lang="ru">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="Content-Language" content="ru">
<style>
    {{--@font-face { font-family: 'MyFont'; src: url('{{url('/fonts/myfont.ttf')}}') format('truetype') }--}}
    .ex1{
        border: 1px solid black;
        outline-style: solid;
        outline-color: black;
        outline-width: thin;
        width: 500px;
        margin-top: 8px;

    }

    * {
        font-family: "Time-Roman", serif;
        font-size: 12px;
        color: #000;
    }

    .clear {
        clear: both;
    }
</style>
    <link rel="stylesheet" href="{{$class}}"  media="all">
</head>
<body>
<?php $nodata = 'Киритилмаган'?>
<?php $empty = ''?>
<?php
$name = (!empty($data->first_name))?$data->first_name:$empty;
$last_name = (!empty($data->last_name))?$data->last_name:$empty;
$middile_name = (!empty($data->middle_name))?$data->middle_name:$empty;
$turar_joy = (!empty($resume_single_questions->turar_joy))?$resume_single_questions->turar_joy:$nodata;
$yashash_joy = (!empty($resume_single_questions->yashash_joy))?$resume_single_questions->yashash_joy:$nodata;
$passport_number = (!empty($resume_single_questions->passport_number))?$resume_single_questions->passport_number:$nodata;
$yonalish = (!empty($resume_single_questions->yonalish))?$resume_single_questions->yonalish:$nodata;
$trip_readiness = (!empty($resume_single_questions->trip_readiness))?$resume_single_questions->trip_readiness:$nodata;
$driving_licence = (!empty($resume_single_questions->driving_licence))?$resume_single_questions->driving_licence:$nodata;
$work_shift_readiness = (!empty($resume_single_questions->work_shift_readiness))?$resume_single_questions->work_shift_readiness:$nodata;
$army_document = (!empty($resume_single_questions->army_document))?$resume_single_questions->army_document:$nodata;
$sudlangan = (!empty($resume_single_questions->sudlangan))?$resume_single_questions->sudlangan:$nodata;
$extra_info = (!empty($resume_single_questions->extra_info))?$resume_single_questions->extra_info:$nodata;
$height = (!empty($resume_single_questions->height))?$resume_single_questions->height:$nodata;
$vacancy_infomation_source = (!empty($resume_single_questions->vacancy_infomation_source))?$resume_single_questions->vacancy_infomation_source:$nodata;
$date_filled_application = (!empty($resume_single_questions->date_filled_application))?$resume_single_questions->date_filled_application:$nodata;

?>

<h3 style="color: #0d638f;font-weight: bold">  Номзоднинг резюмеси</h3>
<div class="row">
    <div class="col-xs-4"><span style="line-height: 15px">Сиз қайси лавозимга хужжат топширмоқдасиз?</span></div>
    <div class="col-xs-7 ex1"><span style="color: black;text-align: center">{{$yonalish}} </span> </div>
    <div class="clear"></div>

    <div class="col-xs-4"><span style="line-height: 15px">ID Рақам:</span> </div>
    <div class="col-xs-7 ex1"><span class="text-center" style="color: black;">{{$data->id}} </span></div>
    <div class="clear"></div>
    <div style="clear: both;margin-top: 25px;border-top: 1px solid black;"></div>
</div>

<div class="row" style="margin-top: 45px">

    <div class="col-xs-1 pull-right">
        <img style="float: right;height: 100px;width: 120px" src="{{asset('public/user_images/'.(empty($data->image)?'noimg.png':$data->image))}}">
    </div>
    <h2 class="text-center">Шахсий маълумотлар</h2>
    <div style="clear: both"></div>
           <div class="col-xs-3">ФИШ:</div>



           <div class="col-xs-8 ex1"><span class="text-center"
            style="color: black;">{{$name.' '.$last_name.' '.$middile_name}}  </span>
           </div>
    <div class="clear"></div>


    <div class="col-xs-3">Оилавий ахволи: </div>
    <div class="col-xs-2 ex1"><span class="text-center" style="color: black;">{{(!empty($data->marital_status_id))?$data->maritalStatus->marital_status:$nodata}}   </span></div>
    <div class="col-xs-2">Фарзанди : </div>
    <div class="col-xs-3 ex1"><span class="text-center" style="color: black;">{{(empty($resume_single_questions->children_quantity))?$nodata:$resume_single_questions->children_quantity}}   </span></div>
    <div class="clear"></div>


    <div class="col-xs-3">Давлат: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">{{(!empty($data->country_id))?$data->country->country:$nodata  }}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Турар жой манзили: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">{{$turar_joy}}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Яшаш жойи манзили:  </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">{{$yashash_joy}}    </span></div>
    <div class="clear"></div>


    <div class="col-xs-3">Телефон Уй: </div>

    <div class="col-xs-2 ex1"><span class="text-center" style="color: black;">{{(!empty($data->phone)?$data->phone:$nodata)}} </span></div>
    <div class="col-xs-2">Уяли : </div>
    <div class="col-xs-3 ex1"><span class="text-center" style="color: black;">{{(!empty($data->mobile_num))?$data->mobile_num:$nodata }}</span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Электрон  манзили: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;"> {{(!empty($data->email))?$data->email:$nodata}}</span></div>
    <div class="clear"></div>

    <div class="col-xs-3">Паспорт маълумотлари: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;"> {{$passport_number}}</span></div>
    <div class="clear"></div>


    {{--<div style="clear: both;margin-top: 25px;border-top: 1px solid black;"></div>--}}
    <h2 class="text-center">Маълумоти</h2>

   {{-- <div class="col-xs-3">Маълумот даражаси: </div>
    <div class="col-xs-8 ex1"><span class="text-center" style="color: black;">Олий     </span></div>
    <div class="clear"></div>--}}



    <table class="table table-striped">
        <thead>
        <tr>
            <col width="50">
            <col width="50">
            <col width="100">
            <col width="100">
            <col width="80">
            <th>Кирган  йил</th>
            <th>Тамомлаган йил</th>
            <th>Ўқув юрти</th>
            <th>Мутаҳассислик</th>
            <th>Даража</th>
        </tr>
        </thead>
        <tbody>
        @foreach($user_education as $education)
        <tr>
            <td>{{$education->date_completion-4}}</td>
            <td>{{$education->date_completion}}</td>
            <td>{{$education->institution}}</td>
            <td>{{$education->degreeType->degree_type}}</td>
            <td>{{$education->degree_title}} </td>
        </tr>
        @endforeach



        </tbody>
    </table>
    <div class="clear" style="margin-top: 50px"></div>

{{--    <h3 class="text-center">Қўшимча ўқишлар ҳақида маълумот (тренинглар, ўқув курслари ва бошқалар):</h3>
    <table class="table-striped">
        <thead>
        <tr>
            <col width="50">
            <col width="50">
            <col width="100">
            <col width="100">
            <col width="80">
            <th>Кирган  йил</th>
            <th>Тамомлаган йил</th>
            <th>Ўқув юрти</th>
            <th>Мутаҳассислик</th>
            <th>Даража</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        <tr>
            <td>2014</td>
            <td>2018</td>
            <td>Андижон Машинасозлик институти</td>
            <td>Ер усти транспорт тизими</td>
            <td>Бакалавр </td>
        </tr>

        </tbody>
    </table>
    <div class="clear"></div>--}}

    <h3 class="text-center">Меҳнат фаолияти</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="50">Бошланган сана</th>
            <th width="50">Тугалланган  сана</th>
            <th>Ташкилот номи</th>
            <th>Лавозими</th>
            <th>вазифаси</th>
        </tr>

        </thead>
        <tbody>
        @foreach($user_exprience as $exprience)
            <?php
            $datestart = new \Carbon\Carbon( $exprience->date_start );
            $dateend= new \Carbon\Carbon( $exprience->date_end ); ?>
        <tr>
            <td>{{$datestart->format('Y')}}</td>
            <td>{{$dateend->format('Y')}}</td>
            <td>{{$exprience->company}}</td>
            <td>{{$exprience->title}}</td>
            <td>{{$exprience->description}}</td>
        </tr>
        @endforeach
        </tbody>
    </table>
    <div class="clear"></div>

    <h3 class="text-center">Чет тилларини билиши</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="50">Тиллар</th>
            <th width="100">Қайси даражада</th>
        </tr>
        </thead>
        <tbody>

        @foreach($user_languages as $lang)
        <tr>
            <td>{{$lang->language->native}}</td>
            <td>{{$lang->languageLevel->language_level}} </td>
        </tr>
            @endforeach

        </tbody>
    </table>

    <div class="clear"></div>

    <h3 class="text-center">Қариндошларингиздан ким «ўзавтосаноат» аж тизимидаги корхоналарда фаолият олиб боради?</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="50">Ф.И.Ш.</th>
            <th width="50">Қариндошлик даражаси</th>
            <th>Корхона номи</th>
            <th>Лавозими</th>
        </tr>

        </thead>
        <tbody>
        @foreach($profile_relative as $relative)
            <tr>
                <td><span class="text text-success"> {{ $relative->full_name }}</span></td>
                <td><span class="text text-success"> {{ $relative->type_relative }}</span></td>
                <td><span class="text text-success"> {{ $relative->name_organization }}</span></td>
                <td><span class="text text-success"> {{ $relative->position }}</span></td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <div class="clear"></div>



    <h3 class="text-center">Компьютер саводхонлиги</h3>
    <table class="table table-striped">
        <thead>
        <tr>
            <th width="50">Қайси программалар ўзлаштирилган:</th>
            <th width="100">Қайси даражада</th>
        </tr>
        </thead>
        <tbody>
        @foreach($user_skills as $skill)
        <tr>
            <td>{{$skill->jobSkill->job_skill}}</td>
            <td>{{$skill->jobExperience->job_experience}}</td>
        </tr>
        @endforeach
        </tbody>
    </table>

    <div class="col-xs-5">Хизмат сафарига муносабатингиз:  </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$trip_readiness}}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Хайдовчилик гувоҳномаси:  </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;"> {{$driving_licence}}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Сменалик ишга бўлган муносабатингиз:</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$work_shift_readiness}}      </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Харбий хизмат тўғрисида маълумот:  </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$army_document}}      </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Судланганлиги:</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$sudlangan}}     </span></div>
    <div class="clear"></div>
    <div class="break"></div>

    <div class="col-xs-5">Қўшимча маълумот:  </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$extra_info}}     </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Бўйи: (см)</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$height}}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Бўш иш ўрни хақида каердан билдингиз</div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$vacancy_infomation_source}}    </span></div>
    <div class="clear"></div>

    <div class="col-xs-5">Тўлдирилган сана:  </div>
    <div class="col-xs-6 ex1"><span class="text-center" style="color: black;">{{$date_filled_application}}    </span></div>
    <div class="clear"></div>

</div>
</body>
</html>

