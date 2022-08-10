@extends('frontend.master')
@section('title')
Testimonail | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" />
<link rel="stylesheet" href="{{asset("assets_final/css/testimonials.css")}}">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
@endsection
@section('content')
<section>
    <img src="{{asset("assets_final/images/Massey-Ferguson-Tractors-Header-Image-1.jpg")}}" alt="..." class="w-100 h-75">
    <div class="container">
        <h2 class="get-in-touch"><span>Test</span>imonials</h2>
        <h2 class="bg-stroke">Our Clients</h2>
        <div class="owl-carousel owl-theme">
            @foreach ($testimonial as $item)
            <div class="item">
                <div class="box-2">
                    <div class="row">
                        <div class="col-4">
                            <img alt="..." style="width: 200px;height: 200px;" src="{{asset("$item->image_path")}}">
                        </div>
                        <div class="col-8">
                            <p>{{$item->comment}}</p><br>
                            <p><strong>{{$item->name}}</strong></p>
                            <p>{{$item->address}}</p>
                            <div class="quote-2"> &rdquo;</div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <p class="text-center divider">|</p>
    </div>
</section>
{{-- <section>
    <div class="container">
        <h2 class="get-in-touch"><span>Test</span>imonials</h2>
        <h2 class="bg-stroke">Our Clients</h2>
        <div class="owl-carousel owl-theme owl-carousel-2">
            @foreach ($testimonial as $item)
            <div class="item">
                <div class="box-3">
                    <div class="row">
                        <div class="col-4">
                            <img alt="..." src="{{asset("$item->Image_Path")}}" >
                        </div>
                        <div class="col-8">
                            <p>{{$item->Comment}}</p><br>
                            <p><strong>{{$item->Name}}</strong></p>
                            <p>{{$item->Address}}</p>
                            <div class="quote"> &rdquo;</div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
<section id="black">
    <div class="container">
        <h2 class="get-in-touch text-white"><span>Test</span>imonials</h2>
        <h2 class="bg-stroke">Our Clients</h2>
        <div class="owl-carousel owl-theme owl-carousel-3">
            @foreach ($testimonial as $item)
            <div class="item">
                <div class="">
                    <div class="row">
                        <div class="col-4">
                            <img alt="..." src="{{asset("$item->Image_Path")}}">
                        </div>
                        <div class="col-8">
                            <div class="test-3">
                                <p>{{$item->Comment}}
                                </p><br>
                            </div>
                            <div>
                                <p class="client"><strong>{{$item->Name}}</strong> - {{$item->Address}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section> --}}
@endsection
@section('script')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<script>
    $('.owl-carousel-3').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
    $('.owl-carousel-2').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 1
            }
        }
    })
    $('.owl-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        dots: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 1
            },
            1000: {
                items: 2
            }
        }
    })

</script>
@endsection
