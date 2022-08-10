@extends('layouts.master')

@push('css')
<link href="{{asset('plugins/components/datatables/jquery.dataTables.min.css')}}" rel="stylesheet" type="text/css" />
<link href="https://cdn.datatables.net/buttons/1.2.2/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" />
@endpush

@section('content')
<div class="container-fluid">
    <!-- .row -->
    <div class="row">
        <div class="col-sm-12">
            <div class="white-box">
                <h3 class="box-title pull-left">Contactformdata</h3>
                @can('add-'.str_slug('ContactFormDatum'))
                <a class="btn btn-success pull-right" href="{{ url('/ContactForm_Data/contact-form-data/create') }}"><i
                        class="icon-plus"></i> Add Contactformdata</a>
                @endcan
                <div class="clearfix"></div>
                <hr>
                <div class="table-responsive">
                    <table class="table" id="myTable">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Number</th>
                                <th>country</th>
                                <th>Tractor</th>
                                <th>Implement1</th>
                                <th>Implement2</th>
                                <th>message</th>
                                {{-- <th>Actions</th> --}}
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($contactformdata as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $item->name }}</td>
                                <td>{{ $item->email }}</td>
                                <td>{{ $item->number }}</td>
                                <td>{{ $item->country }}</td>
                                <td>{{ $item->tractor }}</td>
                                <td>{{ $item->implement1 }}</td>
                                <td>{{ $item->implement2 }}</td>
                                <td>{{ $item->message }}</td>
                                <td>
                                    {{-- @can('view-'.str_slug('ContactFormDatum'))
                                    <a href="{{ url('/ContactForm_Data/contact-form-data/' . $item->id) }}"
                                        title="View ContactFormDatum">
                                        <button class="btn btn-info btn-sm">
                                            <i class="fa fa-eye" aria-hidden="true"></i> View
                                        </button>
                                    </a>
                                    @endcan --}}

                                    @can('edit-'.str_slug('ContactFormDatum'))
                                    <a href="{{ url('/ContactForm_Data/contact-form-data/' . $item->id . '/edit') }}"
                                        title="Edit ContactFormDatum">
                                        <button class="btn btn-primary btn-sm">
                                            <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit
                                        </button>
                                    </a>
                                    @endcan

                                    @can('delete-'.str_slug('ContactFormDatum'))
                                    <form method="POST"
                                        action="{{ url('/ContactForm_Data/contact-form-data' . '/' . $item->id) }}"
                                        accept-charset="UTF-8" style="display:inline">
                                        {{ method_field('DELETE') }}
                                        {{ csrf_field() }}
                                        <button type="submit" class="btn btn-danger btn-sm"
                                            title="Delete ContactFormDatum"
                                            onclick="return confirm(&quot;Confirm delete?&quot;)"><i
                                                class="fa fa-trash-o" aria-hidden="true"></i> Delete
                                        </button>
                                    </form>
                                    @endcan


                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="pagination-wrapper"> {!! $contactformdata->appends(['search' =>
                        Request::get('search')])->render() !!} </div>
                </div>
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
            text: '{{session()->get('
            message ')}}',
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