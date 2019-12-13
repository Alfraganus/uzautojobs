{!! APFrmErrHelp::showErrorsNotice($errors) !!}
@include('flash::message')
<div class="form-body">
    <h3>Перетащите для сортировки видео</h3>
    {!! Form::select('lang', ['' => 'Выберите язык']+$languages, config('default_lang'), array('class'=>'form-control', 'id'=>'lang', 'onchange'=>'refreshVideoSortData();')) !!}
    <div id="videoSortDataDiv"></div>
</div>
@push('scripts') 
<script>
    $(document).ready(function () {
        refreshVideoSortData();
    });
    function refreshVideoSortData() {
        var language = $('#lang').val();
        $.ajax({
            type: "GET",
            url: "{{ route('video.sort.data') }}",
            data: {lang: language},
            success: function (responseData) {
                $("#videoSortDataDiv").html('');
                $("#videoSortDataDiv").html(responseData);
                /**************************/
                $('#sortable').sortable({
                    update: function (event, ui) {
                        var videoOrder = $(this).sortable('toArray').toString();
                        $.post("{{ route('video.sort.update') }}", {videoOrder: videoOrder, _method: 'PUT', _token: '{{ csrf_token() }}'})
                    }
                });
                $("#sortable").disableSelection();
                /***************************/
            }
        });
    }
</script> 
@endpush
