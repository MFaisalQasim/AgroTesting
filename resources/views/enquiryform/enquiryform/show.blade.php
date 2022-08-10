@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Enquiryform {{ $enquiryform->id }}</h3>
                    @can('view-'.str_slug('Enquiryform'))
                        <a class="btn btn-success pull-right" href="{{ url('/Enquiry_form/enquiryform') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $enquiryform->id }}</td>
                            </tr>
                            <tr><th> Model </th><td> {{ $enquiryform->model }} </td></tr><tr><th> QTY </th><td> {{ $enquiryform->QTY }} </td></tr><tr><th> Name </th><td> {{ $enquiryform->name }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

