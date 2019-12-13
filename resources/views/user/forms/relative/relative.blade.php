<h5 onclick="showRelative();">{{__('Relative')}}</h5>
<div class="row">
    <div class="col-md-12">
        <div class="" id="showRelative"></div>
    </div>
</div>
<a href="javascript:;" onclick="showProfileRelativeModal();"> {{__('add relatives')}} </a>
<hr>
<div class="modal fade" id="add_relative_modal" role="dialog"></div>
@push('styles')
    <style type="text/css">
        .datepicker>div {
            display: block;
        }
    </style>
@endpush
@push('scripts')
    <script type="text/javascript">
        /**************************************************/
        function showProfileRelativeModal(){
            $("#add_relative_modal").modal();
            loadProfileRelativeForm();
        }
        function loadProfileRelativeForm(){
            $.ajax({
                type: "POST",
                url: "{{ route('get.front.profile.relative.form', $user->id) }}",
                data: {"_token": "{{ csrf_token() }}"},
                datatype: 'json',
                success: function (json) {
                    $("#add_relative_modal").html(json.html);
                    initdatepicker();
                    // filterLangStatesEducation(0, 0);
                }
            });
        }

        function showProfileRelativeEditModal(id){
            $("#add_edit_profile_relative").modal();
            loadProfileRelativeEditForm(id);
        }
        function loadProfileRelativeEditForm(id){

            $.ajax({
                type: "POST",
                url: "{{ route('get.front.profile.relative.edit.form',7) }}",
                data: {"id": id, "_token": "{{ csrf_token() }}"},
                datatype: 'json',
                success: function (json) {
                    $("#add_edit_profile_relative").html(json.html);
                }
            });
        }
        function submitProfileRelativeForm() {
            var form = $('#div_relative_id');
            $.ajax({
                url     : form.attr('action'),
                type    : form.attr('method'),
                data    : form.serialize(),
                dataType: 'json',
                success : function (json){
                    $ ("#add_relative_modal").html(json.html);
                    showRelative();
                },
                error: function(json){
                    if (json.status === 422) {
                        var resJSON = json.responseJSON;
                        $('.help-block').html('');
                        $.each(resJSON.errors, function (key, value) {
                            $('.' + key + '-error').html('<strong>' + value + '</strong>');
                            $('#div_' + key).addClass('has-error');
                        });
                    } else {
                        // Error
                        // Incorrect credentials
                        // alert('Incorrect credentials. Please try again.')
                    }
                }
            });
        }
        function delete_profile_relative(id) {
            var msg = "{{__('Маълумот ўчирилмоқда, бунга амимисиз??')}}";
            if (confirm(msg)) {
                $.post("{{ route('delete.front.profile.relative') }}", {id: id, _method: 'DELETE', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        if (response == 'ok')
                        {
                            $('#relative_' + id).remove();
                        } else
                        {
                            alert('Request Failed!');
                        }
                    });
            }
        }
        function initdatepicker(){
            $(".datepicker").datepicker({
                autoclose: true,
                format:'yyyy-m-d'
            });
            /*****/
            $('.select2-multiple').select2({
                placeholder: "{{__('Select Major Subjects')}}",
                allowClear: true
            });
        }
        $(document).ready(function(){
            showEducation();
            initdatepicker();
            $(document).on('change', '#degree_level_id', function (e) {
                e.preventDefault();
                filterDegreeTypes(0);
            });
            $(document).on('change', '#education_country_id', function (e) {
                e.preventDefault();
                filterLangStatesEducation(0, 0);
            });
            $(document).on('change', '#education_state_id', function (e) {
                e.preventDefault();
                filterLangCitiesEducation(0);
            });
        });
       /* function showRelative()
        {*/
            $.post("{{ route('show.front.profile.relative', $user->id) }}", {user_id: {{$user->id}}, _method: 'POST', _token: '{{ csrf_token() }}'})
                .done(function (response) {
                    $('#showRelative').html(response);
                });
        /*}*/


        function showRelative() {
            $.post("{{ route('show.front.profile.relative', $user->id) }}", {
                user_id: {{$user->id}},
                _method: 'POST',
                _token: '{{ csrf_token() }}'
            })
                .done(function (response) {
                    $('#showRelative').html(response);
                });
        }

        function filterDegreeTypes(degree_type_id)
        {
            var degree_level_id = $('#degree_level_id').val();
            if (degree_level_id != ''){
                $.post("{{ route('filter.degree.types.dropdown') }}", {degree_level_id: degree_level_id, degree_type_id: degree_type_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        $('#degree_types_dd').html(response);
                    });
            }
        }


        function filterLangStatesEducation(state_id, city_id)
        {
            var country_id = $('#education_country_id').val();
            if (country_id != ''){
                $.post("{{ route('filter.lang.states.dropdown') }}", {country_id: country_id, state_id: state_id, new_state_id: 'education_state_id', _method: 'POST', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        $('#default_state_education_dd').html(response);
                        filterLangCitiesEducation(city_id);
                    });
            }
        }
        function filterLangCitiesEducation(city_id)
        {
            var state_id = $('#education_state_id').val();
            if (state_id != ''){
                $.post("{{ route('filter.lang.cities.dropdown') }}", {state_id: state_id, city_id: city_id, _method: 'POST', _token: '{{ csrf_token() }}'})
                    .done(function (response) {
                        $('#default_city_education_dd').html(response);
                    });
            }
        }
    </script>
@endpush