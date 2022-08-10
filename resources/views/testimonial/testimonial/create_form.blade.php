<div class="form-group {{ $errors->has('image_path') ? 'has-error' : ''}}">
    <label for="image_path" class="col-md-4 control-label">{{ 'Image Path' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="image_path" type="file" id="image_path" value="{{ old('$testimonial->image_path') or ''}}" required>
        {!! $errors->first('image_path', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
    <label for="name" class="col-md-4 control-label">{{ 'Name' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="name" type="text" id="name" value="{{ old('$testimonial->name') or ''}}" required>
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('address') ? 'has-error' : ''}}">
    <label for="address" class="col-md-4 control-label">{{ 'Address' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="address" type="text" id="address" value="{{ old('$testimonial->address') or ''}}" required>
        {!! $errors->first('address', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('comment') ? 'has-error' : ''}}">
    <label for="comment" class="col-md-4 control-label">{{ 'Comment' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" name="comment" type="textarea" id="comment" required>{{ old('$testimonial->comment') or ''}}</textarea>
        {!! $errors->first('comment', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{'Create' }}">
    </div>
</div>
