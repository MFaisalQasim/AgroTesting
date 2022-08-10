@extends('frontend.master')
@section('title')
Massey Ferguson Tractors | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
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
                    <section id="section-2">
                        <div class="container">
                            <h1 class="heading">Massey Ferguson Tractors <span>(50HP to 85HP)</span>
                            </h1><br>
                            <div class="row">
                                @foreach ($mf as $item)
                                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-xs-12">
                                    <div class="box">
                                        <img class="d-block w-100 h-100" style="width:100px,height:100px"  src="{{asset($item->getfrontTractorImages['images'])}}" alt="...">
                                        <h6 class="title-product">{{$item->name}}
                                        </h6>
                                        <a href="{{ route('frontend.product.index', ['brand'=>$item->getBrandName['name'],'slag'=>$item->tractor_slug]) }}">
                                            <button class="btn-details">View Details</button></a>
                                        <button  data-whatever="{{$item->name}}" class="btn-order" data-bs-toggle="modal" data-bs-target="#myModal2">Order Now</button>
                                    </div>
                                </div>
                                @endforeach
                            </div>
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