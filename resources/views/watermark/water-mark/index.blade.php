@extends('layouts.master')

@push('css')
    <link href="{{asset('plugins/components/datatables/jquery.dataTables.min.css')}}" rel="stylesheet" type="text/css"/>
    <link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet"
          type="text/css"/>
@endpush

@section('content')
    <div class="container-fluid">
        <!-- .row -->
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box">
                 
                    <h3 class="box-title pull-left">Watermark</h3>
                    @can('add-'.str_slug('WaterMark'))
                        <a class="btn btn-success pull-right" href="{{ url('/watermark/water-mark/create') }}"><i
                                    class="icon-plus"></i> Add Watermark</a>
                             
                    @endcan
                    <div class="clearfix"></div>
                    <hr>
                          <a class="btn btn-success pull-left mr-3" href="/create_zipp" ><i
                                    class="icon-plus"></i>Make Zip</a>
                                   @foreach(File::glob(public_path('zipfile').'/*') as $path)
                              <a  class="btn btn-success pull-left " style=" margin-left: 10px; " download href="{{ str_replace("home2/adyancom/public_html/agrotesting/", '', $path) }}" >download
                                 Zip </a>
                              @endforeach
                     <a class="btn btn-success pull-right" href={{ route('watermark.delete.allfiles') }}><i
                                    class="icon-plus"></i>Delete All Images</a>
               
                                     <hr>
                                    </br>
                              @foreach(File::glob(public_path('watermark_images').'/*') as $path)
                              <a download href="{{ str_replace("home2/adyancom/public_html/agrotesting/", '', $path) }}" >
                               <img download src="{{ str_replace("home2/adyancom/public_html/agrotesting/", '', $path) }}" width="250px">
                              @endforeach

                </div>
            </div>
        </div>
    </div>

@endsection

@push('js')
    <script src="{{asset('plugins/components/toast-master/js/jquery.toast.js')}}"></script>

    <script src="{{asset('plugins/components/datatables/jquery.dataTables.min.js')}}"></script>
    <!-- start - This is for export functionality only -->
    <!-- end - This is for export functionality only -->
    <script>
        $(document).ready(function () {

            @if(\Session::has('message'))
            $.toast({
                heading: 'Success!',
                position: 'top-center',
                text: '{{session()->get('message')}}',
                loaderBg: '#ff6849',
                icon: 'success',
                hideAfter: 3000,
                stack: 6
            });
            @endif
        })

        $(function () {
            $('#myTable').DataTable({
                'aoColumnDefs': [{
                    'bSortable': false,
                    'aTargets': [-1] /* 1st one, start by the right */
                }]
            });

        });
    </script>

@endpush
