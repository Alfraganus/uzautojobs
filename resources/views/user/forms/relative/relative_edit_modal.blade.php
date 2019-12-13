<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form class="form" id="add_edit_profile_relative" method="PUT" action="{{ route('update.front.profile.relative', [$profileRelative->id]) }}">{{ csrf_field() }}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Qarindoshlarni tahrirlash</h4>
            </div>
            <h1>working fine</h1>
{{--            @include('user.forms.relative.relative_form')--}}
            <div class="modal-footer">
                <button type="button" class="btn btn-large btn-primary" onClick="showProfileRelativeEditModal();">{{__('Update Education')}} <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
            </div>
        </form>
    </div>
    <!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->