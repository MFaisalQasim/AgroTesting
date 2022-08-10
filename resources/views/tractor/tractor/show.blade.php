@extends('layouts.master')

@section('content')
<div class="container-fluid">
    <!-- .row -->
    <div class="row">
        <div class="col-sm-12">
            <div class="white-box">
                <h3 class="box-title pull-left">Details  {{ $tractor->name }}</h3>
                @can('view-'.str_slug('Tractor'))
                <a class="btn btn-success pull-right" href="{{ url('/tractor') }}">
                    <i class="icon-arrow-left-circle" aria-hidden="true"></i> Back</a>
                @endcan
                <div class="clearfix"></div>
                <hr>
                <div class="table-responsive">
                    <table class="table table">
                        <tbody>
                            <tr>
                                <th>ID</th>
                                <td>{{ $tractor->id }}</td>
                            </tr>
                            <tr>
                                <th> Name </th>
                                <td> {{ $tractor->name }} </td>
                            </tr>
                            <tr>
                                <th> Tractor Slug </th>
                                <td> {{ $tractor->tractor_slug }} </td>
                            </tr> 
                            <tr>
                                <th> Brand Name </th>
                                <td> {{ $brandname->name }} </td>
                            </tr> 
                             
                            <tr>
                                <th> Description </th>
                                <td> {{ $tractor->description }} </td>
                            </tr>
                            <tr>
                                <th> Feature Description </th>
                                <td> {{ $tractor->feature_description }} </td>
                            </tr>
                            <tr>
                                <th> Technical Description </th>
                                <td> {{ $tractor->technical_description }} </td>
                            </tr>
                            @if ($tractor->mannual!=NUll)
                            <tr>
                                <th> Tractor Mannual </th>
                                <td><button class="btn btn-success"><a download style="color:white;"
                                         href={{asset($tractor->mannual) }}>Download</a></button>
                                 </td>
                            </tr>
                            @endif
                           
                            <tr>
                                <th>Tractor Images </th>
                                <td> 
                                    
                                @foreach($getTractorImages as $image)
                                    <div  class="img_wrp">
                                        <span class="close">&times;<input type="hidden" name="img_id" class="img_id"
                                                value="{{$image->id}}"></span>
                                        <img class="img-fluid" style="width:100px; height:50px" src="{{$image->images }}" alt=""> 
                                    </div>
                                @endforeach
                                <form action="{{ route('tractor.images',$tractor->id) }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div style="margin-top: 30px">
                                        <div class="col-sm-4">
                                            <input class="files form-control form-control-lg" name="images[]" type="file" accept="image/*" multiple
                                            required />
                                        </div>
                                        <div class="col">
                                            <input type="submit" name="Upload" class="Upload btn btn-primary "
                                            value="Upload image">
                                        </div>
                                      </div>
                                </form>
                            </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@push('js')
<script>
    $(document).ready(function () {
        $(document).on("click", ".close", function () {
            var id = $(this).children().val();
            var url = "{{URL('delete_img')}}";
            var dltUrl = url + "/" + id;
            $.ajax({
                url: dltUrl,
                type: "GET",
                cache: false,
                data: {
                    _token: '{{ csrf_token() }}'
                },
                success: function (dataResult) {
                        location.reload();
                }
            });
        });

    });

</script>
@endpush