@extends('frontend.master')
@section('title')
Gallery | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="{{asset("assets_final/css/gallery.css")}}">
@endsection
@section('content')
<section>
    <div class="container">
        <h2 class="get-in-touch">AgroAsia Tractors Gallery</h2>
        <h2 class="bg-stroke">Welcome to</h2>
        <p class="text-touch">Here you will find the pictoral stories of our success from day 1 of our operation till
            today. We will keep updating as we progress.<br>
            You will find our stock, packing, shipment and delivery pictures taken time to time.
        </p>
        <div class="text-center">
            <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home"
                        aria-selected="true">Images</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile"
                        aria-selected="false">Videos</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill"
                        data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact"
                        aria-selected="false">Stocks</button>
                </li>
            </ul>
        </div>
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                <div class="row">
                    <div id="html-item-pagination" class="hip-grid">
                        @foreach ($images as $item)
                        <div class="hip-item mx-5 ">
                            <img class="w-100 h-100" alt="..." src="{{asset("$item->images")}}">
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                <div class="row">
                    <div id="html-item-pagination" class="hip-grid">
                        <div class="hip-item mx-5 ">
                            <video width="400" controls>
                                @foreach ($gallery as $item)
                                <source src="{{asset("$item->path")}}" type="video/mp4">
                                Your browser does not support HTML video.
                            </video>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">...</div>
        </div>
    </div>
    {{-- <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" tabindex="-1" aria-disabled="true"><i class="fas fa-caret-left"></i></a>
            </li>
            <li class="page-item active"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item">
                <a class="page-link" href="#"><i class="fas fa-caret-right"></i></a>
            </li>
        </ul>
    </nav> --}}
</section>
@endsection
@section('script')
<script type="text/javascript" src="{{asset("lib/hip.js")}}"></script>
<script>
    $(document).ready(function () {
        $("#html-item-pagination").hip({
            itemHeight: '200px',
            itemsPerPage: 12,
            itemsPerRow: 4,
            itemGaps: '20px',
            paginationPos: 'left'
        });
    });

</script>

@endsection
