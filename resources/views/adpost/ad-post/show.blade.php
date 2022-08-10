@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">AdPost {{ $adpost->id }}</h3>
                    @can('view-'.str_slug('AdPost'))
                        <a class="btn btn-success pull-right" href="{{ url('/Ad_Post/ad-post') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $adpost->id }}</td>
                            </tr>
                            <tr><th> Path </th><td><img src="{{ asset("$adpost->path") }}" width="115" alt="...">  </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

