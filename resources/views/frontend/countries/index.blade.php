@extends('frontend.master')
@section('title')
Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
{!!$country->description!!}
@endsection
@section('content')
<div class="d-wrap">
    <main>
        @include('frontend.includes.demo')
        <section id="banner">
            @include('frontend.includes.carousel_slide')
        </section>
        <div class="container">
            <div class="row">
                <div class="col-md-2">
                    <section id="filter-section">
                        @include('frontend.includes.side_navbar')
                    </section>
                </div>
                <div class="col-md-8">
                    @include('frontend.includes.enquiry_form')
                    <section id="section-1">
                        <div class="container">
                            <div class="col-md-12">
                                <h1 class="heading">Massey Ferguson Tractors, <span>New Holland & Ford Tractors From
                                        Pakistan</span>
                                </h1><br>
                                <p class="content">Agro Asia Tractors understand that; Agriculture is an essential
                                    part
                                    of our lives. With the growing population, demand for agriculture is also
                                    increasing. To meet the demands, farmers have switched to advanced ways and
                                    machinery. Tractors are proven to be the most efficient machinery, as they have
                                    made
                                    the life of farmers easy. Agro Asia tractors aim to help farmers around the
                                    world by
                                    providing world-renowned Massey Ferguson, New Holland, and Ford tractors along
                                    with
                                    export quality Farm Implements.
                                </p><br>
                                <span  onclick="more()" id="myBtn">Read more >></span>
                                <br><br>
                                <span id="more" style="display: none;">
                                    People of Africa are not behind in embracing the change and have begun to adopt
                                    the
                                    changes. Tractors and farm implements are being introduced into their
                                    agriculture
                                    and to aid in this process, Agro Asia tractors aims to make the lives of people
                                    living in Africa pleasant, productive, prosperous and, green by proposing the
                                    brand-new best-priced and top-quality tractors from Massey Ferguson, New Holland
                                    and, Ford ranging from 50hp to 85hp. We also offer the best quality and
                                    cost-effective farm implements and accessories, with our diverse tractor range.
                                    </>
                                    <br>
                                    <p class="content-hide">For 3 successful decades, Agro Asia Tractors Pakistan is
                                        in
                                        business with all major African countries such as Nigeria, Kenya, Botswana,
                                        Ghana, Uganda, Zimbabwe, Zambia, Tanzania, and many others. We are proud to
                                        give
                                        all our customers the best service and shipping schedule, and the reward is
                                        that
                                        our customers are always satisfied with our services.</p>
                                </span>
                            </div>
                        </div>
                    </section>
                    <section id="section-2">
                        <div class="container">
                            <h1 class="heading">Massey Ferguson Tractors <span>(50HP to 85HP)</span> In {{$country->name}}
                            </h1><br>
                            <div class="row">
                                @foreach ($mf as $item)
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <div class="box">
                                        <img class="d-block w-100 h-100" style="width:100px,height:100px"  src="{{asset($item->getfrontTractorImages['images'])}}" alt="...">
                                        <h6 class="title-product">{{$item->name}}
                                        </h6>
                                        <a href="{{ route('frontend.countries.product', ['c_slag'=>$country->link,'slag'=>$item->tractor_slug,'country'=>$country->name]) }}">
                                            <button class="btn-details">View Details</button></a>
                                        <button  data-whatever="{{$item->name}}" class="btn-order" data-bs-toggle="modal" data-bs-target="#myModal2">Order Now</button>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                            <a href="{{ route('frontend.massey_ferguson_tractors.index') }}"><button class="btn-view">View More</button></a>
                        </div>
                    </section>
                    <section id="section-3">
                        <div class="container">
                            <h1 class="heading">New Holland Tractors <span>(50HP to 85HP)</span> In {{$country->name}}
                            </h1><br>
                            <div class="row">
                                @foreach ($nh as $item)
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <div class="box">
                                        <img class="d-block w-100 h-100" style="width:100px,height:100px" src="{{asset($item->getfrontTractorImages['images'])}}" alt="...">
                                        <h6 class="title-product">{{$item->name}}
                                        </h6>
                                        <a href="{{ route('frontend.countries.product', ['c_slag'=>$country->link,'slag'=>$item->tractor_slug,'country'=>$country->name]) }}">
                                            <button class="btn-details">View Details</button></a>
                                            <button  data-whatever="{{$item->name}}" class="btn-order" data-bs-toggle="modal" data-bs-target="#myModal2">Order Now</button>
                                    </div>
                                </div>
                                @endforeach
                    
                            </div>
                            <a href="{{ route('frontend.new_holland_tractors.index') }}"><button class="btn-view">View More</button></a>
                    
                        </div>
                    </section>
                    <section id="section-4">
                        <div class="container">
                            <h1 class="heading">Brand New Agricultural Farm Implements In {{$country->name}}
                            </h1><br>
                            <div class="row">
                                @foreach ($imp as $item)
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <div class="box">
                                        <img class="d-block w-100 h-100" style="width:100px,height:100px" src="{{asset($item->getfrontTractorImages['images'])}}" alt="...">
                                        <h6 class="title-product">{{$item->name}}
                                        </h6>
                                        <a href="{{ route('frontend.countries.product', ['c_slag'=>$country->link,'slag'=>$item->tractor_slug,'country'=>$country->name]) }}">
                                            <button class="btn-details">View Details</button></a>
                                            <button  data-whatever="{{$item->name}}" class="btn-order" data-bs-toggle="modal" data-bs-target="#myModal2">Order Now</button>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                            <a href="{{ route('frontend.farm_implements.index') }}"><button class="btn-view">View More</button></a>
                        </div>
                    </section>

                    <section id="section-5">
                        @include('frontend.includes.contact_form')
                    </section>
                </div>
                <div class="col-md-2">
                    <section id="ad-section">
                        @include('frontend.includes.ad')
                    </section>
                </div>
            </div>
        </div>
    </main>
</div>
@endsection
@section('script')
<script src="{{asset("assets_final/js/enquirymodel.js")}}"></script>
@endsection
