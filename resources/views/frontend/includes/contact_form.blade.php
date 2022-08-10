@php
    $ip       = json_encode(\Request::ip());
    $location = unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip=' . $ip) );
@endphp
<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <h3 class="form-heading">Get in touch using the form below</h3>
            <div class="form-bg">
                <form  action="{{ route('frontend.contactform.index') }}" method="post">
                    @csrf
                    <label for="name" class="label">Full Name <span>*</span></label> <br>
                    <input type="text" id="name" name="name" class="form-input" required>
                    <br><br>
                    <label for="email" class="label">Email Address <span>*</span></label> <br>
                    <input  type="email" class="form-input" id="email" name="email" required>
                    <br><br>
                    <label for="number" class="label">Phone Number <span>*</span></label> <br>
                    <input type="text" class="form-input" id="number" name="number" required>
                    <br><br>
                    <label for="country" class="label">Country <span>*</span></label> <br>
                    <select class="form-control white_bg" name="country" required="true">
                    {{-- <option value="pakistan">pakistan</option> --}}
                        <option value="{{$location['geoplugin_regionName'].",".$location['geoplugin_countryName']}}">{{$location['geoplugin_regionName'].",".$location['geoplugin_countryName']}}</option>
                    </select>
                    <br>
                    <label for="tractor" class="label">Tractor</label> <br>
                    <select class="form-control white_bg" id="tractor" 
                        name="tractor">
                        <option>Select Tractor</option>
                        @foreach ($contact_form_tractor as $item)
                        <option value="{{$item->name}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                    <br>
                    <label for="implement1" class="label">Implements 1</label> <br>
                    <select class="form-control white_bg"  id="implement1"
                        name="implement1">
                        <option>Select Option</option>
                        @foreach ($contact_form_imp as $item)
                        <option value="{{$item->name}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                    <br>
                    <label for="implement2" class="label">Implements 2</label> <br>
                    <select class="form-control white_bg" id="implement2" 
                        name="implement2">
                        <option>Select Option</option>
                        @foreach ($contact_form_imp as $item)
                        <option value="{{$item->name}}">{{$item->name}}</option>
                        @endforeach
                    </select>
                    <br>
                    <label for="message" class="label">Message</label> <br>
                    <textarea class="form-control white_bg" cols="20" 
                        id="message" maxlength="400" name="message" rows="4"
                        spellcheck="false"></textarea>
                    <button class="btn-submit" type="submit"><span>Send Message</span> <i
                            class="fas fa-chevron-circle-right"></i></button>
                </form>
            </div>
        </div>
        <div class="col-lg-6">
            <h3 class="form-heading">Contact Info</h3>
            <div class="contact_detail">
                <ul>
                    <li>
                        <div class="row">
                            <div class="icon-box col-md-2"><i class="fa fa-map-marker-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">Head Office: 2nd Floor,
                                Al-Hafiz
                                Centre, Adamjee Dawood, Rampart Row, Karachi, Pakistan</div>
                        </div>
                    <br>
                    </li>

                    <li>
                        <div class="row">
                            <div class="icon-box col-md-2"><i class="fa fa-map-marker-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">Factory: 12KM, SUI GAS ROAD,
                                KOT
                                ABDUL MALIK, SHEIKHUPURA ROAD LAHORE, PAKISTAN</div>
                        </div>
                        <br>
                    </li>
                    <li>
                        <div class="row">
                            <div class="icon-box-2 col-md-2"><i class="fa fa-map-marker-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">Company Yard: Main Rajay
                                Wala,
                                Gujranwala, Punjab, Pakistan</div>
                        </div>
                    <br>
                    </li>

                    <li>
                        <div class="row">
                            <div class="icon-box-2 col-md-2"><i class="fa fa-mobile-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">
                                <a href="tel:+923170001715">+923170001715 (Call Or
                                    WhatsApp)</a>
                                <br><a href="tel:+923170001572">+923170001572 (Call Or
                                    WhatsApp)</a>
                            </div>
                        </div>
                    <br>
                    </li>
                    <li>
                        <div class="row">
                            <div class="icon-box-2 col-md-2"><i class="fa fa-phone-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">
                                <a href="tel:+924237164444">+924237164444 </a>
                                <br><a href="tel:+924237164488">+924237164488</a>
                            </div>
                        </div>
                    <br>
                    </li>

                    <li>
                        <div class="row">
                            <div class="icon-box-2 col-md-2"><i class="fa fa-phone-alt"
                                    aria-hidden="true"></i></div>
                            <div class="contact_info col-md-10">
                                <a
                                    href="mailto:info@agroasiatractors.com">Info@AgroAsiaTractors.com</a>
                                <br><a
                                    href="mailto:Sales@agroasiatractors.com">Sales@AgroAsiaTractors.com</a>
                            </div>
                        </div>
                    <br>
                    </li>
                </ul>
                <div class="map">
                    <iframe
                        src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDGPKDvMyb6-VDbOZZ4myD8Fdm-5zWsLYI%20%20%20%20&amp;q=AgroAsia+Tractors+Rampart+Row+Karachi"
                        title="AgroAsia Tractors - Head Office" width="100%" frameborder="0" style="border:0"
                        allowfullscreen=""></iframe>
                </div>
                {{-- <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.agroasiatractors.com%2F"
                    class="btn-fb" aria-label="fb"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com/intent/tweet/?text=New%20Holland%20%26%20Massey%20Ferguson%20Tractors%20Dealers%20-%20Farm%20implements%20%26%20Equipments&url=https%3A%2F%2Fwww.agroasiatractors.com%2F"
                    class="btn-twitter" aria-label="twitter"><i class="fab fa-twitter"></i></a>
                <a href="https://plus.google.com/up/?continue=https://plus.google.com/share?url%3Dhttps://www.agroasiatractors.com/"
                    class="btn-google" aria-label="google"><i class="fab fa-google-plus-g"></i></a>
                <a href="https://www.tumblr.com/widgets/share/tool?posttype=link&title=New%20Holland%20%26%20Massey%20Ferguson%20Tractors%20Dealers%20-%20Farm%20implements%20%26%20Equipments&caption=New%20Holland%20%26%20Massey%20Ferguson%20Tractors%20Dealers%20-%20Farm%20implements%20%26%20Equipments&content=https%3A%2F%2Fwww.agroasiatractors.com%2F&canonicalUrl=https%3A%2F%2Fwww.agroasiatractors.com%2F&shareSource=tumblr_share_button"
                    class="btn-tumblr" aria-label="tumblr"><i class="fab fa-tumblr"></i></a>
                <a href="mailto:?subject=New%20Holland%20%26%20Massey%20Ferguson%20Tractors%20Dealers%20-%20Farm%20implements%20%26%20Equipments&body=https%3A%2F%2Fwww.agroasiatractors.com%2F"
                    class="btn-mail" aria-label="mail"><i class="fas fa-envelope"></i></a>
                <a href="https://pinterest.com/pin/create/button/?url=https%3A%2F%2Fwww.agroasiatractors.com%2F&media=https%3A%2F%2Fwww.agroasiatractors.com%2F&description=New%20Holland%20%26%20Massey%20Ferguson%20Tractors%20Dealers%20-%20Farm%20implements%20%26%20Equipments"
                    class="btn-pinterest" aria-label="pinterest"><i class="fab fa-pinterest-p"></i></a> --}}
            </div>
        </div>
    </div>
</div>
