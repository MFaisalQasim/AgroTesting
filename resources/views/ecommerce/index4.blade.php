@extends('layouts.master')

@push('css')
    <link href="{{asset('plugins/components/morrisjs/morris.css')}}" rel="stylesheet">
@endpush

@section('content')
    <div class="container-fluid">
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
            <div class="col-md-8 col-sm-12">
                <div class="white-box stat-widget">
                    <div class="row">
                        <div class="col-md-3 col-sm-3">
                            <h4 class="box-title">Sales Statistics</h4>
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
                                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-success"></i>Product-A</h6>
                                </li>
                                <li>
                                    <h6 class="font-15"><i class="fa fa-circle m-r-5 text-primary"></i>Product-B</h6>
                                </li>
                            </ul>
                        </div>
                        <div class="stat chart-pos"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="white-box order-chart-widget">
                    <h4 class="box-title">Order Status</h4>
                    <div id="order-status-chart" style="height: 250px;"></div>
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
        </div>
        <div class="row">
            <div class="col-md-12">
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
                                <th>Location</th>
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
                                    <img src="{{asset('plugins/images/p1.png')}}" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Mobile</a>
                                </td>
                                <td>Daniel Kristeen</td>
                                <td>Texas, US</td>
                                <td>1</td>
                                <td><span class="label label-success">Complete</span></td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c3" type="checkbox">
                                        <label for="c3"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="{{asset('plugins/images/p2.png')}}" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Headphone</a>
                                </td>
                                <td>Hanna Gover</td>
                                <td>Los Angeles, US</td>
                                <td>2</td>
                                <td><span class="label label-info">On Hold</span> </td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c4" type="checkbox">
                                        <label for="c4"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="{{asset('plugins/images/p3.png')}}" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Earphone</a>
                                </td>
                                <td>Jeffery Brown</td>
                                <td>Houston, US</td>
                                <td>3</td>
                                <td><span class="label label-danger">Returned</span> </td>
                                <td>
                                    <a href="javascript:void(0);" class="btn btn-default btn-outline font-16"><i class="fa fa-trash" aria-hidden="true"></i></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="checkbox checkbox-info">
                                        <input id="c5" type="checkbox">
                                        <label for="c5"></label>
                                    </div>
                                </td>
                                <td>
                                    <img src="{{asset('plugins/images/p4.png')}}" alt="product" width="60" height="60">
                                    <a href="javascript:void(0);" class="p-l-25 text-link">Laptop</a>
                                </td>
                                <td>Elliot Dugteren</td>
                                <td>San Antonio, US</td>
                                <td>1</td>
                                <td><span class="label label-warning">Pending</span> </td>
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
        <!-- ===== Right-Sidebar ===== -->
        @include('layouts.partials.right-sidebar')
        <!-- ===== Right-Sidebar-End ===== -->
    </div>
@endsection

@push('js')
    <script src="{{asset('plugins/components/raphael/raphael-min.js')}}"></script>
    <script src="{{asset('plugins/components/morrisjs/morris.js')}}"></script>
    <script src="{{asset('js/db4.js')}}"></script>

@endpush
