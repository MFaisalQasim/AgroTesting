<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\ContactFormDatum;
use App\TractorImage;
use App\CountryList;
use App\Testimonial;
use App\Enquiryform;
use App\Gallery;
use App\Tractor;
use App\AdPost;
use App\Brand;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class AgroasiaTractorsApi extends Controller
{
     
    public function index(){
        $brand=Brand::where("name","massey-ferguson-tractors")->get()->first();
        $brand1 = Brand::where("name","farm-implements")->get()->first();
        $brand2 = Brand::where("name","new-holland-tractors")->get()->first();
        $mf     = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(8);
        $nh     = Tractor::where('brand_id',$brand2->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        $imp    = Tractor::where('brand_id',$brand1->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        // $ErrorMsg = "";
        // try {
            // if (empty($mf) ) {
            //     return ["result"=> "Sorry We Have Empty Array/Object"];
            // }
            // if (empty($nh)  || empty($imp)) {
            //     return ["result"=> "Sorry We Have Empty nh Array/Object"];
            // }
            // if (empty($imp)) {
            //     return ["result"=> "Sorry We Have Empty imp Array/Object"];
            // }
            // elseif ($ErrorMsg != "") {
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return [$mf,$nh,$imp];
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.index",compact('mf','nh','imp'));
    }
    public function messeyferguson(){
        $brand = Brand::where("name","massey-ferguson-tractors")->get()->first();
        $mf    = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();


        // $this->renderable(function (NotFoundHttpException $e, $request) {
        //     if ($request->is('api/*')) {
        //         return response()->json([
        //             'message' => 'Record not found.'
        //         ], 404);
        //     }else {
        //             return $mf;
        //     }
        // });


        $ErrorMsg = "";
        try {
            if (empty($mf) ) {
                return ["result"=> "Sorry We Have Empty Array/Object"];
            }
            elseif ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $mf;
            }
        } catch (Throwable $e) {
            report($e);
        }
        // return view("frontend.massey_ferguson_tractors.index",compact('mf'));
    }
    public function newholland(){
        $brand = Brand::where("name","new-holland-tractors")->get()->first();
        $nh    = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return [$mf,$nh,$imp];
            }
        } catch (Throwable $e) {
            report($e);
        }
        return $nh;
        return view("frontend.new_holland_tractors.index",compact('nh'));
    }
    public function implement(){
        $brand = Brand::where("name","farm-implements")->get()->first();
        $imp   = Tractor::where('brand_id',8)->with("getfrontTractorImages")->with("getBrandName")->get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $imp;
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.farm_implements.index",compact('imp'));
    }
    public function ford(){
        $brand = Brand::where("name","ford-tractors")->get()->first();
        $f     = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $f;
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.ford_tractors.index",compact('f'));
    }
    public function product($brand, $slag){
        // return "here";  
        // return ($brand  . $slag);
        $product_details = Tractor::where('tractor_slug', $slag)->with("getTractorImages")->with("QA")->with("QALast")->get()->first();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $product_details;
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.product.index",compact('product_details'));
    }
    public function countryproduct($c_slag,$slag,$country){
        // return "here";  
        // return ($c_slag  . $slag . $country);
        $product_details = Tractor::where('tractor_slug', $slag)->with("getTractorImages")->with("QA")->with("QALast")->get()->first();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return [$product_details, $country];
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.countries.product",compact('product_details','country'));
    }
    public function country($c_slag){
        // return "here";  
        $brand   = Brand::where("name","massey-ferguson-tractors")->get()->first();
        $brand1  = Brand::where("name","farm-implements")->get()->first();
        $brand2  = Brand::where("name","new-holland-tractors")->get()->first();
        $country = CountryList::where("link",$c_slag)->get()->first();
        $brand   = Brand::where("name","massey-ferguson-tractors")->get()->first();
        $mf      = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(8);
        $nh      = Tractor::where('brand_id',$brand2->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        $imp     = Tractor::where('brand_id',$brand1->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return [$country,$mf,$nh, $imp];
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.countries.index",compact('country','mf','nh','imp'));
    }
    public function aboutus(){
        $testimonial=Testimonial::get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $testimonial;
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.about_us.index",compact('testimonial'));
    }
    public function contactus(){
        return view("frontend.contact_us.index");
    }
    public function testimonial(){
        $testimonial = Testimonial::get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return $testimonial;
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.testimonial.index",compact('testimonial'));
    }
    public function gallery(){
        $images   = TractorImage::get('images')->take(100);
        $gallery  = Gallery::get();
        $ErrorMsg = "";
        try {
            if ($ErrorMsg != "") {
                return ["result"=> "We encounter With Some Error"];
            }else {
                return [$gallery,$images];
            }
        } catch (Throwable $e) {
            report($e);
        }
        return view("frontend.gallery.index",compact('gallery','images'));
    }
    public function bankdetails(){
        return view("frontend.bank_details.index");
    }
    public function faq(){
        return view("frontend.faq.index");
    }
    public function howtoplaceorder(){
        return view("frontend.how_to_place_order.index");
    }
    public function salesagent(){
        return view("frontend.sales_agent.index");
    }
    public function shipment(){
        return view("frontend.shipment.index");
    }
    public function caretip(){
        return view("frontend.care_tip.index");
    }
    public function sitemap(){
        return view("frontend.site_map.index");
    }
    public function maerskline(){
        return view("frontend.maersk_line.index");
    }
    public function cmacgm(){
        return view("frontend.cma_cgm.index");
    }
    public function mscpakistan(){
        return view("frontend.msc_pakistan.index");
    }
    public function enquiryform(Request $request){
        
        // $validator = Validator::make($request->all(), [
        //     'model' => 'required|min:2|max:255',
        //     'qty' => 'required|min:2|max:255',
        //     'name' => 'required|min:2|max:255',
        //     'number' => 'required|min:2|max:255',
        //     'email' => 'required|min:2|max:255',
        //     'country' => 'required|min:2|max:255',
        //     'message' => 'required|min:2|max:255'
        // ]);
        $data              =     new Enquiryform();
        $data->model       =     $request->model;
        $data->qty         =     $request->qty;
        $data->name        =     $request->name;
        $data->number      =     $request->number;
        $data->email       =     $request->email;
        $data->country     =     $request->country;
        $data->message     =     $request->message;
        $result = $data->save();
        try {
            if ($validator->fails()) {
                return ["result"=> "Operation Failed, Please Enter valid Data"];
            } else {
                if ($result) {
                    return ["result"=> "Data has been saved"];
                 }
                 else {
                     return ["result"=> "Operation Failed"];
                 }
            }
        }catch (Throwable $e) {
            report($e);
        }
        // return view("frontend.thanks.index");
    }
    public function contactform(Request $request){
        
        // $validator = Validator::make($request->all(), [
        //     'tractor' => 'required|min:2|max:255',
        //     'implement1' => 'required|min:2|max:255',
        //     'implement2' => 'required|min:2|max:255',
        //     'number' => 'required|min:2|max:255',
        //     'email' => 'required|min:2|max:255',
        //     'country' => 'required|min:2|max:255',
        //     'message' => 'required|min:2|max:255'
        // ]);
        $data              =     new ContactFormDatum();
        $data->tractor     =     $request->tractor;
        $data->implement1  =     $request->implement1;
        $data->implement2  =     $request->implement2;
        $data->name        =     $request->name;
        $data->number      =     $request->number;
        $data->email       =     $request->email;
        $data->country     =     $request->country;
        $data->message     =     $request->message;
        $data->save();
        try {
            if ($result) {
               return ["result"=> "Data has been saved"];
            }
            else {
                return ["result"=> "Operation Failed"];
            }
        }catch (Throwable $e) {
            report($e);
        }
        // return view("frontend.thanks.index");
    }

}