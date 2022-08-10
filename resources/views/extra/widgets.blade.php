@extends('layouts.master')
@push('css')
    <link href="{{asset('plugins/components/morrisjs/morris.css')}}" rel="stylesheet">
    <link href='{{asset('plugins/components/fullcalendar/fullcalendar.css')}}' rel='stylesheet'>
    <link href="{{asset('plugins/components/css-chart/css-chart.css')}}" rel="stylesheet">
@endpush

@section('content')
    <div class="row m-0">
        <div class="col-md-3 col-sm-6 info-box">
            <div class="media">
                <div class="media-left">
                    <span class="icoleaf bg-primary text-white"><i class="mdi mdi-checkbox-marked-circle-outline"></i></span>
                </div>
                <div class="media-body">
                    <h3 class="info-count text-blue">154</h3>
                    <p class="info-text font-12">Bookings</p>
                    <span class="hr-line"></span>
                    <p class="info-ot font-15">Target<span class="label label-rounded label-success">300</span></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 info-box">
            <div class="media">
                <div class="media-left">
                    <span class="icoleaf bg-primary text-white"><i class="mdi mdi-comment-text-outline"></i></span>
                </div>
                <div class="media-body">
                    <h3 class="info-count text-blue">68</h3>
                    <p class="info-text font-12">Complaints</p>
                    <span class="hr-line"></span>
                    <p class="info-ot font-15">Total Pending<span class="label label-rounded label-danger">154</span></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 info-box">
            <div class="media">
                <div class="media-left">
                    <span class="icoleaf bg-primary text-white"><i class="mdi mdi-coin"></i></span>
                </div>
                <div class="media-body">
                    <h3 class="info-count text-blue">&#36;9475</h3>
                    <p class="info-text font-12">Earning</p>
                    <span class="hr-line"></span>
                    <p class="info-ot font-15">March : <span class="text-blue font-semibold">&#36;514578</span></p>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-6 info-box b-r-0">
            <div class="media">
                <div class="media-left p-r-5">
                    <div id="earning" class="e" data-percent="60">
                        <div id="pending" class="p" data-percent="55"></div>
                        <div id="booking" class="b" data-percent="50"></div>
                    </div>
                </div>
                <div class="media-body">
                    <h2 class="text-blue font-22 m-t-0">Report</h2>
                    <ul class="p-0 m-b-20">
                        <li><i class="fa fa-circle m-r-5 text-primary"></i>60% Earnings</li>
                        <li><i class="fa fa-circle m-r-5 text-primary"></i>55% Pending</li>
                        <li><i class="fa fa-circle m-r-5 text-info"></i>50% Bookings</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 col-sm-12">
                <div class="white-box stat-widget">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <h4 class="box-title">Statistics</h4>
                        </div>
                        <div class="col-md-9 col-sm-9">
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
                                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>Existing Sales</h6>
                                </li>
                            </ul>
                        </div>
                        <div class="stat chart-pos"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="white-box">
                    <h4 class="box-title">Task Progress</h4>
                    <div class="task-widget t-a-c">
                        <div class="task-chart" id="sparklinedashdb"></div>
                        <div class="task-content font-16 t-a-c">
                            <div class="col-sm-6 b-r">
                                Urgent Tasks
                                <h1 class="text-primary">05 <span class="font-16 text-muted">Tasks</span></h1>
                            </div>
                            <div class="col-sm-6">
                                Normal Tasks
                                <h1 class="text-primary">03 <span class="font-16 text-muted">Tasks</span></h1>
                            </div>
                        </div>
                        <div class="task-assign font-16">
                            Assigned To
                            <ul class="list-inline">
                                <li class="p-l-0">
                                    <img src="plugins/images/users/1.png" alt="user" data-toggle="tooltip" data-placement="top" title="" data-original-title="Steave">
                                </li>
                                <li>
                                    <img src="plugins/images/users/2.png" alt="user" data-toggle="tooltip" data-placement="top" title="" data-original-title="Steave">
                                </li>
                                <li>
                                    <img src="plugins/images/users/3.png" alt="user" data-toggle="tooltip" data-placement="top" title="" data-original-title="Steave">
                                </li>
                                <li class="p-r-0">
                                    <a href="javascript:void(0);" class="btn btn-success font-16">3+</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="white-box bg-primary color-box">
                    <h1 class="text-white font-light">&#36;6547 <span class="font-14">Revenue</span></h1>
                    <div class="ct-revenue chart-pos"></div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box bg-success color-box">
                    <h1 class="text-white font-light m-b-0">5247</h1>
                    <span class="hr-line"></span>
                    <p class="cb-text">current visits</p>
                    <h6 class="text-white font-semibold">+25% <span class="font-light">Last Week</span></h6>
                    <div class="chart">
                        <div class="ct-visit chart-pos"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box bg-danger color-box">
                    <h1 class="text-white font-light m-b-0">25%</h1>
                    <span class="hr-line"></span>
                    <p class="cb-text">Finished Tasks</p>
                    <h6 class="text-white font-semibold">+15% <span class="font-light">Last Week</span></h6>
                    <div class="chart">
                        <input class="knob" data-min="0" data-max="100" data-bgColor="#f86b4a" data-fgColor="#ffffff" data-displayInput=false data-width="96" data-height="96" data-thickness=".1" value="25" readonly>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="white-box user-table">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="box-title">Table Format/User Data</h4>
                        </div>
                        <div class="col-sm-6">
                            <ul class="list-inline">
                                <li>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-commenting" aria-hidden="true"></i></a>
                                </li>
                            </ul>
                            <select class="custom-select">
                                <option selected>Sort by</option>
                                <option value="1">Name</option>
                                <option value="2">Location</option>
                                <option value="3">Type</option>
                                <option value="4">Role</option>
                                <option value="5">Action</option>
                            </select>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>
                                    <div class="checkbox checkbox-info">
                                        <input id="c1" type="checkbox">
                                        <label for="c1"></label>
                                    </div>
                                </th>
                                <th>Name</th>
                                <th>Location</th>
                                <th>Type</th>
                                <th>Role</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c2" type="checkbox">
                                        <label for="c2"></label>
                                    </div>
                                </td>
                                <td><a href="javascript:void(0);" class="text-link">Daniel Kristeen</a></td>
                                <td>Texas, US</td>
                                <td>Posts 564</td>
                                <td><span class="label label-success">Admin</span></td>
                                <td>
                                    <select class="custom-select">
                                        <option value="1">Modulator</option>
                                        <option value="2">Admin</option>
                                        <option value="3">Staff</option>
                                        <option value="4">User</option>
                                        <option value="5">General</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c3" type="checkbox">
                                        <label for="c3"></label>
                                    </div>
                                </td>
                                <td><a href="javascript:void(0);" class="text-link">Hanna Gover</a></td>
                                <td>Los Angeles, US</td>
                                <td>Posts 451</td>
                                <td><span class="label label-info">Staff</span> </td>
                                <td>
                                    <select class="custom-select">
                                        <option value="1">Modulator</option>
                                        <option value="2">Admin</option>
                                        <option value="3">Staff</option>
                                        <option value="4">User</option>
                                        <option value="5">General</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c4" type="checkbox">
                                        <label for="c4"></label>
                                    </div>
                                </td>
                                <td><a href="javascript:void(0);" class="text-link">Jeffery Brown</a></td>
                                <td>Houston, US</td>
                                <td>Posts 978</td>
                                <td><span class="label label-danger">User</span> </td>
                                <td>
                                    <select class="custom-select">
                                        <option value="1">Modulator</option>
                                        <option value="2">Admin</option>
                                        <option value="3">Staff</option>
                                        <option value="4">User</option>
                                        <option value="5">General</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c5" type="checkbox">
                                        <label for="c5"></label>
                                    </div>
                                </td>
                                <td><a href="javascript:void(0);" class="text-link">Elliot Dugteren</a></td>
                                <td>San Antonio, US</td>
                                <td>Posts 34</td>
                                <td><span class="label label-warning">General</span> </td>
                                <td>
                                    <select class="custom-select">
                                        <option value="1">Modulator</option>
                                        <option value="2">Admin</option>
                                        <option value="3">Staff</option>
                                        <option value="4">User</option>
                                        <option value="5">General</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c6" type="checkbox">
                                        <label for="c6"></label>
                                    </div>
                                </td>
                                <td><a href="javascript:void(0);" class="text-link">Sergio Milardovich</a></td>
                                <td>Jacksonville, US</td>
                                <td>Posts 31</td>
                                <td><span class="label label-primary">Partial</span> </td>
                                <td>
                                    <select class="custom-select">
                                        <option value="1">Modulator</option>
                                        <option value="2">Admin</option>
                                        <option value="3">Staff</option>
                                        <option value="4">User</option>
                                        <option value="5">General</option>
                                    </select>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="pagination">
                        <li class="disabled"> <a href="#">1</a> </li>
                        <li class="active"> <a href="#">2</a> </li>
                        <li> <a href="#">3</a> </li>
                        <li> <a href="#">4</a> </li>
                        <li> <a href="#">5</a> </li>
                    </ul>
                    <a href="javascript:void(0);" class="btn btn-success pull-right m-t-10 font-20">+</a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8">
                <div class="white-box">
                    <div class="task-widget2">
                        <div class="task-image">
                            <img src="plugins/images/task.jpg" alt="task" class="img-responsive">
                            <div class="task-image-overlay"></div>
                            <div class="task-detail">
                                <h2 class="font-light text-white m-b-0">07 April</h2>
                                <h4 class="font-normal text-white m-t-5">Your tasks for today</h4>
                            </div>
                            <div class="task-add-btn">
                                <a href="javascript:void(0);" class="btn btn-success">+</a>
                            </div>
                        </div>
                        <div class="task-total">
                            <p class="font-16 m-b-0"><strong>5</strong> Tasks for <a href="javascript:void(0);" class="text-link">Jon Doe</a></p>
                        </div>
                        <div class="task-list">
                            <ul class="list-group">
                                <li class="list-group-item bl-info">
                                    <div class="checkbox checkbox-success">
                                        <input id="c7" type="checkbox">
                                        <label for="c7">
                                            <span class="font-16">Create invoice for customers and email each customers.</span>
                                        </label>
                                        <h6 class="p-l-30 font-bold">05:00 PM</h6>
                                    </div>
                                </li>
                                <li class="list-group-item bl-warning">
                                    <div class="checkbox checkbox-success">
                                        <input id="c8" type="checkbox" checked>
                                        <label for="c8">
                                            <span class="font-16">Send payment of <strong>&#36;500 invoised</strong> on 23 May to <a href="javascript:void(0);" class="text-link">Daniel Kristeen</a> via paypal.</span>
                                        </label>
                                        <h6 class="p-l-30 font-bold">03:00 PM</h6>
                                    </div>
                                </li>
                                <li class="list-group-item bl-danger">
                                    <div class="checkbox checkbox-success">
                                        <input id="c9" type="checkbox">
                                        <label for="c9">
                                            <span class="font-16">It is a long established fact that a reader will be distracted by the readable.</span>
                                        </label>
                                        <h6 class="p-l-30 font-bold">04:45 PM</h6>
                                    </div>
                                </li>
                                <li class="list-group-item bl-success">
                                    <div class="checkbox checkbox-success">
                                        <input id="c10" type="checkbox">
                                        <label for="c10">
                                            <span class="font-16">It is a long established fact that a reader will be distracted by the readable.</span>
                                        </label>
                                        <h6 class="p-l-30 font-bold">05:30 PM</h6>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="task-loadmore">
                            <a href="javascript:void(0);" class="btn btn-default btn-outline btn-rounded">Load More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-box chat-widget">
                    <a href="javascript:void(0);" class="pull-right"><i class="icon-settings"></i></a>
                    <h4 class="box-title">Chat</h4>
                    <ul class="chat-list slimscroll" style="overflow: hidden;" tabindex="5005">
                        <li>
                            <div class="chat-image"> <img alt="male" src="plugins/images/users/hanna.jpg"> </div>
                            <div class="chat-body">
                                <div class="chat-text">
                                    <p><span class="font-semibold">Hanna Gover</span> Hey Daniel, This is just a sample chat. </p>
                                </div>
                                <span>2 Min ago</span>
                            </div>
                        </li>
                        <li class="odd">
                            <div class="chat-body">
                                <div class="chat-text">
                                    <p> buddy </p>
                                </div>
                                <span>2 Min ago</span>
                            </div>
                        </li>
                        <li>
                            <div class="chat-image"> <img alt="male" src="plugins/images/users/hanna.jpg"> </div>
                            <div class="chat-body">
                                <div class="chat-text">
                                    <p><span class="font-semibold">Hanna Gover</span> Bye now. </p>
                                </div>
                                <span>1 Min ago</span>
                            </div>
                        </li>
                        <li class="odd">
                            <div class="chat-body">
                                <div class="chat-text">
                                    <p> We have been busy all the day to make your website proposal and finally came with the super excited offer. </p>
                                </div>
                                <span>5 Sec ago</span>
                            </div>
                        </li>
                    </ul>
                    <div class="chat-send">
                        <input type="text" class="form-control" placeholder="Write your message">
                        <i class="fa fa-camera"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="row colorbox-group-widget">
            <div class="col-md-3 col-sm-6 info-color-box">
                <div class="white-box">
                    <div class="media bg-primary">
                        <div class="media-body">
                            <h3 class="info-count">154 <span class="pull-right"><i class="mdi mdi-checkbox-marked-circle-outline"></i></span></h3>
                            <p class="info-text font-12">Bookings</p>
                            <p class="info-ot font-15">Target<span class="label label-rounded">198</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 info-color-box">
                <div class="white-box">
                    <div class="media bg-success">
                        <div class="media-body">
                            <h3 class="info-count">68 <span class="pull-right"><i class="mdi mdi-comment-text-outline"></i></span></h3>
                            <p class="info-text font-12">Complaints</p>
                            <p class="info-ot font-15">Total Pending<span class="label label-rounded">154</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 info-color-box">
                <div class="white-box">
                    <div class="media bg-danger">
                        <div class="media-body">
                            <h3 class="info-count">&#36;9475 <span class="pull-right"><i class="mdi mdi-coin"></i></span></h3>
                            <p class="info-text font-12">Profit</p>
                            <p class="info-ot font-15">Pending<span class="label label-rounded">236</span></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 info-color-box">
                <div class="white-box">
                    <div class="media bg-warning">
                        <div class="media-body">
                            <h3 class="info-count">&#36;124,356 <span class="pull-right"><i class="mdi mdi-coin"></i></span></h3>
                            <p class="info-text font-12">Total Profit</p>
                            <p class="info-ot font-15">Pending<span class="label label-rounded">782</span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="white-box sd-widget m-b-0 b-b-0">
                    <a href="javascript:void(0);" class="pull-right"><i class="icon-settings"></i></a>
                    <h4 class="box-title">Sales Difference</h4>
                </div>
                <div class="white-box p-0 b-t-0">
                    <div class="ct-sd-chart chart-pos"></div>
                    <ul class="list-inline t-a-c">
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-danger"></i>March</h6>
                        </li>
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>February</h6>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box sc-widget">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="box-title">Sales Chart</h4>
                        </div>
                        <div class="col-sm-6">
                            <select class="custom-select">
                                <option selected>March 2017</option>
                                <option value="1">April 2017</option>
                                <option value="2">May 2017</option>
                                <option value="3">June 2017</option>
                            </select>
                        </div>
                    </div>
                    <div class="chartist-sales-chart chart-pos m-t-40"></div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box ie-widget m-b-0 b-b-0">
                    <h4 class="box-title">Item Earnings</h4>
                </div>
                <div class="white-box p-0 b-t-0">
                    <div class="ct-ie-chart chart-pos"></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="white-box calendar-widget">
                    <div id='calendar'></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 col-sm-12">
                <div class="white-box comment-widget">
                    <h4 class="box-title">Recent Comments</h4>
                    <ul class="media-list">
                        <li class="media">
                            <div class="media-left">
                                <a href="#"> <img alt="user" class="media-object" src="plugins/images/users/jeffery.jpg"> </a>
                            </div>
                            <div class="media-body">
                                <div class="media-heading"><a href="javascript:void(0);" class="text-link"> Daniel Kristeen</a><span class="font-normal com-time">2 min ago</span>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="javascript:void(0);"><span>Reply</span></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa fa-heart p-r-5"></i>0 Like</a>
                                        </li>
                                    </ul>
                                </div>
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo.</p>
                                <div class="media reply">
                                    <div class="media-left">
                                        <a href="#"> <img alt="user" class="media-object" src="plugins/images/users/hanna.jpg"> </a>
                                    </div>
                                    <div class="media-body">
                                        <div class="media-heading"><a href="javascript:void(0);" class="text-link">Hanna Gover</a><span class="font-normal com-time">1 min ago</span>
                                            <ul class="list-inline">
                                                <li>
                                                    <a href="javascript:void(0);"><span>Reply</span></a>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0);"><i class="fa fa-heart p-r-5"></i>0 Like</a>
                                                </li>
                                            </ul>
                                        </div>
                                        <p>Cras sit amet nibh libero, in gravida nulla.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media">
                            <div class="media-left">
                                <a href="#"> <img alt="user" class="media-object" src="plugins/images/users/jeffery.jpg"> </a>
                            </div>
                            <div class="media-body">
                                <div class="media-heading"><a href="javascript:void(0);" class="text-link"> Daniel Kristeen</a><span class="font-normal com-time">2 sec ago</span>
                                    <ul class="list-inline">
                                        <li>
                                            <a href="javascript:void(0);"><span>Reply</span></a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);"><i class="fa fa-heart p-r-5 text-danger"></i>2 Like</a>
                                        </li>
                                    </ul>
                                </div>
                                <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo.</p>
                            </div>
                        </li>
                    </ul>
                    <div class="add-comment">
                        <input type="text" class="form-control" placeholder="Write your comment here">
                        <i class="fa fa-camera"></i>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="white-box">
                    <div class="profile-widget">
                        <div class="profile-img">
                            <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                            <p class="m-t-10 m-b-5"><a href="javascript:void(0);" class="profile-text font-22 font-semibold">Jeffery Brown</a></p>
                            <span class="font-16">Ahmedabad, IN</span>
                        </div>
                        <div class="profile-info">
                            <div class="col-xs-6 col-md-6 b-r">
                                <h1 class="text-primary">647 </h1>
                                <span class="font-16">Ranking</span>
                            </div>
                            <div class="col-xs-6 col-md-6">
                                <h1 class="text-primary">98 </h1>
                                <span class="font-16">Events</span>
                            </div>
                        </div>
                        <div class="profile-detail font-15">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.
                            </p>
                        </div>
                        <div class="profile-btn">
                            <a href="javascript:void(0);" class="btn btn-success">Follow Me</a>
                            <a href="javascript:void(0);" class="btn btn-default btn-outline m-r-0">Detail View</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                    <div class="ct-sales-chart chart-pos"></div>
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
                                    <h4>Progress<span class="pull-right text-warning font-22 font-normal">42%</span></h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100" style="width: 42%">
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
                                    <h4>Downloading<span class="pull-right text-danger font-22 font-normal">42%</span></h4>
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="42" aria-valuemin="0" aria-valuemax="100" style="width: 42%">
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
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef" data-fgColor="#0283cc" data-displayInput=false data-width="182" data-height="182" data-thickness=".05" data-linecap=round value="58" readonly>
                        </div>
                        <div class="c2">
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef" data-fgColor="#e74a25" data-displayInput=false data-width="154" data-height="154" data-thickness=".05" data-linecap=round value="45" readonly>
                        </div>
                        <div class="c3">
                            <input class="knob" data-min="0" data-max="100" data-bgColor="#e4edef" data-fgColor="#00bbd9" data-displayInput=false data-width="125" data-height="125" data-thickness=".05" data-linecap=round value="32" readonly>
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
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="34" aria-valuemin="0" aria-valuemax="100" style="width: 34%">
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
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="67" aria-valuemin="0" aria-valuemax="100" style="width: 67%">
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
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
                                        <span class="sr-only">15% Complete</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="up-add-file t-a-c">
                        <a href="javascript:void(0);" class="btn btn-primary font-16"><i class="fa fa-plus p-r-20"></i>Add Files</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box upload-widget">
                    <div class="t-a-c">
                        <div class="complete-chart" id="graph1" data-percent="45" data-size="160" data-line="5" data-rotate="0" data-color="#e74a25" data-text-color="#e74a25"></div>
                        <p class="font-20 m-b-0">Uploading</p>
                        <p class="text-primary font-semibold font-18">Myphotos_friends.png</p>
                        <span class="up-speed m-t-20 m-b-10">Speed: <span class="text-primary font-semibold">450 kbps</span></span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="white-box album-widget">
                    <h4 class="box-title">Create Your Album</h4>
                    <div class="alb-photos m-t-30">
                        <div class="alb-item">
                            <img src="plugins/images/a1.jpg">
                        </div>
                        <div class="alb-item">
                            <img src="plugins/images/a2.jpg">
                        </div>
                        <div class="alb-item">
                            <img src="plugins/images/a3.jpg">
                        </div>
                        <div class="alb-item uploading">
                            <div class="progress m-0">
                                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="34" aria-valuemin="0" aria-valuemax="100" style="width: 34%">
                                    <span class="sr-only">34% Complete</span>
                                </div>
                            </div>
                        </div>
                        <div class="alb-item add-more">
                            <a href="javascript:void(0);"><i class="fa fa-plus text-success"></i></a>
                        </div>
                    </div>
                    <div class="up-add-photo t-a-c">
                        <a href="javascript:void(0);" class="btn btn-primary font-16"><i class="fa fa-plus p-r-20"></i>Add Photos</a>
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
                                <div><a href="javascript:void(0);" class="text-link font-semibold">Hanna Gover</a> left a comment on the article <a href="javascript:void(0);" class="text-link font-semibold">'The best tutorial for creating a blog'.</a></div>
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
                                <div><a href="javascript:void(0);" class="text-link font-semibold">22 New Request</a> please approve or reject the request.</div>
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
                                <div><a href="javascript:void(0);" class="text-link font-semibold">Main Disc</a> is running out of space. Please <a href="javascript:void(0);" class="text-link font-semibold">delete</a> unwanted files to continue.</div>
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
                                    <a href="javascript:void(0);" class="text-link font-semibold">Daniel Kristeen</a> has submitted an article.
                                    <div class="sl-btn">
                                        <a href="javascript:void(0);" class="btn btn-success btn-outline btn-rounded m-r-20">Approve</a>
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
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);" class="font-16 font-semibold text-white">Daniel Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);" class="font-16 font-semibold text-white">Daniel Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);" class="font-16 font-semibold text-white">Daniel Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="a-img">
                                        <img src="plugins/images/users/jeffery.jpg" alt="user-img" class="img-circle">
                                        <p class="m-t-15 m-b-5"><a href="javascript:void(0);" class="font-16 font-semibold text-white">Daniel Kristeen</a></p>
                                    </div>
                                    <div class="q-img">
                                        <img src="plugins/images/q.png" alt="q">
                                    </div>
                                    <div class="q-text">
                                        <p class="font-light">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
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
        <div class="row">
            <div class="col-md-4">
                <div class="white-box ecom-stat-widget">
                    <div class="row">
                        <div class="col-xs-6">
                            <span class="text-blue font-light">5390 <i class="icon-arrow-up-circle text-success"></i></span>
                            <p class="font-12">Order Received</p>
                        </div>
                        <div class="col-xs-6">
                            <span class="icoleaf bg-primary text-white"><i class="mdi mdi-checkbox-marked-circle-outline"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-box ecom-stat-widget">
                    <div class="row">
                        <div class="col-xs-6">
                            <span class="text-blue font-light">687 <i class="icon-arrow-down-circle text-danger"></i></span>
                            <p class="font-12">Total Charges</p>
                        </div>
                        <div class="col-xs-6">
                            <span class="icoleaf bg-success text-white"><i class="mdi mdi-comment-text-outline"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="white-box ecom-stat-widget">
                    <div class="row">
                        <div class="col-xs-6">
                            <span class="text-blue font-light">&#36;2947 <i class="icon-arrow-up-circle text-success"></i></span>
                            <p class="font-12">Total Earnings</p>
                        </div>
                        <div class="col-xs-6">
                            <span class="icoleaf bg-danger text-white"><i class="mdi mdi-coin"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 col-sm-12">
                <div class="white-box order-chart-widget">
                    <h4 class="box-title">Order Status</h4>
                    <div id="order-status-chart" style="height: 350px;"></div>
                    <ul class="list-inline m-b-0 m-t-20 t-a-c">
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>Orders</h6>
                        </li>
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-danger"></i>Pending</h6>
                        </li>
                        <li>
                            <h6 class="font-15"><i class="fa fa-circle m-r-5 text-success"></i>Delivered</h6>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-8 col-sm-12">
                <div class="white-box user-table">
                    <div class="row">
                        <div class="col-sm-6">
                            <h4 class="box-title">Table Format/User Data</h4>
                        </div>
                        <div class="col-sm-6">
                            <select class="custom-select">
                                <option selected>Sort the list by</option>
                                <option value="1">Product</option>
                                <option value="2">Customer</option>
                                <option value="3">Location</option>
                                <option value="4">Quantity</option>
                                <option value="5">Status</option>
                            </select>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table">
                            <thead>
                            <tr>
                                <th>
                                    <div class="checkbox checkbox-info">
                                        <input id="c1" type="checkbox">
                                        <label for="c1"></label>
                                    </div>
                                </th>
                                <th>Product</th>
                                <th>Customer</th>
                                <th>Quantity</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c2" type="checkbox">
                                        <label for="c2"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="plugins/images/p1.png" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Mobile</a>
                                </td>
                                <td>Daniel Kristeen</td>
                                <td>1</td>
                                <td><span class="label label-success">Complete</span></td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c33" type="checkbox">
                                        <label for="c33"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="plugins/images/p2.png" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Headphone</a>
                                </td>
                                <td>Hanna Gover</td>
                                <td>2</td>
                                <td><span class="label label-info">On Hold</span> </td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c44" type="checkbox">
                                        <label for="c44"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="plugins/images/p3.png" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Earphone</a>
                                </td>
                                <td>Jeffery Brown</td>
                                <td>3</td>
                                <td><span class="label label-danger">Returned</span> </td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="pagination">
                        <li class="disabled"> <a href="#">1</a> </li>
                        <li class="active"> <a href="#">2</a> </li>
                        <li> <a href="#">3</a> </li>
                        <li> <a href="#">4</a> </li>
                        <li> <a href="#">5</a> </li>
                    </ul>
                </div>
            </div>
        </div>
        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
    <script src="{{asset('plugins/components/raphael/raphael-min.js')}}"></script>
    <script src="{{asset('plugins/components/morrisjs/morris.js')}}"></script>
    <script src="{{asset('plugins/components/knob/jquery.knob.js')}}"></script>
    <script src="{{asset('plugins/components/easypiechart/dist/jquery.easypiechart.min.js')}}"></script>
    <script src='{{asset('plugins/components/moment/moment.js')}}'></script>
    <script src='{{asset('plugins/components/fullcalendar/fullcalendar.js')}}'></script>
    <script src="{{asset('plugins/components/custom-chart/chart.js')}}"></script>
    <script src="{{asset('js/widget.js')}}"></script>
@endpush
