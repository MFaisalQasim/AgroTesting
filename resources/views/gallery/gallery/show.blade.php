@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Gallery {{ $gallery->id }}</h3>
                    @can('view-'.str_slug('Gallery'))
                        <a class="btn btn-success pull-right" href="{{ url('/gallery/gallery') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr><th> Path </th><td>
                            <video width="320" height="240" controls>
                                    <source src="{{asset('upload/' . $gallery->path)}}">
                                    </video>        
                            </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection

