{!! APFrmErrHelp::showErrorsNotice($errors) !!}
@include('flash::message')
<div class="form-body">
    <h3>Перетащите для сортировки типов работ</h3>
    {!! Form::select('lang', ['' => 'Выберите язык']+$languages, config('default_lang'), array('class'=>'form-control', 'id'=>'lang', 'onchange'=>'refreshJobSkillSortData();')) !!}
    <div id="jobSkillSortDataDiv"></div>
</div>
@push('scripts') 
<script>
    $(document).ready(function () {
        refreshJobSkillSortData();
    });
    function refreshJobSkillSortData() {
        var language = $('#lang').val();
        $.ajax({
            type: "GET",
            url: "{{ route('job.skill.sort.data') }}",
            data: {lang: language},
            success: function (responseData) {
                $("#jobSkillSortDataDiv").html('');
                $("#jobSkillSortDataDiv").html(responseData);
                /**************************/
                $('#sortable').sortable({
                    update: function (event, ui) {
                        var jobSkillOrder = $(this).sortable('toArray').toString();
                        $.post("{{ route('job.skill.sort.update') }}", {jobSkillOrder: jobSkillOrder, _method: 'PUT', _token: '{{ csrf_token() }}'})
                    }
                });
                $("#sortable").disableSelection();
                /***************************/
            }
        });
    }
</script> 
@endpush
