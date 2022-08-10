<div class="form-group {{ $errors->has('name') ? 'has-error' : ''}}">
    <label for="name" class="col-md-4 control-label">{{ 'Name' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="name" type="text" id="name" value="{{ $contactformdatum->name or ''}}" required>
        {!! $errors->first('name', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('email') ? 'has-error' : ''}}">
    <label for="email" class="col-md-4 control-label">{{ 'Email' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="email" type="text" id="email" value="{{ $contactformdatum->email or ''}}" required>
        {!! $errors->first('email', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('number') ? 'has-error' : ''}}">
    <label for="number" class="col-md-4 control-label">{{ 'Number' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="number" type="text" id="number" value="{{ $contactformdatum->number or ''}}" required>
        {!! $errors->first('number', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('country') ? 'has-error' : ''}}">
    <label for="country" class="col-md-4 control-label">{{ 'Country' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="country" type="text" id="country" value="{{ $contactformdatum->country or ''}}" required>
        {!! $errors->first('country', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('tractor') ? 'has-error' : ''}}">
    <label for="tractor" class="col-md-4 control-label">{{ 'Tractor' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="tractor" type="text" id="tractor" value="{{ $contactformdatum->tractor or ''}}" >
        {!! $errors->first('tractor', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('implement1') ? 'has-error' : ''}}">
    <label for="implement1" class="col-md-4 control-label">{{ 'Implement1' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="implement1" type="text" id="implement1" value="{{ $contactformdatum->implement1 or ''}}" >
        {!! $errors->first('implement1', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('implement2') ? 'has-error' : ''}}">
    <label for="implement2" class="col-md-4 control-label">{{ 'Implement2' }}</label>
    <div class="col-md-6">
        <input class="form-control" name="implement2" type="text" id="implement2" value="{{ $contactformdatum->implement2 or ''}}" >
        {!! $errors->first('implement2', '<p class="help-block">:message</p>') !!}
    </div>
</div><div class="form-group {{ $errors->has('message') ? 'has-error' : ''}}">
    <label for="message" class="col-md-4 control-label">{{ 'Message' }}</label>
    <div class="col-md-6">
        <textarea class="form-control" rows="5" name="message" type="textarea" id="message" >{{ $contactformdatum->message or ''}}</textarea>
        {!! $errors->first('message', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        <input class="btn btn-primary" type="submit" value="{{ $submitButtonText or 'Create' }}">
    </div>
</div>
