@extends('frontend.master')
@section('title')
{{$product_details->name}} | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
<link rel="stylesheet" href="{{asset("assets_final/css/product.css")}}">
@endsection
@section('content')
@include('frontend.includes.enquiry_form')
<section>
    <h2 class="heading-p">Brand new {{$product_details->name}}<br> Tractors for Sale </h2>
    <h2 class="heading-p"></h2>
    <div class="container">
        <div class="row">
            <div class="col-lg-5">
                <div class="d-flex align-items-start">
                    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist"
                        aria-orientation="vertical">
                        @php
                        $i=1;
                        @endphp
                        @foreach ($product_details->getTractorImages as $item)
                        <img class="my-lg-1 pe-auto" alt="..." src="{{asset("$item->images")}}"
                            onclick="currentSlide({{$i}})" style="cursor: pointer;" width="90">
                        </button>
                        @php
                        $i++;
                        @endphp
                        @endforeach
                    </div>
                    @foreach ($product_details->getTractorImages as $item)
                    <div class="mySlides">
                        <img alt="..." src="{{asset("$item->images")}}" width="320">
                    </div>
                    @endforeach
                </div>
                <div class="btn-box mt-3" style="margin-right: 90px">
                    @if($product_details->mannual!=NULL)
                    <a download target="_blank" href="{{asset("$product_details->mannual")}}"><button
                            class="btn btn-manual">Download Manual</button></a>
                    @endif
                    <button data-whatever="{{$product_details->name}}" class="btn btn-order2" data-bs-toggle="modal" data-bs-target="#myModal2">Order Now</button>
                    <div class="icons">
                        <div class="icon-box">
                            <i class="fab fa-facebook-f"></i>
                        </div>
                        <div class="icon-box">
                            <i class="fab fa-twitter"></i>
                        </div>
                        <div class="icon-box">
                            <i class="fab fa-linkedin-in"></i>
                        </div>
                        <div class="icon-box">
                            <i class="fab fa-pinterest-p"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7">
                <p class="info-p">{{$product_details->description}}</p>
                @if($product_details->feature_description!=NULL)
                <h4 class="info-h">Prominent features of {{$product_details->name}}</h4>
                @endif
                @php
                $detail=explode("!!",$product_details->feature_description);
                foreach ($detail as $output) {
                echo $output." <br>";
                }
                @endphp
            </div>
        </div>
    </div>
</section>
@if($product_details->technical_description!=NULL)
<section>
    <div class="container">
        <h2 class="heading-p">Technical Specification of {{$product_details->name}} </h2>
        <p>
            @php
            $detail=explode("!!",$product_details->technical_description);
            foreach ($detail as $output) {
            echo $output." <br>";
            }
            @endphp
        </p>
    </div>
</section>
@endif
<section>
    @php
    $count=count($product_details->QA);
    @endphp
    @if ($count!=0)
    <h2 class="heading-p">Most asked Questions For<br> {{$product_details->name}} </h2>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    @php
                    $count=count($product_details->QA);
                    $j=1;

                    @endphp
                    @for ($i = 0; $i < $count; $i++) <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading{{$i}}">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#flush-collapse{{$i}}" aria-expanded="false"
                                aria-controls="flush-collapse{{$i}}">
                                <p class="ques">Question {{$j}}: {{$product_details->QA[$i]['question']}}</p>
                            </button>
                        </h2>
                        <div id="flush-collapse{{$i}}" class="accordion-collapse collapse"
                            aria-labelledby="flush-heading{{$i}}" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                <p class="ans">Ans: {{$product_details->QA[$i]['answer']}}</p>
                            </div>
                        </div>
                </div>
                @php
                $j++;
                @endphp
                @endfor
            </div>
                 </div>
            <div class="col-md-6">
            <div class="accordion accordion-flush" id="accordionFlushExample">
                @php
                $count=count($product_details->QALast);
                $j=6;
                @endphp
                @for ($i = 0; $i < $count; $i++) <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                            data-bs-target="#flush-collapse{{$j}}" aria-expanded="false"
                            aria-controls="flush-collapse{{$j}}">
                            <p class="ques">Question {{$j}}: {{$product_details->QALast[$i]['question']}}</p>
                        </button>
                    </h2>
                    <div id="flush-collapse{{$j}}" class="accordion-collapse collapse"
                        aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: {{$product_details->QALast[$i]['answer']}}</p>
                        </div>
                    </div>
            </div>
            @php
            $j++;
            @endphp
            @endfor
        </div>
    </div>
        </div>
    </div>    
     
    @endif
</section>
@endsection
@section('script')
<script src="{{asset("assets_final/js/enquirymodel.js")}}"></script>
<script src="{{asset("assets_final/js/tractorimages.js")}}"></script>
@endsection