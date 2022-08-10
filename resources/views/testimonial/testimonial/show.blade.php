@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Testimonial {{ $testimonial->id }}</h3>
                    @can('view-'.str_slug('Testimonial'))
                        <a class="btn btn-success pull-right" href="{{ url('/Testimonial/testimonial') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <th> Image Path </th><td> 
                             <img class="img-fluid" style="width:100px; height:50px" src="{{asset("upload/" .$testimonial->image_path)}}" alt="">
                        </td></tr><tr><th> Name </th><td> {{ $testimonial->name }} </td></tr>
                            <tr><th> Address </th><td> {{ $testimonial->address }} </td></tr><tr>
                            <tr><th> Comment </th><td> {{ $testimonial->comment }} </td></tr><tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

