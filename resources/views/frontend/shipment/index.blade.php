@extends('frontend.master')

@section('title')
How To Place Order | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="{{asset("assets_final/css/shipment.css")}}">
@endsection
@section('content')
@include('frontend.includes.demo')
<section id="banner">
    @include('frontend.includes.carousel_slide')
</section>
<h2 class="get-in-touch mt-5">AgroAsia Tractors -<span> Exporter</span> of Agricultural </h2>
<div>
    <p class="text-touch" style="font-size: 20px;">The shipment process starts from the day, the payment is reflected in
        our bank account.
        Different countries have different shipment duration depending on the frequency of the shipping line operating
        for the destination.
        Our major destinations are as follows and the shipment duration is mentioned as respectively:
    </p>
</div>

<div>
    <ul class="list-group list-div text-center shadow-lg my-5">
        <li class="list-group-item ">Botswana - 7 weeks</li>
        <li class="list-group-item">Kenya - 5 weeks</li>
        <li class="list-group-item">Uganda - 3 weeks</li>
        <li class="list-group-item">Nigeria - 5 weeks</li>
        <li class="list-group-item">Tenzania - 5 weeks</li>
        <li class="list-group-item">Zambia - 5 weeks</li>
        <li class="list-group-item">South Afarica - 4 weeks</li>
        <li class="list-group-item">Lesatho - 5 weeks</li>
      </ul>
</div>
<section class="light card-section">
    <div class="container" >
        <article class="postcard light yellow">
            <div class="postcard__text t-dark">
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt" style="color: #110f16">We offer containerized shipment In 20ft and
                    40ft container which is determined according to the order list, we have different shipment which is
                    CKD, SKD, assembled and semi unassembled. Our shipment department carries shipping experience of
                    over a decade and has a specialized team who look after every small detail require during the
                    loading from Truck to the Ship..</div>

            </div>
            <div class="img-shodow">
                    <img class="postcard__img" style="height: 400px" src="{{asset("assets_final/images/mf-240.jpg")}}"
                    alt="Image Title" />
            </div>
        </article>
    </div>
</section>
<section id="section-5">
    @include('frontend.includes.contact_form')
</section>
@endsection
