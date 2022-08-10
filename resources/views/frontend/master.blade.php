<!DOCTYPE html>
<html lang="en">
@include('frontend.includes.head')
<body>
    <header>
        @include('frontend.includes.upper_navbar')
        @include('frontend.includes.lower_navbar')
    </header>
    @yield('content')
    {{-- <div class="d-wrap">
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
    </div> --}}
    @include('frontend.includes.footer')
</body>
@include('frontend.includes.script')
</html>
