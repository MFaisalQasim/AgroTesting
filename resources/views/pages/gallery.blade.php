@extends('layouts.master')
@push('css')
    <link rel="stylesheet" type="text/css" href="{{asset('plugins/components/gallery/css/animated-masonry-gallery.css')}}" />
    <link rel="stylesheet" type="text/css" href="{{asset('plugins/components/fancybox/ekko-lightbox.min.css')}}" />
@endpush

@section('content')
    <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
            <div class="col-md-12">
                <div class="white-box">
                    <h3 class="box-title">Gallery Page</h3>
                    <div id="gallery">
                        <div id="gallery-header">
                            <div id="gallery-header-center">
                                <div id="gallery-header-center-left">
                                    <div class="gallery-header-center-right-links" id="filter-all">All</div>
                                    <div class="gallery-header-center-right-links" id="filter-studio">Studio</div>
                                    <div class="gallery-header-center-right-links" id="filter-landscape">Landscapes</div>
                                </div>
                            </div>
                        </div>
                        <div id="gallery-content">
                            <div id="gallery-content-center">
                                <a href="plugins/images/assets/studio1.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio1.jpg" alt="gallery" class="all studio" /> </a>
                                <a href="plugins/images/assets/landscape1.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape1.jpg" class="all landscape" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio2.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio2.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio25.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio25.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/landscape2.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape2.jpg" class="all landscape" alt="gallery" /></a>
                                <a href="plugins/images/assets/studio27.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio27.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio3.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio3.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/landscape3.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape3.jpg" class="all landscape" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio26.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio26.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio4.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio4.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/landscape4.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape4.jpg" class="all landscape" alt="gallery" /></a>
                                <a href="plugins/images/assets/studio5.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio5.jpg" class="all studio" alt="gallery" /> </a>
                                <a href="plugins/images/assets/landscape5.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape5.jpg" class="all landscape" alt="gallery" /></a>
                                <a href="plugins/images/assets/studio6.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio6.jpg" class="all studio" alt="gallery" /></a>
                                <a href="plugins/images/assets/landscape6.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape6.jpg" class="all landscape" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio7.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio7.jpg" class="all studio" alt="gallery" /></a>
                                <a href="plugins/images/assets/landscape7.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape7.jpg" class="all landscape" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio8.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio8.jpg" class="all studio" alt="gallery" /></a>
                                <a href="plugins/images/assets/landscape8.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape8.jpg" class="all landscape" alt="gallery" /> </a>
                                <a href="plugins/images/assets/studio9.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio9.jpg" class="all studio" alt="gallery" />
                                    <a href="plugins/images/assets/landscape9.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape9.jpg" class="all landscape" alt="gallery" /> </a>
                                    <a href="plugins/images/assets/studio10.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio10.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape10.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape10.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio11.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio11.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape11.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape11.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio12.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio12.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape12.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape12.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio13.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio13.jpg" class="all studio" alt="gallery" /> </a>
                                    <a href="plugins/images/assets/landscape13.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape13.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio14.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio14.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape14.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape14.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio15.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio15.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape15.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape15.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio16.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio16.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape16.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape16.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio17.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio17.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape17.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape17.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio18.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio18.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/landscape18.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/landscape18.jpg" class="all landscape" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio19.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio19.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio20.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio20.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio21.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio21.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio22.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio22.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio23.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio23.jpg" class="all studio" alt="gallery" /></a>
                                    <a href="plugins/images/assets/studio24.jpg" data-toggle="lightbox" data-gallery="multiimages" data-title="Image title will be apear here"><img src="plugins/images/assets/studio24.jpg" class="all studio" alt="gallery" /></a>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- .row -->
        @include('layouts.partials.right-sidebar')
    </div>

@endsection
@push('js')
    <script type="text/javascript" src="{{asset('plugins/components/gallery/js/animated-masonry-gallery.js')}}"></script>
    <script type="text/javascript" src="{{asset('plugins/components/gallery/js/jquery.isotope.min.js')}}"></script>
    <script type="text/javascript" src="{{asset('plugins/components/fancybox/ekko-lightbox.min.js')}}"></script>
    <script type="text/javascript">
        $(function($) {
            // delegate calls to data-toggle="lightbox"
            $(document).delegate('*[data-toggle="lightbox"]:not([data-gallery="navigateTo"])', 'click', function(event) {
                event.preventDefault();
                return $(this).ekkoLightbox({
                    onShown: function() {
                        if (window.console) {
                            return console.log('Checking our the events huh?');
                        }
                    },
                    onNavigate: function(direction, itemIndex) {
                        if (window.console) {
                            return console.log('Navigating ' + direction + '. Current item: ' + itemIndex);
                        }
                    }
                });
            });
            //Programatically call
            $('#open-image').on("click", function(e) {
                e.preventDefault();
                $(this).ekkoLightbox();
            });
            $('#open-youtube').on("click", function(e) {
                e.preventDefault();
                $(this).ekkoLightbox();
            });
            // navigateTo
            $(document).delegate('*[data-gallery="navigateTo"]', 'click', function(event) {
                event.preventDefault();
                var lb;
                return $(this).ekkoLightbox({
                    onShown: function() {
                        lb = this;
                        $(lb.modal_content).on('click', '.modal-footer a', function(e) {
                            e.preventDefault();
                            lb.navigateTo(2);
                        });
                    }
                });
            });
        });
    </script>
@endpush
