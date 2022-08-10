@extends('layouts.master')

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Faq {{ $faq->id }}</h3>
                    @can('view-'.str_slug('Faq'))
                        <a class="btn btn-success pull-right" href="{{ url('/Faq/faq') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    <div class="table-responsive">
                        <table class="table table">
                            <tbody>
                            <tr><th> Tractor Slug </th><td> {{ $faq->tractor_slug }} </td></tr><tr><th> Question </th><td> {{ $faq->question }} </td></tr>
                            <tr><th> Answer </th><td> {{ $faq->answer }} </td></tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

