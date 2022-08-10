@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">ContactFormDatum {{ $contactformdatum->id }}</h3>
                    @can('view-'.str_slug('ContactFormDatum'))
                        <a class="btn btn-success pull-right" href="{{ url('/ContactForm_Data/contact-form-data') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $contactformdatum->id }}</td>
                            </tr>
                            <tr><th> Name </th><td> {{ $contactformdatum->name }} </td></tr><tr><th> Email </th><td> {{ $contactformdatum->email }} </td></tr><tr><th> Number </th><td> {{ $contactformdatum->number }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

