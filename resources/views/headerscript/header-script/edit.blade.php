@extends('layouts.master')
@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title pull-left">Edit HeaderScript #{{ $headerscript->id }}</h3>
                    @can('view-'.str_slug('HeaderScript'))
                        <a class="btn btn-success pull-right" href="{{ url('/Scripts/header-script') }}">
                            <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                    @if ($errors->any())
                        <ul class="alert alert-danger">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    @endif

                    <form method="POST" action="{{ route('header-script.update', $headerscript->id) }}" accept-charset="UTF-8" class="form-horizontal" enctype="multipart/form-data">
                  
                        {{ csrf_field() }}

                        @include ('headerscript.header-script.form', ['submitButtonText' => 'Update'])

                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
