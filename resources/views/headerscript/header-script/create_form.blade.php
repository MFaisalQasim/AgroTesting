<div class="form-group {{ $errors->has('country_slug') ? 'has-error' : ''}}">
    <label for="country_slug" class="col-md-4 control-label">{{ 'Select Country' }}</label>
    <div class="col-md-6">
    <select name="country_slug" id="country_slug" class="form-control">
            @foreach($countrySlugs as $items)
                <option value="{{ $items->name }}" >{{ $items->name }}</option>
            @endforeach
    </select>
    {!! $errors->first('country_slug', '<p class="help-block">:message</p>') !!}
    </div>
</div>



<div class="form-group {{ $errors->has('tags') ? 'has-error' : ''}}">
    <label for="tags" class="col-md-4 control-label">{{ 'Tags' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" cols="5" name="tags" type="text" id="tags" value="{{old ('$headerscript->tags') or ''}}" required> </textarea>
        {!! $errors->first('tags', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{'Create' }}">
    </div>
</div>
