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

class AgroasiaTractorsApi extends Controller
{
     
    public function index(){
        $brand=Brand::where("name","massey-ferguson-tractors")->get()->first();
        $brand1 = Brand::where("name","farm-implements")->get()->first();
        $brand2 = Brand::where("name","new-holland-tractors")->get()->first();
        $mf     = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(8);
        $nh     = Tractor::where('brand_id',$brand2->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        $imp    = Tractor::where('brand_id',$brand1->id)->with("getfrontTractorImages")->with("getBrandName")->paginate(4);
        return [$mf,$nh,$imp];
        return view("frontend.index",compact('mf','nh','imp'));
    }
    public function messeyferguson(){
        $brand = Brand::where("name","massey-ferguson-tractors")->get()->first();
        $mf    = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();
        $ErrorMsg = "";
        // try {
            if ($ErrorMsg == "") {
                return $mf;
            }
            else {
                return ["result"=> "We encounter With Some Error"];
            }
        // } 
        // \Throwable $th
        // catch (\Throwable $th) {
        //     // return $th->getMessage();
        //     return ["result"=> "We encounter With Some Error"];
        // }
        // return view("frontend.massey_ferguson_tractors.index",compact('mf'));
    }
    public function newholland(){
        $brand = Brand::where("name","new-holland-tractors")->get()->first();
        $nh    = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();
        return $nh;
        return view("frontend.new_holland_tractors.index",compact('nh'));
    }
    public function implement(){
        $brand = Brand::where("name","farm-implements")->get()->first();
        $imp   = Tractor::where('brand_id',8)->with("getfrontTractorImages")->with("getBrandName")->get();
        return $imp;
        return view("frontend.farm_implements.index",compact('imp'));
    }
    public function ford(){
        $brand = Brand::where("name","ford-tractors")->get()->first();
        $f     = Tractor::where('brand_id',$brand->id)->with("getfrontTractorImages")->with("getBrandName")->get();
        return $f;
        return view("frontend.ford_tractors.index",compact('f'));
    }
    public function product($brand, $slag){
        // return "here";  
        // return ($brand  . $slag);
        $product_details = Tractor::where('tractor_slug', $slag)->with("getTractorImages")->with("QA")->with("QALast")->get()->first();
        return $product_details;
        return view("frontend.product.index",compact('product_details'));
    }
    public function countryproduct($c_slag,$slag,$country){
        // return "here";  
        // return ($c_slag  . $slag . $country);
        $product_details = Tractor::where('tractor_slug', $slag)->with("getTractorImages")->with("QA")->with("QALast")->get()->first();
        return [$product_details, $country];
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
        return [$country,$mf,$nh, $imp];
        return view("frontend.countries.index",compact('country','mf','nh','imp'));
    }
    public function aboutus(){
        $testimonial=Testimonial::get();
        return $testimonial;
        return view("frontend.about_us.index",compact('testimonial'));
    }
    public function contactus(){
        return view("frontend.contact_us.index");
    }
    public function testimonial(){
        $testimonial = Testimonial::get();
        return $testimonial;
        return view("frontend.testimonial.index",compact('testimonial'));
    }
    public function gallery(){
        $images   = TractorImage::get('images')->take(100);
        $gallery  = Gallery::get();
        return [$gallery,$images];
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
        $data              =     new Enquiryform();
        $data->model       =     $request->model;
        $data->qty         =     $request->qty;
        $data->name        =     $request->name;
        $data->number      =     $request->number;
        $data->email       =     $request->email;
        $data->country     =     $request->country;
        $data->message     =     $request->message;
        $result = $data->save();
        if ($result) {
           return ["result"=> "Data has been saved"];
        }
        else {
            return ["result"=> "Operation Failed"];
        }
        return view("frontend.thanks.index");
    }
    public function contactform(Request $request){
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
        return view("frontend.thanks.index");
    }

}