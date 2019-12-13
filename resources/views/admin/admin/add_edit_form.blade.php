@if (count($errors) > 0)
<div class="alert alert-danger">
    Были некоторые проблемы с вашим вкладом.
</div>
@foreach ($errors->all() as $error)
{{ $error }}<br/>
@endforeach
@endif
@include('flash::message')
<div class="form-body">
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'name') !!}">
        {!! Form::label('name', 'Ф.И.О.', ['class' => 'bold']) !!}                    
        {!! Form::text('name', null, array('required', 'class'=>'form-control', 'placeholder'=>'Name')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'name') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'email') !!}">
        {!! Form::label('email', 'Адрес электронной почты', ['class' => 'bold']) !!}
        {!! Form::text('email', null, array('required', 'class'=>'form-control', 'placeholder'=>'Email Address')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'email') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'password') !!}">
        {!! Form::label('password', 'Пароль', ['class' => 'bold']) !!}
        {!! Form::password('password', array('required', 'class'=>'form-control', 'placeholder'=>'Password')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'password') !!}
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'role_id') !!}">
        {!! Form::label('role', 'Роль', ['class' => 'bold']) !!}
        {!! Form::select('role_id', ['' => 'Select a Role']+$roles, null, ['class' => 'form-control']) !!}
        {!! APFrmErrHelp::showErrors($errors, 'role_id') !!}
    </div>
</div>