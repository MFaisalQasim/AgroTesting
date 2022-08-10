<div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
    <label for="name" class="col-md-4 control-label">{{ 'Name' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="name" type="text" id="tractor_slug" value="{{ $tractor->name}}" >
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('tractor_slug') ? 'has-error' : ''}}">
    <label for="tractor_slug" class="col-md-4 control-label">{{ 'Tractor Slug' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="tractor_slug" type="text" id="tractor_slug" value="{{ $tractor->tractor_slug}}" >
        {!! $errors->first('tractor_slug', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {{ $errors->has('description') ? 'has-error' : ''}}">
    <label for="description" class="col-md-4 control-label">{{ 'Description' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" name="description" type="textarea" id="description" >{{ $tractor->description }}</textarea>
        {!! $errors->first('description', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('feature_description') ? 'has-error' : ''}}">
    <label for="feature_description" class="col-md-4 control-label">{{ 'Feature Description' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" name="feature_description" type="textarea" id="feature_description" >{{ $tractor->feature_description }}</textarea>
        {!! $errors->first('feature_description', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('technical_description') ? 'has-error' : ''}}">
    <label for="technical_description" class="col-md-4 control-label">{{ 'Technical Description' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" name="technical_description" type="textarea" id="technical_description" >{{ $tractor->technical_description }}</textarea>
        {!! $errors->first('technical_description', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('mannual') ? 'has-error' : ''}}">
    <label for="mannual" class="col-md-4 control-label">{{ 'Tractor Mannual' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="mannual" type="file" id="mannual" value="{{ $tractor->mannual }}" >
        {!! $errors->first('mannual', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group {{ $errors->has('brand') ? 'has-error' : ''}}">
    <label for="brand" class="col-md-4 control-label">{{ 'Select Brand' }}</label>
    <div class="col-md-6">
    <select name="brand_id" id="brand_id"  class="form-control">
             <option value="{{ $brandname->id }}" >{{ $brandname->name }}</option>
            @foreach($brandlist as $item)
                <option value="{{ $item->id }}" >{{ $item->name }}</option>
            @endforeach
    </select>
    {!! $errors->first('brand', '<p class="help-block">:message</p>') !!}
    </div>
</div>
<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{ 'Update' }}">
    </div>
</div>
