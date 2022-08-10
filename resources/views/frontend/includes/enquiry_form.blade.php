@php
$ip = json_encode(\Request::ip());
$location = unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip=' . $ip) );
@endphp
<div class="modal fade" id="myModal2" role="dialog">
  <div class="modal-dialog">
    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">
        <h4 class="modal-title">Tractor Enquiry Form</h4>
      </div>
      <div class="modal-body">
        <form action="{{ route('frontend.includes.enquiryform',) }}" method="post">
          @csrf
          <table class="table table-bordered table-condensed mb-10">
            <tbody>
              <tr>
                <td class="col-md-4 bg_td_ligh"> Make / Model</td>
                <td class="col-md-8"><input type="text" id="model" name="model" class="form-control tractorname">
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh"> Quantity : <span class="text-danger">*</span></td>
                <td class="col-md-8" colspan="2">
                  <select class="form-control" name="qty" required tabindex="4">
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh">
                  Name :
                  <span class="text-danger">*</span>
                </td>
                <td class="col-md-8" colspan="2">
                  <input class="form-control" id="Name" maxlength="100" name="name" required="true" tabindex="1"
                    type="text" value="" />
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh"> Phone : <span class="text-danger">*</span></td>
                <td class="col-md-8" colspan="2">
                  <input class="form-control" id="number" maxlength="50" name="number" required="true" tabindex="2"
                    type="text" value="" />
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh"> Email : <span class="text-danger">*</span></td>
                <td class="col-md-8" colspan="2">
                  <input class="form-control" id="email" maxlength="50" name="email" required="true" tabindex="3"
                    type="email" value="" />
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh"> Country : <span class="text-danger">*</span></td>
                <td class="col-md-8" colspan="2">
                  <select class="form-control" name="country" required tabindex="4">
                    {{-- <option value="pakistan">pakistan</option> --}}

                    <option value="{{$location['geoplugin_regionName'].",".$location['geoplugin_countryName']}}">
                      {{$location['geoplugin_regionName'].",".$location['geoplugin_countryName']}}</option>
                  </select>
                </td>
              </tr>

              <tr>
                <td class="col-md-4 bg_td_ligh"> Inquiry/Comments : <span class="text-danger">*</span></td>
                <td class="col-md-8" colspan="2">
                  <textarea class="form-control" name="message" id="message" cols="20" rows="4" tabindex="5"
                    maxlength="250"></textarea>
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh">
                <td class="col-md-8" colspan="2">
                  <div id="RegCaptcha"></div>
                </td>
                </td>
              </tr>
              <tr>
                <td class="col-md-4 bg_td_ligh"> </td>
                <td class="col-md-8" colspan="2" id="mesghere">
                  <input type="submit" value="Send Enquiry" name="subme" class="btn btn-primary" id="subme"
                    tabindex="6">
                </td>
              </tr>
            </tbody>
          </table>
        </form>
      </div>
      <div class="modal-footer">
      </div>
    </div>
  </div>
</div>