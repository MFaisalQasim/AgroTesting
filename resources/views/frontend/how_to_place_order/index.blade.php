@extends('frontend.master')

@section('title')
How To Place Order | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
@endsection
@section('content')
<link rel="stylesheet" href="{{asset("assets_final/css/placeorder.css")}}">
<section class="light card-section ">
    <div class="container py-5">
        <article class="postcard light yellow">
            <div class="postcard__text t-dark">
                <h2 class="stck-text get-in-touch">How to Place order</h2>
                <h2 class="get-in-touch pt-lg-3 display-6">How T<span>o Place O</span>rder</h2>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt" style="color: #110f16">AgroAsia Tractors gives you facility to place
                    an order for Massey Ferguson tractors and farm equipments. You can place an order via telephone
                    call, email or visit our authroized sales representative office or locations.After getting your
                    order and contact details our sales person will get back to you with Pro-Forma Invoice to process
                    the payment through telgraphic transfer from customer bank account to company bank account as refer
                    to the profroma invoice that issued to you against your order. Once we will received the payment
                    confirmation against your order right away we’ll start shipment process and delivered your order on
                    your desired location in the specified time period.</div>
            </div>
            <div class="img-shodow">
                <img class="postcard__img" style="height: 500px" src="{{asset("assets_final/images/mf-240.jpg")}}"
                alt="Image Title" />
            </div>
        </article>
    </div>
</section>
<section id="section-5">
    @include('frontend.includes.contact_form')
</section>
@endsection
