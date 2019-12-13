{!! APFrmErrHelp::showErrorsNotice($errors) !!}
@include('flash::message')

<div class="form-body">        
    {!! Form::hidden('id', null) !!}
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'company_id') !!}" id="company_id_div">
        {!! Form::label('company_id', 'Компания', ['class' => 'bold']) !!}                    
        {!! Form::select('company_id', ['' => 'Выберите компанию']+$companies, null, array('class'=>'form-control', 'id'=>'company_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'company_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'title') !!}">
        {!! Form::label('title', 'Должность', ['class' => 'bold']) !!}
        {!! Form::text('title', null, array('class'=>'form-control', 'id'=>'title', 'placeholder'=>'Названия')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'title') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'description') !!}">
        {!! Form::label('description', 'Описание вакансии', ['class' => 'bold']) !!}
        {!! Form::textarea('description', null, array('class'=>'form-control', 'id'=>'description', 'placeholder'=>'Описание работы')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'description') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'skills') !!}">
{{--        {!! Form::label('skills', 'Рабочие навыки', ['class' => 'bold']) !!}--}}
        <?php
        $skills = old('skills', $jobSkillIds);
        ?>
{{--        {!! Form::select('skills[]', $jobSkills, $skills, array('class'=>'form-control select2-multiple', 'id'=>'skills', 'multiple'=>'multiple')) !!}--}}
        {!! APFrmErrHelp::showErrors($errors, 'skills') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'country_id') !!}" id="country_id_div">
        {!! Form::label('country_id', 'Страна', ['class' => 'bold']) !!}                    
        {!! Form::select('country_id', ['' => 'Выберите страну']+$countries, old('country_id', (isset($job))? $job->country_id:$siteSetting->default_country_id), array('class'=>'form-control', 'id'=>'country_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'country_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'state_id') !!}" id="state_id_div">
        {!! Form::label('state_id', 'Регион', ['class' => 'bold']) !!}                    
        <span id="default_state_dd">
            {!! Form::select('state_id', ['' => 'Select State'], null, array('class'=>'form-control', 'id'=>'state_id')) !!}
        </span>
        {!! APFrmErrHelp::showErrors($errors, 'state_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'city_id') !!}" id="city_id_div">
        {!! Form::label('city_id', 'Город', ['class' => 'bold']) !!}                    
        <span id="default_city_dd">
            {!! Form::select('city_id', ['' => 'Выберите город'], null, array('class'=>'form-control', 'id'=>'city_id')) !!}
        </span>
        {!! APFrmErrHelp::showErrors($errors, 'city_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'is_freelance') !!}">
{{--        {!! Form::label('is_freelance', 'Вы фриланс?', ['class' => 'bold']) !!}--}}
        <div class="radio-list">
            <?php
            $is_freelance_1 = '';
            $is_freelance_2 = 'checked="checked"';
            if (old('is_freelance', ((isset($job)) ? $job->is_freelance : 0)) == 1) {
                $is_freelance_1 = 'checked="checked"';
                $is_freelance_2 = '';
            }
            ?>
           {{-- <label class="radio-inline">
                <input id="is_freelance_yes" name="is_freelance" type="radio" value="1" {{$is_freelance_1}}>
                Да </label>
            <label class="radio-inline">
                <input id="is_freelance_no" name="is_freelance" type="radio" value="0" {{$is_freelance_2}}>
                Нет </label>
        </div>--}}
        {!! APFrmErrHelp::showErrors($errors, 'is_freelance') !!}
    </div>
    
   {{-- <div class="form-group {!! APFrmErrHelp::hasError($errors, 'career_level_id') !!}" id="career_level_id_div">
        {!! Form::label('career_level_id', 'Карьерный уровень', ['class' => 'bold']) !!}                    
        {!! Form::select('career_level_id', ['' => 'Выберите уровень карьеры']+$careerLevels, null, array('class'=>'form-control', 'id'=>'career_level_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'career_level_id') !!}                                       
    </div>--}}
    
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'salary_from') !!}" id="salary_from_div">
        {!! Form::label('salary_from', 'Зарплата от', ['class' => 'bold']) !!}                    
        {!! Form::number('salary_from', null, array('class'=>'form-control', 'id'=>'salary_from')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'salary_from') !!}                                       
    </div>
    
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'salary_to') !!}" id="salary_to_div">
        {!! Form::label('salary_to', 'Ожидаемая зарплата', ['class' => 'bold']) !!}                    
        {!! Form::number('salary_to', null, array('class'=>'form-control', 'id'=>'salary_to')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'salary_to') !!}                                       
    </div>
    
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'salary_currency') !!}" id="salary_currency_div">
        {!! Form::label('salary_currency', 'Зарплата валюта', ['class' => 'bold']) !!}                    
        {!! Form::select('salary_currency', ['' => 'Выберите валюту зарплаты']+$currencies, null, array('class'=>'form-control', 'id'=>'salary_currency')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'salary_currency') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'salary_period_id') !!}" id="salary_period_id_div">
        {!! Form::label('salary_period_id', 'Период зарплаты', ['class' => 'bold']) !!}                    
        {!! Form::select('salary_period_id', ['' => 'Выберите период зарплаты']+$salaryPeriods, null, array('class'=>'form-control', 'id'=>'salary_period_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'salary_period_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'hide_salary') !!}">
        {!! Form::label('hide_salary', 'Скрыть зарплату?', ['class' => 'bold']) !!}
        <div class="radio-list">
            <?php
            $hide_salary_1 = '';
            $hide_salary_2 = 'checked="checked"';
            if (old('hide_salary', ((isset($job)) ? $job->hide_salary : 0)) == 1) {
                $hide_salary_1 = 'checked="checked"';
                $hide_salary_2 = '';
            }
            ?>
            <label class="radio-inline">
                <input id="hide_salary_yes" name="hide_salary" type="radio" value="1" {{$hide_salary_1}}>
                Да </label>
            <label class="radio-inline">
                <input id="hide_salary_no" name="hide_salary" type="radio" value="0" {{$hide_salary_2}}>
                Нет </label>
        </div>
        {!! APFrmErrHelp::showErrors($errors, 'hide_salary') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'functional_area_id') !!}" id="functional_area_id_div">
        {!! Form::label('functional_area_id', 'Функциональная область', ['class' => 'bold']) !!}                    
        {!! Form::select('functional_area_id', ['' => 'Выберите функциональную область']+$functionalAreas, null, array('class'=>'form-control', 'id'=>'functional_area_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'functional_area_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'job_type_id') !!}" id="job_type_id_div">
{{--        {!! Form::label('job_type_id', 'Тип работы', ['class' => 'bold']) !!}                    --}}
{{--        {!! Form::select('job_type_id', ['' => 'Выберите тип работы']+$jobTypes, null, array('class'=>'form-control', 'id'=>'job_type_id')) !!}--}}
        {!! APFrmErrHelp::showErrors($errors, 'job_type_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'job_shift_id') !!}" id="job_shift_id_div">
        {!! Form::label('job_shift_id', 'Смена работы', ['class' => 'bold']) !!}                    
        {!! Form::select('job_shift_id', ['' => 'Выберите смену работы']+$jobShifts, null, array('class'=>'form-control', 'id'=>'job_shift_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'job_shift_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'num_of_positions') !!}" id="num_of_positions_div">
        {!! Form::label('num_of_positions', 'Позиции#', ['class' => 'bold']) !!}                    
        {!! Form::select('num_of_positions', ['' => 'Выберите позиции#']+MiscHelper::getNumPositions(), null, array('class'=>'form-control', 'id'=>'num_of_positions')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'num_of_positions') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'gender_id') !!}" id="gender_id_div">
        {!! Form::label('gender_id', 'Пол', ['class' => 'bold']) !!}                    
        {!! Form::select('gender_id', ['' => __('Выберите пол')]+$genders, null, array('class'=>'form-control', 'id'=>'gender_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'gender_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'expiry_date') !!}">
        {!! Form::label('expiry_date', 'Срок годности', ['class' => 'bold']) !!}
        {!! Form::text('expiry_date', null, array('class'=>'form-control datepicker', 'id'=>'expiry_date', 'placeholder'=>'Срок годности', 'autocomplete'=>'off')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'expiry_date') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'degree_level_id') !!}" id="degree_level_id_div">
        {!! Form::label('degree_level_id', 'Требуемый уровень степени', ['class' => 'bold']) !!}                    
        {!! Form::select('degree_level_id', ['' => 'Выберите необходимый уровень степени']+$degreeLevels, null, array('class'=>'form-control', 'id'=>'degree_level_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'degree_level_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'job_experience_id') !!}" id="job_experience_id_div">
        {!! Form::label('job_experience_id', 'Требуемый опыт работы', ['class' => 'bold']) !!}                    
        {!! Form::select('job_experience_id', ['' => 'Выберите опыт работы']+$jobExperiences, null, array('class'=>'form-control', 'id'=>'job_experience_id')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'job_experience_id') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'is_active') !!}">
        {!! Form::label('is_active', 'Активен?', ['class' => 'bold']) !!}
        <div class="radio-list">
            <?php
            $is_active_1 = 'checked="checked"';
            $is_active_2 = '';
            if (old('is_active', ((isset($job)) ? $job->is_active : 1)) == 0) {
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
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'is_featured') !!}">
        {!! Form::label('is_featured', 'Показано?', ['class' => 'bold']) !!}
        <div class="radio-list">
            <?php
            $is_featured_1 = '';
            $is_featured_2 = 'checked="checked"';
            if (old('is_featured', ((isset($job)) ? $job->is_featured : 0)) == 1) {
                $is_featured_1 = 'checked="checked"';
                $is_featured_2 = '';
            }
            ?>
            <label class="radio-inline">
                <input id="featured" name="is_featured" type="radio" value="1" {{$is_featured_1}}>
                Рекомендуемые </label>
            <label class="radio-inline">
                <input id="not_featured" name="is_featured" type="radio" value="0" {{$is_featured_2}}>
                Не указано </label>
        </div>
        {!! APFrmErrHelp::showErrors($errors, 'is_featured') !!} </div>	
    <div class="form-actions">
        {!! Form::button('Сохранить <i class="fa fa-arrow-circle-right" aria-hidden="true"></i>', array('class'=>'btn btn-large btn-primary', 'type'=>'submit')) !!}
    </div>
</div>
@push('css')
<style type="text/css">
    .datepicker>div {
        display: block;
    }
</style>
@endpush
@push('scripts')
@include('admin.shared.tinyMCEFront') 
<script type="text/javascript">
    $(document).ready(function () {
        $('.select2-multiple').select2({
            placeholder: "Select Required Skills",
            allowClear: true
        });
        $(".datepicker").datepicker({
            autoclose: true,
            format: 'yyyy-m-d'
        });
        $('#country_id').on('change', function (e) {
            e.preventDefault();
            filterDefaultStates(0);
        });
        $(document).on('change', '#state_id', function (e) {
            e.preventDefault();
            filterDefaultCities(0);
        });
        filterDefaultStates(<?php echo old('state_id', (isset($job)) ? $job->state_id : 0); ?>);
    });
    function filterDefaultStates(state_id)
    {
        var country_id = $('#country_id').val();
        if (country_id != '') {
            $.post("{{ route('filter.default.states.dropdown') }}", {country_id: country_id, state_id: state_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        $('#default_state_dd').html(response);
                        filterDefaultCities(<?php echo old('city_id', (isset($job)) ? $job->city_id : 0); ?>);
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
</script>
@endpush