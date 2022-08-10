@extends('layouts.master')
@push('css')
@endpush

@section('content')
    <div class="container-fluid">
        <!-- row -->
        <div class="row">
            <div class="col-md-12">
                <h4>Examples <br/><small>Add <code> data-plugin="knob" data-width="xx" data-height="xx" data-fgColor="#xxx" data-displayInput=.. value="xxx" </code></small></h4>
                <hr> </div>
        </div>
        <!-- /.row -->
        <!-- row -->
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-bgColor="#ebeff2" data-fgColor="#e74a25" data-displayInput=false value="50" />
                    <h6 class="text-muted m-t-10">Disable display input</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-cursor=true data-fgColor="#2ecc71" value="75" />
                    <h6 class="text-muted m-t-10">Cursor mode</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-min="-100" data-fgColor="#ffb136" data-displayPrevious=true value="89" />
                    <h6 class="text-muted m-t-10">Display previous value</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-min="-100" data-fgColor="#0283cc" data-displayPrevious=true data-angleOffset=-125 data-angleArc=250 value="56" />
                    <h6 class="text-muted m-t-10">Angle offset and arc</h6> </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- row -->
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-angleOffset="90" data-linecap="round" data-fgColor="#00bbd9" value="90" />
                    <h6 class="text-muted m-t-10">Angle offset</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-min="-15000" data-displayPrevious=true data-max="15000" data-step="1000" value="10000" data-fgColor="#2b2b2b" />
                    <h6 class="text-muted m-t-10">5-digit values, step 1000</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-linecap=round data-fgColor="#4a23ad" value="40" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />
                    <h6 class="text-muted m-t-10">Readonly</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="150" data-height="150" data-displayPrevious=true data-fgColor="#0078bc" data-skin="tron" data-cursor=true value="75" data-thickness=".2" data-angleOffset=-125 data-angleArc=250 value="54" />
                    <h6 class="text-muted m-t-10">Angle offset and arc</h6> </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- row -->
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="180" data-height="180" data-linecap=round data-fgColor="#2ecc71" value="67" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />
                    <h6 class="text-muted m-t-10">Readonly</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="120" data-height="120" data-linecap=round data-fgColor="#00bbd9" value="70" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />
                    <h6 class="text-muted m-t-10">Readonly</h6> </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="white-box text-center">
                    <input data-plugin="knob" data-width="60" data-height="60" data-linecap=round data-fgColor="#4a23ad" value="60" data-skin="tron" data-angleOffset="180" data-readOnly=true data-thickness=".1" />
                    <h6 class="text-muted m-t-10">Readonly</h6> </div>
            </div>
        </div>
        <!-- /.row -->
        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
    <script src="{{asset('plugins/components/knob/jquery.knob.js')}}"></script>
    <script>
        $(function() {
            $('[data-plugin="knob"]').knob();
        });
    </script>
@endpush

