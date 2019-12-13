@extends('admin.layouts.admin_layout')
@section('content')
<style type="text/css">
    .table td, .table th {
        font-size: 12px;
        line-height: 2.42857 !important;
    }	
</style>
<div class="page-content-wrapper"> 
    <!-- BEGIN CONTENT BODY -->
    <div class="page-content"> 
        <!-- BEGIN PAGE HEADER--> 
        <!-- BEGIN PAGE BAR -->
        <div class="page-bar">
            <ul class="page-breadcrumb">
                <li> <a href="{{ route('admin.home') }}">Главная</a> <i class="fa fa-circle"></i> </li>
                <li> <span>Компании</span> </li>
            </ul>
        </div>
        <!-- END PAGE BAR --> 
        <!-- BEGIN PAGE TITLE-->
        <h3 class="page-title">Управлять компаниями</h3>
        <!-- END PAGE TITLE--> 
        <!-- END PAGE HEADER-->
        <div class="row">
            <div class="col-md-12"> 
                <!-- Begin: life time stats -->
                <div class="portlet light portlet-fit portlet-datatable bordered">
                    <div class="portlet-title">
                        <div class="caption"> <i class="icon-settings font-dark"></i> <span class="caption-subject font-dark sbold uppercase">Компании</span> </div>
                        <div class="actions"> <a href="{{ route('create.company') }}" class="btn btn-xs btn-success"><i class="glyphicon glyphicon-plus"></i> Добавить новую компанию</a> </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-container">
                            <form method="post" role="form" id="datatable-search-form">
                                <table class="table table-striped table-bordered table-hover"  id="companyDatatableAjax">
                                    <thead>
                                        <tr role="row" class="filter">
                                            <td><input type="text" class="form-control" name="name" id="name" autocomplete="off" placeholder="Название компании"></td>
                                            <td><input type="text" class="form-control" name="email" id="email" autocomplete="off" placeholder="Электронная почта компании"></td>
                                            <td><select name="is_active" id="is_active" class="form-control">
                                                    <option value="-1">Активен?</option>
                                                    <option value="1" selected="selected">Активный</option>
                                                    <option value="0">Неактивный</option>
                                                </select></td>
                                            <td><select name="is_featured" id="is_featured" class="form-control">
                                                    <option value="-1">Показано?</option>
                                                    <option value="1">Рекомендуемые</option>
                                                    <option value="0">Не указано</option>
                                                </select></td>
                                            <td></td>
                                        </tr>
                                        <tr role="row" class="heading">
                                            <th>Ф.И.О</th>
                                            <th>Эл. адрес</th>
                                            <th>Активен?</th>
                                            <th>Показано?</th>
                                            <th>Действия</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT BODY --> 
</div>
@endsection
@push('scripts') 
<script>
    $(function () {
        var oTable = $('#companyDatatableAjax').DataTable({
            processing: true,
            serverSide: true,
            stateSave: true,
            searching: false,
            /*		
             "order": [[1, "asc"]],            
             paging: true,
             info: true,
             */
            ajax: {
                url: '{!! route('fetch.data.companies') !!}',
                data: function (d) {
                    d.id = $('#id').val();
                    d.name = $('#name').val();
                    d.email = $('#email').val();
                    d.is_active = $('#is_active').val();
                    d.is_featured = $('#is_featured').val();
                }
            }, columns: [
                // {data: 'id', name: 'id'},
                {data: 'name', name: 'name'},
                {data: 'email', name: 'email'},
                {data: 'is_active', name: 'is_active'},
                {data: 'is_featured', name: 'is_featured'},
                {data: 'action', name: 'action', orderable: false, searchable: false}
            ]
        });
        $('#datatable-search-form').on('submit', function (e) {
            oTable.draw();
            e.preventDefault();
        });
        $('#name').on('keyup', function (e) {
            oTable.draw();
            e.preventDefault();
        });
        $('#email').on('keyup', function (e) {
            oTable.draw();
            e.preventDefault();
        });
        $('#is_active').on('change', function (e) {
            oTable.draw();
            e.preventDefault();
        });
        $('#is_featured').on('change', function (e) {
            oTable.draw();
            e.preventDefault();
        });
    });
    function deleteCompany(id) {
        var msg = 'Are you sure?';
        if (confirm(msg)) {
            $.post("{{ route('delete.company') }}", {id: id, _method: 'DELETE', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        if (response == 'ok')
                        {
                            var table = $('#companyDatatableAjax').DataTable();
                            table.row('companyDtRow' + id).remove().draw(false);
                        } else
                        {
                            alert('Request Failed!');
                        }
                    });
        }
    }
    function makeActive(id) {
        $.post("{{ route('make.active.company') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#companyDatatableAjax').DataTable();
                        table.row('companyDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
    }
    function makeNotActive(id) {
        $.post("{{ route('make.not.active.company') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#companyDatatableAjax').DataTable();
                        table.row('companyDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
    }
    function makeFeatured(id) {
        $.post("{{ route('make.featured.company') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#companyDatatableAjax').DataTable();
                        table.row('companyDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
    }
    function makeNotFeatured(id) {
        $.post("{{ route('make.not.featured.company') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#companyDatatableAjax').DataTable();
                        table.row('companyDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
    }
</script> 
@endpush