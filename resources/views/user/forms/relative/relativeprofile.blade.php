<table class="table table-condensed">
<tr style="text-align: center;font-weight: bold">
    <td>{{__('full name')}}</td>
    <td>{{__('Relationship')}}</td>
    <td>{{__('Company name')}}</td>
    <td>{{__('Position')}}</td>
    <td colspan="1">{{__('action')}}</td>
</tr>
@foreach($profile_relative as $relative)
<tr id="relative_{{$relative->id}}">
    <td><span class="text text-success"> {{ $relative->full_name }}</span></td>
    <td><span class="text text-success"> {{ $relative->type_relative }}</span></td>
    <td><span class="text text-success"> {{ $relative->name_organization }}</span></td>
    <td><span class="text text-success"> {{ $relative->position }}</span></td>
    <td>{{--<a href="javascripr:;" onclick="showProfileRelativeEditModal({{$relative->id }})" class="text text-warning">{{ __('Edit') }}</a>&nbsp;|&nbsp;--}}<a href="javascripr:;" onclick="delete_profile_relative({{ $relative->id}});" class="text text-danger">{{ __('Delete')}}</a></td>
</tr>

@endforeach
</table>