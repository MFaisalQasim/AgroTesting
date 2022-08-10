@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">HeaderScript {{ $headerscript->id }}</h3>
                    @can('view-'.str_slug('HeaderScript'))
                        <a class="btn btn-success pull-right" href="{{ url('/Scripts/header-script') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <!-- <tr>
                                <th>ID</th>
                                <td>{{ $headerscript->id }}</td>
                            </tr> -->
                            <!-- <tr><th> Admin Id </th><td> {{ $headerscript->admin_id }} </td></tr> -->
                            <tr><th> Country Slug </th><td> {{ $headerscript->country_slug }} </td></tr><tr><th> Tags </th><td> {{ $headerscript->tags }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

