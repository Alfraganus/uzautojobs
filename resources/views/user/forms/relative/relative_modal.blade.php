<div class="modal-dialog modal-lg">
    <div class="modal-content">
        <form class="form" id="div_relative_id" method="POST" action="{{ route('store.front.profile.relative', [$user->id]) }}">{{ csrf_field() }}
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title"> {{__('relatives')}}</h4>
            </div>
            @include('user.forms.relative.relative_form')
            <div class="modal-footer">
                <button type="button" class="btn btn-large btn-primary" onClick="submitProfileRelativeForm();">{{__('Submit')}}<i class="fa fa-arrow-circle-right" aria-hidden="true"></i></button>
            </div>
        </form>
    </div>
    <!-- /.modal-content --> 
</div>
<!-- /.modal-dialog -->