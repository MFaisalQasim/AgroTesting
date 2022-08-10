@extends('layouts.master')

@push('css')
    <link href="{{asset('plugins/components/css-chart/css-chart.css')}}" rel="stylesheet">

@endpush

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-sm-12">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="white-box small-box-widget">
                            <ul class="list-inline row">
                                <li class="col-xs-3 p-t-10">
                                    <div class="icon-box bg-primary">
                                        <i class="icon-bag"></i>
                                    </div>
                                </li>
                                <li class="col-xs-9 p-l-20">
                                    <h4>New Sales</h4>
                                    <div class="ct-sales-chart"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="white-box small-box-widget">
                            <ul class="list-inline row">
                                <li class="col-xs-3 p-t-10">
                                    <div class="icon-box bg-success">
                                        <i class="icon-user"></i>
                                    </div>
                                </li>
                                <li class="col-xs-9 p-l-20">
                                    <h4>User Quota</h4>
                                    <div class="ct-uq-chart chart-pos"></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="white-box small-box-widget">
                            <div class="p-t-10 p-b-10">
                                <div class="icon-box bg-warning">
                                    <i class="icon-refresh"></i>
                                </div>
                                <div class="detail-box">
                                    <h4>Progress<span class="pull-right text-warning font-22 font-normal">42%</span>
                                    </h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar"
                                             aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 42%">
                                            <span class="sr-only">42% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="white-box small-box-widget">
                            <div class="p-t-10 p-b-10">
                                <div class="icon-box bg-danger">
                                    <i class="icon-cloud-download"></i>
                                </div>
                                <div class="detail-box">
                                    <h4>Downloading<span class="pull-right text-danger font-22 font-normal">42%</span>
                                    </h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                             aria-valuenow="42" aria-valuemin="0" aria-valuemax="100"
                                             style="width: 42%">
                                            <span class="sr-only">42% Complete</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="white-box circle-chart-widget">
                    <div class="circle-chart">
                        <div class="c1">
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef"
                                   data-fgColor="#0283cc" data-displayInput=false data-width="182" data-height="182"
                                   data-thickness=".05" data-linecap=round value="58" readonly>
                        </div>
                        <div class="c2">
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef"
                                   data-fgColor="#e74a25" data-displayInput=false data-width="154" data-height="154"
                                   data-thickness=".05" data-linecap=round value="45" readonly>
                        </div>
                        <div class="c3">
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef"
                                   data-fgColor="#00bbd9" data-displayInput=false data-width="125" data-height="125"
                                   data-thickness=".05" data-linecap=round value="32" readonly>
                        </div>
                        <div class="chart-overlap"><i class="icon-trophy"></i></div>
                    </div>
                    <ul class="list-inline m-b-0 m-t-30 t-a-c">
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>58%</h6>
                        </li>
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-danger"></i>45%</h6>
                        </li>
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-info"></i>32%</h6>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box stat-widget">
                    <div class="row">
                        <div class="col-sm-3">
                            <h4 class="box-title">Sales Report</h4>
                        </div>
                        <div class="col-sm-9">
                            <select class="custom-select">
                                <option selected value="0">Feb 04 - Mar 03</option>
                                <option value="1">Mar 04 - Apr 03</option>
                                <option value="2">Apr 04 - May 03</option>
                                <option value="3">May 04 - Jun 03</option>
                            </select>
                            <ul class="list-inline">
                                <li>
                                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-success"></i>New Sales</h6>
                                </li>
                                <li>
                                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>Existing Sales
                                    </h6>
                                </li>
                            </ul>
                        </div>
                        <div class="stat chart-pos"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="white-box upload-widget2">
                    <h4 class="box-title">Uploading Process</h4>
                    <ul class="up-file m-t-20">
                        <li>
                            <i class="icon-picture"></i>
                            <div class="up-file-progress">
                                <span>my_photos.png</span>
                                <span class="pull-right">34%</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="34"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 34%">
                                        <span class="sr-only">34% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="icon-camrecorder"></i>
                            <div class="up-file-progress">
                                <span>the_kongmovie.avi</span>
                                <span class="pull-right">67%</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="67"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 67%">
                                        <span class="sr-only">67% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <i class="icon-docs"></i>
                            <div class="up-file-progress">
                                <span>document.pdf</span>
                                <span class="pull-right">15%</span>
                                <div class="progress">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="15"
                                         aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                        <span class="sr-only">15% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="up-add-file t-a-c">
                        <a href="javascript:void(0);" class="btn btn-primary font-16"><i class="fa fa-plus p-r-20"></i>Add
                            Files</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box upload-widget">
                    <div class="t-a-c">
                        <div class="complete-chart" id="graph1" data-percent="45" data-size="160" data-line="5"
                             data-rotate="0" data-color="#e74a25" data-text-color="#e74a25"></div>
                        <p class="font-20 m-b-0">Uploading</p>
                        <p class="text-primary font-semibold font-18">Myphotos_friends.png</p>
                        <span class="up-speed m-t-20 m-b-10">Speed: <span
                                    class="text-primary font-semibold">450 kbps</span></span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box album-widget">
                    <h4 class="box-title">Create Your Album</h4>
                    <div class="alb-photos m-t-30">
                        <div class="alb-item">
                            <img src="{{asset('plugins/images/a1.jpg')}}" alt="item">
                        </div>
                        <div class="alb-item">
                            <img src="{{asset('plugins/images/a2.jpg')}}" alt="item">
                        </div>
                        <div class="alb-item">
                            <img src="{{asset('plugins/images/a3.jpg')}}" alt="item">
                        </div>
                        <div class="alb-item uploading">
                            <div class="progress m-0">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="34"
                                     aria-valuemin="0" aria-valuemax="100" style="width: 34%">
                                    <span class="sr-only">34% Complete</span>
                                </div>
                            </div>
                        </div>
                        <div class="alb-item add-more">
                            <a href="javascript:void(0);"><i class="fa fa-plus text-success"></i></a>
                        </div>
                    </div>
                    <div class="up-add-photo t-a-c">
                        <a href="javascript:void(0);" class="btn btn-primary font-16"><i class="fa fa-plus p-r-20"></i>Add
                            Photos</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 col-sm-12">
                <div class="white-box activity-widget">
                    <h4 class="box-title">Activity Log</h4>
                    <div class="steamline">
                        <div class="sl-item">
                            <div class="sl-left">
                                <div>
                                    <img class="img-circle" alt="user" src="plugins/images/users/hanna.jpg">
                                </div>
                            </div>
                            <div class="sl-right">
                                <div><a href="javascript:void(0);" class="text-link font-semibold">Hanna Gover</a> left
                                    a comment on the article <a href="javascript:void(0);"
                                                                class="text-link font-semibold">'The best tutorial for
                                        creating a blog'.</a></div>
                                <p>2 min ago</p>
                            </div>
                        </div>
                        <div class="sl-item">
                            <div class="sl-left">
                                <div class="bg-success">
                                    <i class="fa fa-bell" aria-hidden="true"></i>
                                </div>
                            </div>
                            <div class="sl-right">
                                <div><a href="javascript:void(0);" class="text-link font-semibold">22 New Request</a>
                                    please approve or reject the request.
                                </div>
                                <p>2 min ago</p>
                            </div>
                        </div>
                        <div class="sl-item">
                            <div class="sl-left">
                                <div class="bg-danger">
                                    <i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
                                </div>
                            </div>
                            <div class="sl-right">
                                <div><a href="javascript:void(0);" class="text-link font-semibold">Main Disc</a> is
                                    running out of space. Please <a href="javascript:void(0);"
                                                                    class="text-link font-semibold">delete</a> unwanted
                                    files to continue.
                                </div>
                                <p>2 min ago</p>
                            </div>
                        </div>
                        <div class="sl-item m-b-0">
                            <div class="sl-left">
                                <div>
                                    <img class="img-circle" alt="user" src="plugins/images/users/jeffery.jpg">
                                </div>
                            </div>
                            <div class="sl-right">
                                <div>
                                    <a href="javascript:void(0);" class="text-link font-semibold">Daniel Kristeen</a>
                                    has submitted an article.
                                    <div class="sl-btn">
                                        <a href="javascript:void(0);"
                                           class="btn btn-success btn-outline btn-rounded m-r-20">Approve</a>
                                        <a href="javascript:void(0);" class="btn btn-default btn-outline btn-rounded">Reject</a>
                                    </div>
                                </div>
                                <p>2 min ago</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box p-0">
                    <div class="carousel-widget">
                        <div class="image-overlay"></div>
                        <div id="myCarousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="item active">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);"
                                                                   class="font-16 font-semibold text-white">Daniel
                                                Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);"
                                                                   class="font-16 font-semibold text-white">Daniel
                                                Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);"
                                                                   class="font-16 font-semibold text-white">Daniel
                                                Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);"
                                                                   class="font-16 font-semibold text-white">Daniel
                                                Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                            </div>
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box report-widget">
                    <h4 class="box-title">Completed Tasks</h4>
                    <div class="css-bar css-bar-55 css-bar-xlg css-bar-primary">
                        <div class="data-text">
                            <h1 class="m-0">55<span class="icon">&#37;</span></h1>
                            <span class="hr-line"></span>
                            <div class="font-15">Finished</div>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <a href="javascript:void(0);" class="btn btn-success">Generate Report</a>
                </div>
            </div>
            <div class="col-md-8 col-sm-12">
                <div class="temp-widget">
                    <div class="left-part" style="background-image: url('../plugins/images/cloud.jpg');">
                        <div class="temp-image-overlay"></div>
                        <div class="temp-place">
                            <select class="custom-select">
                                <option selected value="1">Texas, US</option>
                                <option value="2">California, US</option>
                                <option value="3">Illinois, US</option>
                                <option value="4">Florida, US</option>
                            </select>
                        </div>
                        <div class="temp-arrow"></div>
                    </div>
                    <div class="right-part">
                        <div class="temp-detail">
                            <h1 class="text-primary font-light">32<sup>o</sup></h1>
                            <h3 class="m-t-20">It's a Sunny Day</h3>
                            <span class="hr-line"></span>
                            <h4>Rain: 1.2 mm</h4>
                            <ul class="list-inline temp-days">
                                <li class="bg-success m-l-0">
                                    <h2 class="font-22 text-white m-b-0 font-semibold">27</h2>
                                    <p class="font-12 font-semibold">MAR</p>
                                </li>
                                <li>
                                    <h2 class="font-22 m-b-0 font-semibold">28</h2>
                                    <p class="font-12 font-semibold">MAR</p>
                                </li>
                                <li>
                                    <h2 class="font-22 m-b-0 font-semibold">29</h2>
                                    <p class="font-12 font-semibold">MAR</p>
                                </li>
                                <li class="m-r-0">
                                    <h2 class="font-22 m-b-0 font-semibold">30</h2>
                                    <p class="font-12 font-semibold">MAR</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- ===== Right-Sidebar ===== -->
    <!-- ===== Right-Sidebar-End ===== -->
    </div>
@endsection

@push('js')
    <script src="{{asset('js/db3.js')}}"></script>

@endpush