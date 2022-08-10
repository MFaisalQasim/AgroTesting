<div class="form-group {{ $errors->has('path') ? 'has-error' : ''}}">
    <label for="path" class="col-md-4 control-label">{{ 'Path' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="path" type="file" id="path" value="" required>
        {!! $errors->first('path', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{'Insert'}}">
    </div>
</div>
