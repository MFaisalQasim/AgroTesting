@push('css')
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
@endpush
<div class="form-group {{ $errors->has('tractor_slug') ? 'has-error' : ''}}">
    <label for="tractor_slug" class="col-md-4 control-label">{{ 'Tractor Slug' }}</label>
    <div class="col-md-6">
    <select name="tractor_slug" id="tractor_slug" class=" select2 form-control">
            @foreach($slag as $item)
                <option value="{{ $item->tractor_slug }}" >{{ $item->tractor_slug }}</option>
            @endforeach
    </select>
    {!! $errors->first('tractor_slug', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {{ $errors->has('question') ? 'has-error' : ''}}">
    <label for="question" class="col-md-4 control-label">{{ 'Question' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="question" type="text" id="question" value="{{ old('faq->question') or ''}}"
            required>
        {!! $errors->first('question', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {{ $errors->has('answer') ? 'has-error' : ''}}">
    <label for="answer" class="col-md-4 control-label">{{ 'Answer' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="answer" type="text" id="answer" value="{{ old('faq->answer') or ''}}"
            required>
        {!! $errors->first('answer', '<p class="help-block">:message</p>') !!}
    </div>
</div>



<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{'Insert' }}">
    </div>
</div>
<script>
    $('.select2').select2();
</script>