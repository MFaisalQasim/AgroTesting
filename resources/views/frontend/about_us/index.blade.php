@extends('frontend.master')
@section('title')
About Us | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="assets_final/css/about.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
@endsection
@section('content')
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h4>AgroAsia Tractors</h4>
                <h4><strong>A few words<br>about us</strong></h4>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home"
                            type="button" role="tab" aria-controls="home" aria-selected="true">About Us</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile"
                            type="button" role="tab" aria-controls="profile" aria-selected="false">Our Vision</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact"
                            type="button" role="tab" aria-controls="contact" aria-selected="false">Our Mission</button>
                    </li>
                </ul>
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show my-5 active" id="home" role="tabpanel" aria-labelledby="home-tab">Though Africa and Pakistan are KMs and oceans apart, they have the same history and struggle. They are the opposite side of the same coin. In the 1880s governed by and remained under the domain of the thrown having the principal chair in England, the smoke and "buzz buzz" of the brand new Massey Fergusons within Pakistan and Africa now are at liberty to spread around without fear of the red uniform's rules. 
                        Asia's Green has made Africa Green: Much like Pakistan, African countries own their existence and stability due to their agriculture and farming. In that, we at AgroAsia tractors are contributing for decades. Due to their high demand in the African markets, tractors from Pakistan have made AgroAsia Tractors the priority and choice of each and every African farmer. Operating from Pakistan since 1991, we are an ISO 9001-2015 Certified agriculture equipment company for African farmers.</div>
                    <div class="tab-pane fade my-5" id="profile" role="tabpanel" aria-labelledby="profile-tab">Lorem Ipsum is
                        simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's
                        standard dummy text ever since the 1500s, when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book.</div>
                    <div class="tab-pane fade my-5" id="contact" role="tabpanel" aria-labelledby="contact-tab">Our only mantra and goal is the satisfaction of our clients and no-compromise-on-quality. We always eye to provide our customers with superior service, the best long-term value, and maximum relief in the form of low-rates. We are rooting clients' trust and more growth by manufacturing, designing, marketing specialized and high-quality products like the brand new Massey Ferguson.</div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="text-center">
                    <img class="big-p" src="{{asset("Images/mf-240-1.jpg")}}" alt="{{asset("Images/mf-240-1.jpg")}}" width="400">
                </div>
                <div class="row">
                    <div class="col-4">
                        <img src="{{asset("Images/mf-260-turbo-1.jpg")}}"  alt="{{asset("Images/mf-260-turbo-1.jpg")}}" width="100">
                    </div>
                    <div class="col-4">
                        <img src="{{asset("Images/mf-290-1.jpg")}}" alt="{{asset("Images/mf-290-1.jpg")}}" width="100">
                    </div>
                    <div class="col-4">
                        <img src="{{asset("Images/mf-375-4wd.jpg")}}" alt="{{asset("Images/mf-375-4wd.jpg")}}" width="100">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="grey">
    <h2 class="get-in-touch text-white">Our Team</h2>
    <h2 class="bg-stroke">Our Team</h2>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-lg-3">
                <div class="text-center text-white">
                    <img class="dp" srcset="{{asset("Images/atif.jpg")}} 1x" src="{{asset("Images/atif.jpg")}}" alt="..." style="border-radius: 50%; width: 200px; height: 200px;">
                    <h2><strong>Atif Ur Rehman</strong></h2>
                    <p>Managing Director <br></p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="text-center text-white">
                    <img class="dp" srcset="{{asset("Images/usama.jpg")}} 1x" src="{{asset("Images/usama.jpg")}}"  alt="..." style="border-radius: 50%; width: 200px; height: 200px;">
                    <h2><strong>Usama Bin Nazar</strong></h2>
                    <p>Director Sales <br></p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="text-center text-white">
                    <img class="dp" srcset="{{asset("Images/zain.jpg")}} 1x" src="{{asset("Images/zain.jpg")}}"   alt="..."style="border-radius: 50%; width: 200px; height: 200px;">
                    <h2><strong>Zain Arhsad</strong></h2>
                    <p>Director Procurement <br> </p>
                </div>
            </div>
            <div class="col-md-6 col-lg-3">
                <div class="text-center text-white">
                    <img class="dp" srcset="{{asset("Images/ismail.jpg")}} 1x" src="{{asset("Images/ismail.jpg")}}" alt="..."  style="border-radius: 50%; width: 200px; height: 200px;">
                    <h2><strong>Ismail Rehman</strong></h2>
                    <p>Director IT & Support <br>
                        </p>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="black">
    <div class="container">
        <h2 class="get-in-touch text-white bg-stroke"><span>Test</span>imonials</h2>
        <!--<h2 class="bg-stroke">Our Clients</h2>-->
        <div id="owl-carousel-3" class="owl-carousel owl-theme owl-carousel-3">
            @foreach ($testimonial as $item)
            <div class="item">
                <div class="">
                    <div class="row">
                        <div class="col-4">
                            <img src="{{asset("$item->image_path")}}" class="" alt="...">
                        </div>
                        <div class="col-8">
                            <div class="test-3">
                                <p>{{$item->comment}}</p><br>
                            </div>
                            <div>
                                <p class="client"><strong>{{$item->name}}</strong> - {{$item->address}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection
@section('script')
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<script>
    $('.owl-carousel-3').owlCarousel({
        navigation: true,
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

</script>
@endsection
