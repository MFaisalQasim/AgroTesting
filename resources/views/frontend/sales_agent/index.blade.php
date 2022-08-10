@extends('frontend.master')

@section('title')
How To Place Order | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="{{asset("assets_final/css/bank.css")}}">
@endsection
@section('content')
<section class="light">
    <div class="container py-5">
        <article class="postcard light yellow">
            <div class="postcard__text t-dark">
                <h2 class="postcard_heading " style="color: #110f16">Sales A<span>gent Aroutn </span>The World</h2>
                <div class="postcard__bar"></div>
                <div class="postcard__preview-txt" style="color: #110f16">AGROASIATRACTORS has been serving the farming community all over Africa and different countries in Australasia and Europe as well. Our Sales Representative are based and available to assist in their capacity to the farmers who are interested in buying the tractor FROM AGROASIATRACTORS.COM, our sales representative are based in the following countries.</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Botswana</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Kenya</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Uganda</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Nigeria</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Tenzania</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Zambia</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">South Afarica</div>
                <div class="shadow-lg p-3 mx-2 my-2 btn rounded" style="color: #110f16">Lesatho</div>
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
