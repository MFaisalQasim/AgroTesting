@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">CountryList {{ $countrylist->id }}</h3>
                    @can('view-'.str_slug('CountryList'))
                        <a class="btn btn-success pull-right" href="{{ url('/country-list') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $countrylist->id }}</td>
                            </tr>
                            <tr><th> Name </th><td> {{ $countrylist->name }} </td></tr><tr><th> Link </th><td> {{ $countrylist->link }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

