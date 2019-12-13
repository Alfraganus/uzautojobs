{!! APFrmErrHelp::showErrorsNotice($errors) !!}
<div class="form-body">
    <div class="form-group">
        <label class="bold">Название страницы : </label>
        <label class="bold" style="color:#06C;">{{ $seo->page_title }}</label>          
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'seo_title') !!}">
        {!! Form::label('seo_title', 'Название SEO', ['class' => 'bold']) !!}                    
        {!! Form::text('seo_title', null, array('class'=>'form-control', 'id'=>'seo_title', 'placeholder'=>'Название SEO')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'seo_title') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'seo_description') !!}">
        {!! Form::label('seo_description', 'SEO описание', ['class' => 'bold']) !!}                    
        {!! Form::textarea('seo_description', null, array('class'=>'form-control', 'id'=>'seo_description', 'placeholder'=>'SEO описание')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'seo_description') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'seo_keywords') !!}">
        {!! Form::label('seo_keywords', 'SEO Ключевые слова', ['class' => 'bold']) !!}                    
        {!! Form::textarea('seo_keywords', null, array('class'=>'form-control', 'id'=>'seo_keywords', 'placeholder'=>'SEO Ключевые слова')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'seo_keywords') !!}                                       
    </div>
    <div class="form-group {!! APFrmErrHelp::hasError($errors, 'seo_other') !!}">
        {!! Form::label('seo_other', 'Другие SEO-теги', ['class' => 'bold']) !!}                    
        {!! Form::textarea('seo_other', null, array('class'=>'form-control', 'id'=>'seo_other', 'placeholder'=>'Другие SEO-теги')) !!}
        {!! APFrmErrHelp::showErrors($errors, 'seo_other') !!}                                       
    </div>
</div>