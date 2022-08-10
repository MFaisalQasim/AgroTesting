@extends('layouts.master')

@push('css')

@endpush

@section('content')
    <div class="container-fluid">
        <!-- /.row -->
        <div class="row">
            <div class="col-md-8 col-sm-7">
                <div class="panel panel-info">
                    <div class="panel-heading"> Your Cart (5 items)</div>
                    <div class="panel-wrapper collapse in" aria-expanded="true">
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table product-overview">
                                    <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Product info</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th style="text-align:center">Total</th>
                                        <th style="text-align:center">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td width="150"><img src="plugins/images/chair.jpg" alt="iMac" width="80"></td>
                                        <td width="550">
                                            <h5 class="font-500">Rounded Chair</h5>
                                        </td>
                                        <td>$153</td>
                                        <td width="70">
                                            <input type="text" class="form-control" placeholder="1">
                                        </td>
                                        <td width="150" align="center" class="font-500">$153</td>
                                        <td align="center"><a href="javascript:void(0)" class="text-inverse" title=""
                                                              data-toggle="tooltip" data-original-title="Delete"><i
                                                        class="ti-trash text-dark"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="plugins/images/chair2.jpg" alt="iMac" width="80"></td>
                                        <td>
                                            <h5 class="font-500">Rounded Chair</h5>
                                        </td>
                                        <td>$153</td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="1">
                                        </td>
                                        <td class="font-500" align="center">$153</td>
                                        <td align="center"><a href="javascript:void(0)" class="text-inverse" title=""
                                                              data-toggle="tooltip" data-original-title="Delete"><i
                                                        class="ti-trash text-dark"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="plugins/images/chair3.jpg" alt="iMac" width="80"></td>
                                        <td>
                                            <h5 class="font-500">Rounded Chair</h5>
                                        </td>
                                        <td>$153</td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="1">
                                        </td>
                                        <td class="font-500" align="center">$153</td>
                                        <td align="center"><a href="javascript:void(0)" class="text-inverse" title=""
                                                              data-toggle="tooltip" data-original-title="Delete"><i
                                                        class="ti-trash text-dark"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="plugins/images/chair4.jpg" alt="iMac" width="80"></td>
                                        <td>
                                            <h5 class="font-500">Rounded Chair</h5>
                                        </td>
                                        <td>$153</td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="1">
                                        </td>
                                        <td class="font-500" align="center">$153</td>
                                        <td align="center"><a href="javascript:void(0)" class="text-inverse" title=""
                                                              data-toggle="tooltip" data-original-title="Delete"><i
                                                        class="ti-trash text-dark"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td><img src="plugins/images/chair3.jpg" alt="iMac" width="80"></td>
                                        <td>
                                            <h5 class="font-500">Rounded Chair</h5>
                                        </td>
                                        <td>$153</td>
                                        <td>
                                            <input type="text" class="form-control" placeholder="1">
                                        </td>
                                        <td class="font-500" align="center">$153</td>
                                        <td align="center"><a href="javascript:void(0)" class="text-inverse" title=""
                                                              data-toggle="tooltip" data-original-title="Delete"><i
                                                        class="ti-trash text-dark"></i></a></td>
                                    </tr>
                                    </tbody>
                                </table>
                                <hr>
                                <button class="btn btn-default btn-outline"><i class="fa fa-arrow-left"></i> Continue
                                    shopping
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-5">
                <div class="white-box">
                    <h3 class="box-title">Discount</h3>
                    <hr>
                    <small>If you have any discount vouchers/coupans, apply here. If you don't have any, click <a
                                href="javascript:void(0);" class="text-link">here</a> to get one.
                    </small>
                    <form class="form-inline m-t-20">
                        <div class="form-group">
                            <input type="text" class="form-control" id="coupan">
                        </div>
                        <button type="submit" class="btn btn-danger">Apply</button>
                    </form>
                </div>
            </div>
            <div class="col-md-4 col-sm-5">
                <div class="white-box pro-cart">
                    <h3 class="box-title">Cart Summary</h3>
                    <hr>
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr>
                                <td>Total</td>
                                <td>$355</td>
                            </tr>
                            <tr>
                                <td>Coupan Discount</td>
                                <td>-$55</td>
                            </tr>
                            <tr>
                                <td>Delivery Charges</td>
                                <td>$25</td>
                            </tr>
                            <tr>
                                <td>Tax</td>
                                <td>$10</td>
                            </tr>
                            <tr>
                                <td>Payable Amount</td>
                                <td>$335</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="t-a-c">
                        <button class="btn btn-success">Place Order</button>
                        <button class="btn btn-default btn-outline">Cancel Order</button>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-5">
                <div class="white-box">
                    <h3 class="box-title">Support</h3>
                    <hr>
                    <h4><i class="ti-mobile"></i> +1234567890 (Toll Free)</h4>
                    <small>Contact us for any queries. We are avalible 24x7x365.</small>
                </div>
            </div>
        </div>
        <!--row -->
        @include('layouts.partials.right-sidebar')
    </div>
@endsection

@push('js')
@endpush