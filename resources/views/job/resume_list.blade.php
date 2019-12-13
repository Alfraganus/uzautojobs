@extends('layouts.app')
@section('content') 
<!-- Header start --> 
@include('includes.header') 
<!-- Header end --> 
<!-- Inner Page Title start --> 
@include('includes.inner_page_title', ['page_title'=>__('Resume List')]) 
<!-- Inner Page Title end -->

<div class="listpgWraper">
<div class="container">
    <ul class="jobslist row">
        
        @if($resumes)
            @foreach($resumes as $resume)
            <li class="col-md-4" style="margin-bottom: 30px;"> 
                <div class="jobint">
                    <div class="row">
                        
                        <div class="col-md-3 col-sm-3">
                            <a href="/view-public-profile/{{$resume->user_id}}" title="{{$resume->user->last_name}}">
                                {{$resume->user->printUserImage()}}
                            </a>
                        </div>
                        
                        <div class="col-md-9 col-sm-9">
                            <h4><a href="/view-public-profile/{{$resume->user_id}}" title="{{$resume->user->last_name}}">{{$resume->user->getName() }}</a></h4>
                            
                            @if(!empty($resume->user->email))
                                <div class="company"><i class="fa fa-envelope" aria-hidden="true"></i> <a
                                            href="mailto:{{$resume->user->email}}"
                                            title="{{$resume->user->email}}">{{$resume->user->email}}</span></div>
                            @endif

                            <div class="jobloc">
                                <a href={{URL::to('/customers/pdf', [$resume->user_id]) }}><label class="fulltime"
                                                                           title="{{ $resume->user->getName() }}">Скачать
                                        резюме</label></a></div>
                        </div>
                    </div>


                       {{-- <ul>
                            <li>{{$skill->jobSkill->job_skill}}</li>
                        </ul>--}}
                        <div class="row" style="margin-top: 10px">
                            @foreach($resume->skills as $skill)
                            <div class="col-sm-3">
                                {{$skill->jobSkill->job_skill}}
                            </div>
                            @endforeach
                        </div>

                </div>

            @endforeach
        @endif

        
    <div class="pagiWrap" style="text-align:center;">
        
      {{ $resumes->links() }}
        
    </div>
</div>
</div>

@include('includes.footer')
@endsection
@push('styles')
<style type="text/css">
    .formrow iframe {
        height: 78px;
    }
    .jobslist li {
        margin-top: 10px;
    }
</style>
@endpush
@push('scripts') 
<script type="text/javascript">
    $(document).ready(function () {
        $(document).on('click', '#send_company_message', function () {
            var postData = $('#send-company-message-form').serialize();
            $.ajax({
                type: 'POST',
                url: "{{ route('contact.company.message.send') }}",
                data: postData,
                //dataType: 'json',
                success: function (data)
                {
                    response = JSON.parse(data);
                    var res = response.success;
                    if (res == 'success')
                    {
                        var errorString = '<div role="alert" class="alert alert-success">' + response.message + '</div>';
                        $('#alert_messages').html(errorString);
                        $('#send-company-message-form').hide('slow');
                        $(document).scrollTo('.alert', 2000);
                    } else
                    {
                        var errorString = '<div class="alert alert-danger" role="alert"><ul>';
                        response = JSON.parse(data);
                        $.each(response, function (index, value)
                        {
                            errorString += '<li>' + value + '</li>';
                        });
                        errorString += '</ul></div>';
                        $('#alert_messages').html(errorString);
                        $(document).scrollTo('.alert', 2000);
                    }
                },
            });
        });
    });
</script> 
@endpush