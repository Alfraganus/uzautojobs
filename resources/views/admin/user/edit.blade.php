@extends('admin.layouts.admin_layout')
@section('content')
<div class="page-content-wrapper"> 
    <!-- BEGIN CONTENT BODY -->
    <div class="page-content"> 
        <!-- BEGIN PAGE HEADER--> 
        <!-- BEGIN PAGE BAR -->
        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li> <a href="{{ route('admin.home') }}">Главная</a> <i class="fa fa-circle"></i> </li>
                <li> <a href="{{ route('list.users') }}">Пользователи</a> <i class="fa fa-circle"></i> </li>
                <li> <span>Редактировать пользователи</span> </li>
            </ul>
        </div>
        <!-- END PAGE BAR --> 
        <!-- BEGIN PAGE TITLE-->
        <!--<h3 class="page-title">Edit User <small>Users</small> </h3>-->
        <!-- END PAGE TITLE--> 
        <!-- END PAGE HEADER-->
        <br />
        @include('flash::message')
        <div class="row">

            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption font-red-sunglo"> <i class="icon-settings font-red-sunglo"></i> <span class="caption-subject bold uppercase">Форма пользователи</span> </div>            
                    </div>
                    <div class="portlet-body form">          
                        <ul class="nav nav-tabs">              
                            <li class="active"> <a href="#Details" data-toggle="tab" aria-expanded="false"> Подробности </a> </li>
                            <li><a href="#Summary" data-toggle="tab" aria-expanded="false">Резюме</a></li>
                            <li><a href="#CV" data-toggle="tab" aria-expanded="false">C.V</a></li>
                            <li><a href="#Projects" data-toggle="tab" aria-expanded="false">Проектов</a></li>
                            <li><a href="#Experience" data-toggle="tab" aria-expanded="false">Опыт</a></li>
                            <li><a href="#Education" data-toggle="tab" aria-expanded="false">Образование</a></li>
                            <li><a href="#Skills" data-toggle="tab" aria-expanded="false">Навыки</a></li>
                            <li><a href="#Languages" data-toggle="tab" aria-expanded="false">Языки</a></li>
                        </ul>

                        <div class="tab-content">              
                            <div class="tab-pane fade active in" id="Details">
                                {!! APFrmErrHelp::showErrorsNotice($errors) !!}
                                @include('flash::message')
                                @if(isset($user))
                                    {!! Form::model($user, array('method' => 'put', 'route' => array('update.user', $user->id), 'class' => 'form', 'files'=>true)) !!}
                                    {!! Form::hidden('id', $user->id) !!}
                                @else
                                    {!! Form::open(array('method' => 'post', 'route' => 'store.user', 'class' => 'form', 'files'=>true)) !!}
                                @endif
                                <div class="form-body">
                                    <input type="hidden" name="front_or_admin" value="admin" />
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group {!! APFrmErrHelp::hasError($errors, 'image') !!}">
                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;"> <img src="{{ asset('/') }}admin_assets/no-image.png" alt="" /> </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                    <div> <span class="btn default btn-file"> <span class="fileinput-new"> Выберите изображение профиля </span> <span class="fileinput-exists"> + Изменить </span>
                    {!! Form::file('image', null, array('id'=>'image')) !!} </span> <a href="javascript:;" class="btn red fileinput-exists" data-dismiss="fileinput"> Убрать </a> </div>
                                                </div>
                                                {!! APFrmErrHelp::showErrors($errors, 'image') !!} </div>
                                        </div>
                                        @if(isset($user))
                                            <div class="col-md-6">
                                                {{ ImgUploader::print_image("user_images/$user->image") }}
                                            </div>
                                        @endif
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'first_name') !!}">


                                        {!! Form::label('first_name', 'Имя', ['class' => 'bold']) !!}
                                        {!! Form::text('first_name', null, array('class'=>'form-control', 'id'=>'first_name', 'placeholder'=>'Имя')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'first_name') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'middle_name') !!}">
                                        {!! Form::label('middle_name', 'Отчество', ['class' => 'bold']) !!}
                                        {!! Form::text('middle_name', null, array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Отчество')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'middle_name') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'last_name') !!}">
                                        {!! Form::label('last_name', 'Фамилия', ['class' => 'bold']) !!}
                                        {!! Form::text('last_name', null, array('class'=>'form-control', 'id'=>'last_name', 'placeholder'=>'Фамилия')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'last_name') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'email') !!}">
                                        {!! Form::label('email', 'Эл. адрес', ['class' => 'bold']) !!}
                                        {!! Form::text('email', null, array('class'=>'form-control', 'id'=>'email', 'placeholder'=>'Эл. адрес')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'email') !!}
                                    </div>


                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'date_of_birth') !!}">
                                        {!! Form::label('date_of_birth', 'Дата рождения', ['class' => 'bold']) !!}
                                        {!! Form::text('date_of_birth', null, array('class'=>'form-control datepicker', 'id'=>'date_of_birth', 'placeholder'=>'Дата рождения', 'autocomplete'=>'off')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'date_of_birth') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'gender_id') !!}">
                                        {!! Form::label('gender_id', 'Пол', ['class' => 'bold']) !!}
                                        {!! Form::select('gender_id', [''=>'Выберите пол']+$genders, null, array('class'=>'form-control', 'id'=>'gender_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'gender_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'marital_status_id') !!}">
                                        {!! Form::label('marital_status_id', 'Семейное положение', ['class' => 'bold']) !!}
                                        {!! Form::select('marital_status_id', [''=>'Выберите семейное положение']+$maritalStatuses, null, array('class'=>'form-control', 'id'=>'marital_status_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'marital_status_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'nationality_id') !!}">
                                        {!! Form::label('nationality_id', 'Национальность', ['class' => 'bold']) !!}
                                        {!! Form::select('nationality_id', [''=>'Выберите национальность']+$nationalities, null, array('class'=>'form-control', 'id'=>'nationality_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'nationality_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'national_id_card_number') !!}">
                                        {!! Form::label('national_id_card_number', 'Национальное удостоверение личности#', ['class' => 'bold']) !!}
                                        {!! Form::text('national_id_card_number', null, array('class'=>'form-control', 'id'=>'national_id_card_number', 'placeholder'=>'Национальное удостоверение личности#')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'national_id_card_number') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'country_id') !!}">
                                        {!! Form::label('country_id', 'Страна', ['class' => 'bold']) !!}
                                        {!! Form::select('country_id', [''=>'Выберите страну']+$countries, old('country_id', (isset($user))? $user->country_id:$siteSetting->default_country_id), array('class'=>'form-control', 'id'=>'country_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'country_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'state_id') !!}">
                                        {!! Form::label('state_id', 'Регион', ['class' => 'bold']) !!}
                                        <span id="default_state_dd">
            {!! Form::select('state_id', [''=>'Выберите регион'], null, array('class'=>'form-control', 'id'=>'state_id')) !!}
        </span>
                                        {!! APFrmErrHelp::showErrors($errors, 'state_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'city_id') !!}">
                                        {!! Form::label('city_id', 'Город', ['class' => 'bold']) !!}
                                        <span id="default_city_dd">
            {!! Form::select('city_id', [''=>'Выберите город'], null, array('class'=>'form-control', 'id'=>'city_id')) !!}
        </span>
                                        {!! APFrmErrHelp::showErrors($errors, 'city_id') !!}
                                    </div>

                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'mobile_num') !!}">
                                        {!! Form::label('mobile_num', 'Мобильный номер', ['class' => 'bold']) !!}
                                        {!! Form::text('mobile_num', null, array('class'=>'form-control', 'id'=>'mobile_num', 'placeholder'=>'Мобильный номер')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'mobile_num') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'job_experience_id') !!}">
                                        {!! Form::label('job_experience_id', 'Опыт', ['class' => 'bold']) !!}
                                        {!! Form::select('job_experience_id', [''=>'Выберите опыт']+$jobExperiences, null, array('class'=>'form-control', 'id'=>'job_experience_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'job_experience_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'career_level_id') !!}">
                                        {!! Form::label('career_level_id', 'Карьерный уровень', ['class' => 'bold']) !!}
                                        {!! Form::select('career_level_id', [''=>'Выберите уровень карьеры']+$careerLevels, null, array('class'=>'form-control', 'id'=>'career_level_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'career_level_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'industry_id') !!}">
                                        {!! Form::label('industry_id', 'Промышленность', ['class' => 'bold']) !!}
                                        {!! Form::select('industry_id', [''=>'Выберите отрасль']+$industries, null, array('class'=>'form-control', 'id'=>'industry_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'industry_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'functional_area_id') !!}">
                                        {!! Form::label('functional_area_id', 'Функциональная область', ['class' => 'bold']) !!}
                                        {!! Form::select('functional_area_id', [''=>'Выберите функциональную область']+$functionalAreas, null, array('class'=>'form-control', 'id'=>'functional_area_id')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'functional_area_id') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'current_salary') !!}">
                                        {!! Form::label('current_salary', 'Текущая зарплата', ['class' => 'bold']) !!}
                                        {!! Form::text('current_salary', null, array('class'=>'form-control', 'id'=>'current_salary', 'placeholder'=>'Текущая зарплата')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'current_salary') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'expected_salary') !!}">
                                        {!! Form::label('expected_salary', 'Ожидаемая заработная плата', ['class' => 'bold']) !!}
                                        {!! Form::text('expected_salary', null, array('class'=>'form-control', 'id'=>'expected_salary', 'placeholder'=>'Ожидаемая заработная плата')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'expected_salary') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'salary_currency') !!}">
                                        {!! Form::label('salary_currency', 'Валюта', ['class' => 'bold']) !!}
                                        {!! Form::text('salary_currency', null, array('class'=>'form-control', 'id'=>'salary_currency', 'placeholder'=>'Валюта', 'autocomplete'=>'off')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'salary_currency') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'street_address') !!}">
                                        {!! Form::label('street_address', 'Адрес улицы', ['class' => 'bold']) !!}
                                        {!! Form::textarea('street_address', null, array('class'=>'form-control', 'id'=>'street_address', 'placeholder'=>'Адрес улицы')) !!}
                                        {!! APFrmErrHelp::showErrors($errors, 'street_address') !!}
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('yonalish', 'Йўналиш (қайси лавозимга хужжат топширмоқдасиз)', ['class' => 'bold']) !!}
                                        {!! Form::text('yonalish', (!empty($getuser->yonalish)?$getuser->yonalish:null), array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Йўналиш','required')) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('turar_joy', 'Турар жой манзили', ['class' => 'bold']) !!}
                                        {!! Form::text('turar_joy', (!empty($getuser->turar_joy)?$getuser->turar_joy:null), array('class'=>'form-control','required', 'id'=>'middle_name', 'placeholder'=>'Турар жой манзили')) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('yashash_joy', 'Яшаш жой манзили', ['class' => 'bold']) !!}
                                        {!! Form::text('yashash_joy', (!empty($getuser->yashash_joy)?$getuser->yashash_joy:null), array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Яшаш жой манзили','required')) !!}
                                    </div>


                                    <div class="form-group">
                                        {!! Form::label('trip_readiness', 'Хизмат сафарига муносабатингиз', ['class' => 'bold']) !!}
                                        {!! Form::select('trip_readiness', ['Ижобий'=>'Ижобий','Салбий'=>'Салбий'],(!empty($getuser->trip_readiness)?$getuser->trip_readiness:null), ['class' => 'form-control','required']) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('driving_licence', 'Хайдовчилик гувоҳномаси (бор бўлса тоифаси, гувоҳномаси бўлмаса, йўқ деб тўлдиринг):', ['class' => 'bold']) !!}
                                        {!! Form::text('driving_licence',(!empty($getuser->driving_licence)?$getuser->driving_licence:null), array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Хайдовчилик гувоҳномаси:','required')) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('children_quantity', 'Фарзанди (сони)', ['class' => 'bold']) !!}
                                        {!! Form::text('children_quantity',(!empty($getuser->children_quantity)?$getuser->children_quantity:null), array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Фарзанди (сони)','required')) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('work_shift_readiness', 'Сменалик ишга бўлган муносабатингиз:', ['class' => 'bold']) !!}
                                        {!! Form::select('work_shift_readiness', ['Розиман'=>'Розиман','Рози эмасман'=>'Рози эмасман'],(!empty($getuser->work_shift_readiness)?$getuser->work_shift_readiness:null), ['class' => 'form-control','required']) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('army_document', 'Харбий хизмат тўғрисида маълумот (бор бўлса, харбий билет рақами, харбий билет бўлмаса, йўқ деб тўлдиринг)', ['class' => 'bold']) !!}
                                        {!! Form::text('army_document',(!empty($getuser->army_document)?$getuser->army_document:null), array('class'=>'form-control', 'required','id'=>'middle_name', 'placeholder'=>'Харбий хизмат тўғрисида маълумот')) !!}
                                    </div>

                                    <div class="form-group">
                                        {!! Form::label('sudlangan', 'Судланганлиги:', ['class' => 'bold']) !!}
                                        {!! Form::select('sudlangan', ['Судланмаганман'=>'Судланмаганман','Судланганман'=>'Судланганман'],(!empty($getuser->sudlangan)?$getuser->sudlangan:null), ['class' => 'form-control','required']) !!}
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('height', 'Бўйи: (см)', ['class' => 'bold']) !!}
                                        {!! Form::text('height', (!empty($getuser->height)?$getuser->height:null), array('class'=>'form-control', 'id'=>'middle_name','required', 'placeholder'=>'Бўйи: (см)')) !!}
                                    </div>
                                    <div class="form-group">
                                        {!! Form::label('extra_info', 'Қўшимча маълумот', ['class' => 'bold']) !!}
                                        {!! Form::textarea('extra_info',(!empty($getuser->extra_info)?$getuser->extra_info:null), array('class'=>'form-control', 'id'=>'middle_name', 'placeholder'=>'Қўшимча маълумот')) !!}
                                    </div>


                                    @if((bool)config('jobseeker.is_jobseeker_package_active'))
                                        <div class="form-group {!! APFrmErrHelp::hasError($errors, 'job_seeker_package_id') !!}"> {!! Form::label('job_seeker_package_id', 'Package', ['class' => 'bold']) !!}
                                            {!! Form::select('job_seeker_package_id', ['' => 'Select Package']+$packages, null, array('class'=>'form-control', 'id'=>'job_seeker_package_id')) !!}
                                            {!! APFrmErrHelp::showErrors($errors, 'job_seeker_package_id') !!} </div>

                                        @if(isset($user) && $user->package_id > 0)
                                            <div class="form-group">
                                                {!! Form::label('package', 'Пакет : ', ['class' => 'bold']) !!}
                                                <strong>{{$user->getPackage('package_title')}}</strong>
                                            </div>
                                            <div class="form-group">
                                                {!! Form::label('package_Duration', 'Package Duration : ', ['class' => 'bold']) !!}
                                                <strong>{{$user->package_start_date->format('d M, Y')}}</strong> - <strong>{{$user->package_end_date->format('d M, Y')}}</strong>
                                            </div>
                                            <div class="form-group">
                                                {!! Form::label('package_quota', 'Availed quota : ', ['class' => 'bold']) !!}
                                                <strong>{{$user->availed_jobs_quota}}</strong> / <strong>{{$user->jobs_quota}}</strong>
                                            </div>
                                            <hr/>
                                        @endif
                                    @endif


                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'is_immediate_available') !!}">
                                        {!! Form::label('is_immediate_available', 'Немедленно доступно?', ['class' => 'bold']) !!}
                                        <div class="radio-list">
                                            <?php
                                            $is_immediate_available_1 = 'checked="checked"';
                                            $is_immediate_available_2 = '';
                                            if (old('is_immediate_available', ((isset($user)) ? $user->is_immediate_available : 1)) == 0) {
                                                $is_immediate_available_1 = '';
                                                $is_immediate_available_2 = 'checked="checked"';
                                            }
                                            ?>
                                            <label class="radio-inline">
                                                <input id="immediate_available" name="is_immediate_available" type="radio" value="1" {{$is_immediate_available_1}}>
                                                Сразу доступно </label>
                                            <label class="radio-inline">
                                                <input id="not_immediate_available" name="is_immediate_available" type="radio" value="0" {{$is_immediate_available_2}}>
                                                Не доступно немедленно </label>
                                        </div>
                                        {!! APFrmErrHelp::showErrors($errors, 'is_immediate_available') !!}
                                    </div>


                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'is_active') !!}">
                                        {!! Form::label('is_active', 'Активный', ['class' => 'bold']) !!}
                                        <div class="radio-list">
                                            <?php
                                            $is_active_1 = 'checked="checked"';
                                            $is_active_2 = '';
                                            if (old('is_active', ((isset($user)) ? $user->is_active : 1)) == 0) {
                                                $is_active_1 = '';
                                                $is_active_2 = 'checked="checked"';
                                            }
                                            ?>
                                            <label class="radio-inline">
                                                <input id="active" name="is_active" type="radio" value="1" {{$is_active_1}}>
                                                Активный </label>
                                            <label class="radio-inline">
                                                <input id="not_active" name="is_active" type="radio" value="0" {{$is_active_2}}>
                                                Неактивный </label>
                                        </div>
                                        {!! APFrmErrHelp::showErrors($errors, 'is_active') !!}
                                    </div>
                                    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'verified') !!}">
                                        {!! Form::label('verified', 'Проверенный', ['class' => 'bold']) !!}
                                        <div class="radio-list">
                                            <?php
                                            $verified_1 = 'checked="checked"';
                                            $verified_2 = '';
                                            if (old('verified', ((isset($user)) ? $user->verified : 1)) == 0) {
                                                $verified_1 = '';
                                                $verified_2 = 'checked="checked"';
                                            }
                                            ?>
                                            <label class="radio-inline">
                                                <input id="verified" name="verified" type="radio" value="1" {{$verified_1}}>
                                                Проверенный </label>
                                            <label class="radio-inline">
                                                <input id="not_verified" name="verified" type="radio" value="0" {{$verified_2}}>
                                                Не подтверждено </label>
                                        </div>
                                        {!! APFrmErrHelp::showErrors($errors, 'Проверенный') !!}
                                    </div>
                                    {!! Form::button('Обновить личную информацию <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>', array('class'=>'btn btn-large btn-primary', 'type'=>'submit')) !!}
                                </div>
                                {!! Form::close() !!}
                                @push('css')
                                    <style type="text/css">
                                        .datepicker>div {
                                            display: block;
                                        }
                                    </style>
                                @endpush
                                @push('scripts')
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            initdatepicker();
                                            $('#salary_currency').typeahead({
                                                source: function (query, process) {
                                                    return $.get("{{ route('typeahead.currency_codes') }}", {query: query}, function (data) {
                                                        console.log(data);
                                                        data = $.parseJSON(data);
                                                        return process(data);
                                                    });
                                                }
                                            });

                                            $('#country_id').on('change', function (e) {
                                                e.preventDefault();
                                                filterDefaultStates(0);
                                            });
                                            $(document).on('change', '#state_id', function (e) {
                                                e.preventDefault();
                                                filterDefaultCities(0);
                                            });
                                            filterDefaultStates(<?php echo old('state_id', (isset($user)) ? $user->state_id : 0); ?>);
                                        });
                                        function filterDefaultStates(state_id)
                                        {
                                            var country_id = $('#country_id').val();
                                            if (country_id != '') {
                                                $.post("{{ route('filter.default.states.dropdown') }}", {country_id: country_id, state_id: state_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                                                    .done(function (response) {
                                                        $('#default_state_dd').html(response);
                                                        filterDefaultCities(<?php echo old('city_id', (isset($user)) ? $user->city_id : 0); ?>);
                                                    });
                                            }
                                        }
                                        function filterDefaultCities(city_id)
                                        {
                                            var state_id = $('#state_id').val();
                                            if (state_id != '') {
                                                $.post("{{ route('filter.default.cities.dropdown') }}", {state_id: state_id, city_id: city_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                                                    .done(function (response) {
                                                        $('#default_city_dd').html(response);
                                                    });
                                            }
                                        }
                                        function initdatepicker() {
                                            $(".datepicker").datepicker({
                                                autoclose: true,
                                                format: 'yyyy-m-d'
                                            });
                                        }
                                    </script>
                                @endpush
                            </div>
                            <div class="tab-pane fade" id="Summary"> @include('admin.user.forms.summary') </div>
                            <div class="tab-pane fade" id="CV"> @include('admin.user.forms.cv.cvs') </div>
                            <div class="tab-pane fade" id="Projects"> @include('admin.user.forms.project.projects') </div>
                            <div class="tab-pane fade" id="Experience"> @include('admin.user.forms.experience.experience') </div>
                            <div class="tab-pane fade" id="Education"> @include('admin.user.forms.education.education') </div>
                            <div class="tab-pane fade" id="Skills"> @include('admin.user.forms.skill.skills') </div>
                            <div class="tab-pane fade" id="Languages"> @include('admin.user.forms.language.languages') </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- END CONTENT BODY --> 
    </div>
    @endsection