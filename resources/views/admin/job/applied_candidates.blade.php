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
                    <li> <span>Вакансии</span> </li>
                </ul>
            </div>
            <!-- END PAGE BAR -->
            <!-- BEGIN PAGE TITLE-->
            <h3 class="page-title">список заявленных кандидатов</h3>
            <!-- END PAGE TITLE-->
            <!-- END PAGE HEADER-->
            <div class="row">
                <div class="col-md-12">
                    <!-- Begin: life time stats -->
                        <div class="table-container">
                            <table class="table table-striped table-bordered table-hover" id="jobDatatableAjax">
                                <tr>
                                    <td>имя пользователя</td>
                                    <td>название работы</td>
                                    <td>статус</td>
                                    <td>резюме</td>
                                    <td>изменить статус</td>
                                </tr>
                                @foreach($job_appliers as $applier)
                                    <?php $job = (empty($applier->jobsingle->title))?'не найден':$applier->jobsingle->title ?>
                                    <tr>
                                        <td id="user">{{$applier->user->name}}</td>
{{--                                        {{var_dump($applier->job_id=null).die()}}--}}
                                        <td id="jobtitle" style="color: {{(($job=='не найден'?'darkred':'black'))}}">{{(!empty($applier->job_id))?$job:''}}</td>
                                        <td id="status">{{$applier->application_status}}</td>
                                        <td id="status">  <a href="{{ URL::to('/customers/pdf', [$applier->user_id]) }}" class="btn"><i class="fa fa-download" aria-hidden="true"></i> {{__('Download CV')}}</a></td>

{{--                                        <td id="status">{{$applier->getStatus->status_name}}</td>--}}
                                        <td><a href="{{ route('change.applicant.status',$applier->id) }}"> <button class="btn btn-primary">изменить</button></a></td>
                                    </tr>
                                @endforeach
                            </table>
                        </div>
                </div>
            </div>
        </div>
    </div>


@endsection
@push('scripts')
    <script>
        $(function () {
            var oTable = $('#jobDatatableAjax').DataTable({
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
                    url: '{!! route('fetch.data.jobs') !!}',
                    data: function (d) {
                         d.user = $('#user').val();
                        d.jobtitle = $('#jobtitle').val();
                        d.status = $('#status').val();

                    }
                }, columns: [
                    {data: 'user', name: 'company_id'},
                    {data: 'jobtitle', name: 'title'},
                    {data: 'status', name: 'description'},
                /*    {data: 'city_id', name: 'city_id'},
                    {data: 'action', name: 'action', orderable: false, searchable: false}*/
                ]
            });
            $('#job-search-form').on('submit', function (e) {
                oTable.draw();
                e.preventDefault();
            });
            $('#company_id').on('change', function (e) {
                oTable.draw();
                e.preventDefault();
            });
            $('#user').on('keyup', function (e) {
                oTable.draw();
                e.preventDefault();
            });
            $('#jobtitle').on('keyup', function (e) {
                oTable.draw();
                e.preventDefault();
            });
            $('#status').on('change', function (e) {
                oTable.draw();
                e.preventDefault();
                filterDefaultStates(0);
            });
            $(document).on('change', '#state_id', function (e) {
                oTable.draw();
                e.preventDefault();
                filterDefaultCities(0);
            });
            $(document).on('change', '#city_id', function (e) {
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
            filterDefaultStates(0);
        });
        function deleteJob(id, is_default) {
            var msg = 'Are you sure?';
            if (confirm(msg)) {
                $.post("{{ route('delete.job') }}", {id: id, _method: 'DELETE', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        if (response == 'ok')
                        {
                            var table = $('#jobDatatableAjax').DataTable();
                            table.row('jobDtRow' + id).remove().draw(false);
                        } else
                        {
                            alert('Request Failed!');
                        }
                    });
            }
        }
        function makeActive(id) {
            $.post("{{ route('make.active.job') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#jobDatatableAjax').DataTable();
                        table.row('jobDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
        }
        function makeNotActive(id) {
            $.post("{{ route('make.not.active.job') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#jobDatatableAjax').DataTable();
                        table.row('jobDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
        }
        function makeFeatured(id) {
            $.post("{{ route('make.featured.job') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#jobDatatableAjax').DataTable();
                        table.row('jobDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
        }
        function makeNotFeatured(id) {
            $.post("{{ route('make.not.featured.job') }}", {id: id, _method: 'PUT', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    if (response == 'ok')
                    {
                        var table = $('#jobDatatableAjax').DataTable();
                        table.row('jobDtRow' + id).remove().draw(false);
                    } else
                    {
                        alert('Request Failed!');
                    }
                });
        }
        function filterDefaultStates(state_id)
        {
            var country_id = $('#country_id').val();
            if (country_id != '') {
                $.post("{{ route('filter.default.states.dropdown') }}", {country_id: country_id, state_id: state_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        $('#default_state_dd').html(response);
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