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
                <li> <a href="{{ route('list.ownership.types') }}">Тип собственности</a> <i class="fa fa-circle"></i> </li>
                <li> <span>Изменить тип собственности</span> </li>
            </ul>
        </div>
        <!-- END PAGE BAR -->        
        <!-- END PAGE HEADER-->
        <br />
        @include('flash::message')
        <div class="row">
            <div class="col-md-12">
                <div class="portlet light bordered">
                    <div class="portlet-title">
                        <div class="caption font-red-sunglo"> <i class="icon-settings font-red-sunglo"></i> <span class="caption-subject bold uppercase">Форма собственности</span> </div>
                    </div>
                    <div class="portlet-body form">          
                        <ul class="nav nav-tabs">              
                            <li class="active"> <a href="#Details" data-toggle="tab" aria-expanded="false">Подробности</a> </li>
                        </ul>
                        {!! Form::model($ownershipType, array('method' => 'put', 'route' => array('update.ownership.type', $ownershipType->id), 'class' => 'form', 'files'=>true)) !!}
                        {!! Form::hidden('id', $ownershipType->id) !!}            
                        <div class="tab-content">              
                            <div class="tab-pane fade active in" id="Details"> @include('admin.ownership_type.forms.form') </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                </div>
            </div>
        </div>
        <!-- END CONTENT BODY --> 
    </div>
    @endsection