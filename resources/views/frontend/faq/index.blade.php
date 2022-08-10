@extends('frontend.master')
@section('title')
Faq | Massey Ferguson Tractors, New Holland &amp; Ford Tractors From Pakistan
@endsection
@section('head')
@endsection
@section('content')
<section id="banner">
    @include('frontend.includes.carousel_slide')
</section>
<section class="mt-3">
    <div class="text-center">
        <h1>FAQ</h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingOne">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                            <p class="ques">Question 1: Which Steering type MF 240 Tractor has?</p>
                        </button>
                      </h2>
                      <div id="flush-collapseOne"  aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Manual Mechanical Steering.</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingTwo">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                            <p class="ques">Question 2: Which FRONT AXLE type MF 240 Tractor has?</p>
                        </button>
                      </h2>
                      <div id="flush-collapseTwo"  aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Box Section, Adjustable.</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingThree">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                            <p class="ques">Question 3: What type of brake system does MF-240 has?</p>
                        </button>
                      </h2>
                      <div id="flush-collapseThree"  aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Outboard Drum Brakes.</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFour">
                          <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                            <p class="ques">Question 4: What is the transmission of MF-240?</p>
                          </button>
                        </h2>
                        <div id="flush-collapseFour"  aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                              <p class="ans">Ans: Transmission is a sliding spur with 8 forward and 2 reverse gears.</p>
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFive">
                          <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFive" aria-expanded="false" aria-controls="flush-collapseFive">
                            <p class="ques">
                                Question 5: What size is the tires of MF-240?</p>
                          </button>
                        </h2>
                        <div id="flush-collapseFive"  aria-labelledby="flush-headingFive" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                              <p class="ans">Ans: Front tire, 6.00-16, and Rear tire, 12.4/11-28.</p>
                          </div>
                        </div>
                      </div>                              
                  </div>
            </div>
            <div class="col-md-6">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingSix">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSix" aria-expanded="false" aria-controls="flush-collapseSix">
                            <p class="ques">Question 6: What type fof clutch does MF-240 has?</p>
                        </button>
                      </h2>
                      <div id="flush-collapseSix"  aria-labelledby="flush-headingSix" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Dual Clutch</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingSeven">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseSeven" aria-expanded="false" aria-controls="flush-collapseSeven">
                            <p class="ques">Question 7: What type of engine MF-240 has?</p>                                  
                        </button>
                      </h2>
                      <div id="flush-collapseSeven"  aria-labelledby="flush-headingSeven" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Perkins, AD-3,1524.</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingEight">
                        <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseEight" aria-expanded="false" aria-controls="flush-collapseEight">
                            <p class="ques">Question 8: What type of filters are there in MF-240?</p>
                        </button>
                      </h2>
                      <div id="flush-collapseEight"  aria-labelledby="flush-headingEight" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <p class="ans">Ans: Air Pre-Cleaner, Air Cleaner and Fuel filter</p>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingNine">
                          <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseNine" aria-expanded="false" aria-controls="flush-collapseNine">
                            <p class="ques">Question 9: How much is the fuel tank capacity in MF-240?</p>
                          </button>
                        </h2>
                        <div id="flush-collapseNine"  aria-labelledby="flush-headingNine" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                              <p class="ans">Ans: 47.5 Liter</p>
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingTen">
                          <button class="collapsible" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTen" aria-expanded="false" aria-controls="flush-collapseTen">
                              <p class="ques">Question 10: How much is the lifting capacity in MF-240?</p>
                          </button>
                        </h2>
                        <div id="flush-collapseTen"  aria-labelledby="flush-headingTen" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                              <p class="ans">Ans: 1415 kg with lower links horizontal.</p>
                          </div>
                        </div>
                      </div>
                  </div>
            </div>
        </div>
    </div>
</section>
@endsection