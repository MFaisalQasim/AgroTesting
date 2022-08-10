@extends('layouts.master')
@push('css')
    <link href="{{asset('plugins/components/morrisjs/morris.css')}}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
        <!-- row -->
        <div class="row">
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Product line Chart</h3>
                    <ul class="list-inline text-right">
                        <li>
                            <h5><i class="fa fa-circle text-info m-r-5"></i>iPhone</h5> </li>
                        <li>
                            <h5><i class="fa fa-circle text-warning m-r-5"></i>iPad</h5> </li>
                        <li>
                            <h5><i class="fa fa-circle text-purple m-r-5"></i>iPod</h5> </li>
                    </ul>
                    <div id="morris-area-chart"></div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Site visit Chart</h3>
                    <ul class="list-inline text-right">
                        <li>
                            <h5><i class="fa fa-circle m-r-5 text-info"></i>Site A View</h5> </li>
                        <li>
                            <h5><i class="fa fa-circle m-r-5 text-warning"></i>Site B View</h5> </li>
                    </ul>
                    <div id="morris-area-chart2"></div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- .row -->
        <div class="row">
            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Line Chart</h3>
                    <div id="morris-line-chart"></div>
                </div>
            </div>
            <div class="col-md-6 col-lg-6 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Donute Chart</h3>
                    <div id="morris-donut-chart"></div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- .row -->
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Bar Chart</h3>
                    <div id="morris-bar-chart"></div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        <!-- .row -->
        <div class="row">
            <div class="col-md-12 col-lg-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">Extra Area Chart</h3>
                    <ul class="list-inline text-center m-t-40">
                        <li>
                            <h5><i class="fa fa-circle text-success m-r-5"></i>Site A</h5> </li>
                        <li>
                            <h5><i class="fa fa-circle text-primary m-r-5"></i>Site B</h5> </li>
                        <li>
                            <h5><i class="fa fa-circle text-warning m-r-5"></i>Site C</h5> </li>
                    </ul>
                    <div id="extra-area-chart"></div>
                </div>
            </div>
        </div>
        <!-- /.row -->
        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
    <!--Morris JavaScript -->
    <script src="{{asset('plugins/components/raphael/raphael-min.js')}}"></script>
    <script src="{{asset('plugins/components/morrisjs/morris.js')}}"></script>
    <script src="{{asset('js/morris-data.js')}}"></script>
@endpush
