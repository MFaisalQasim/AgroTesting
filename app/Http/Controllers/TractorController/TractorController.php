<?php

namespace App\Http\Controllers\TractorController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Tractor;
use App\Brand;
use Auth;
use Storage;
use Session;
use Config;
use App\TractorImage;
use App\Helpers\AppHelper;
use Illuminate\Http\Request;
class TractorController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index(Request $request)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 250;

            if (!empty($keyword)) {
                $tractor = Tractor::where('name', 'LIKE', "%$keyword%")
                ->orWhere('description', 'LIKE', "%$keyword%")
                ->orWhere('feature_description', 'LIKE', "%$keyword%")
                ->orWhere('technical_description', 'LIKE', "%$keyword%")
                ->orWhere('mannual', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $tractor = Tractor::paginate($perPage);
            }
            return view('tractor.tractor.index', compact('tractor'));
        }
        return response(view('403'), 403);

    }

    
    public function create()
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $brandlist  = Brand::all();
            return view('tractor.tractor.create',compact('brandlist'));
        }
        return response(view('403'), 403);

    }

  
    public function store(Request $request)
    {
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
        // $UploadMannualFIlePath = Config::get("constants.attachment_paths.TractorMannuals");

        $image ='';
        extract($request->all());  
        try{
            if( $request->mannual!=""){
                $image = "upload/". Storage::disk('upload')->put('TractorsMannuals', $request->mannual);               
            }
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.
      
        $itemAttachment = [];
        $ErrorMsg = "";

        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
            'name'                  => ['required' , 'unique:tractors'],    
            'images'                => 'required',
            'tractor_slug'          => ['required',  'unique:tractors'],
		]);
           $adminId                             =     Auth::User()->id; 
           $tractor                             =     new Tractor();
           $tractor->name                       =     $request->name;
           $tractor->description                =     $request->description;
           $tractor->feature_description        =     $request->feature_description;
           $tractor->technical_description      =     $request->technical_description;
           $tractor->mannual                    =     $image;
           $tractor->brand_id                   =     $request->brand_id;
           $tractor->tractor_slug               =     $request->tractor_slug;
           $tractor->admin_id                   =     $adminId;
          
           if ($ErrorMsg == "") {
           $tractor->save();
           }
           if ($ErrorMsg == "") {
               for ($i=0; $i < count($request->images) ; $i++) {
                $SavedFoodItemAttachment = AppHelper::SaveFileAndGetPath($request->images[$i], $UploadEventGalleryFIlePath);
                if ($SavedFoodItemAttachment["reply"] == 1) {
                    $itemAttachment[$i] = $SavedFoodItemAttachment["path"];
                    TractorImage::create([
                        "tractor_id"=>$tractor->id,
                        "images"=>$itemAttachment[$i]
                    ]);
                } else {
                    $ErrorMsg = $SavedFoodItemAttachment["msg"];
                }
            }
        }     
          Session::flash('message','Tractor added!');
           return redirect('tractor')->with('flash_message', 'Tractor added!');
        }
        return response(view('403'), 403);
    }

    public function show($id)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
           $tractor          = Tractor::findOrfail($id);
           $brandname        = Brand::where('id', $tractor->brand_id)->first();
           $getTractorImages = TractorImage::where('tractor_id', $tractor->id)->get();
            return view('tractor.tractor.show', compact('tractor','getTractorImages','brandname'));
        }
        return response(view('403'), 403);
    }

  
    public function edit($id)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
           $tractor = Tractor::findOrFail($id);
           $brandname  = Brand::where('id', $tractor->brand_id)->first();
           $brandlist  = Brand::all();
            return view('tractor.tractor.edit', compact('tractor' ,'brandname','brandlist'));
        }
        return response(view('403'), 403);
    }


    public function update(Request $request, $id)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
            'name'                    =>  'required',
            'tractor_slug'            => 'required',
		]);
            $requestData = $request->all();
            
            $tractor = Tractor::findOrFail($id);
            $adminId                             =     Auth::User()->id; 
            $tractor->name                       =     $request->name;
            $tractor->description                =     $request->description;
            $tractor->feature_description        =     $request->feature_description;
            $tractor->technical_description      =     $request->technical_description;
            $tractor->tractor_slug               =     $request->tractor_slug;
            $tractor->brand_id                   =     $request->brand_id;
            $tractor->admin_id                   =     $adminId;

            if($request->hasfile('mannual')){
             $document ='';

             extract($request->all());  
             try{
             $document = Storage::disk('upload')->put('TractorMannuals', $request->mannual);        
             $tractor->mannual  = $document;
             $tractor->save();
             }
             catch(\Exception $e)
             {
             return $e->getMessage();
             }
     }
             $tractor->save();
             Session::flash('message','Tractor updated!');

             return redirect('tractor')->with('flash_message', 'Tractor updated!');
        }
        return response(view('403'), 403);

    }

    public function destroy($id)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Tractor::destroy($id);
            Session::flash('message','Tractor deleted!');

            return redirect('tractor')->with('flash_message', 'Tractor deleted!');
        }
        return response(view('403'), 403);

    }
    public function imgdestroy($id)
    {
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            TractorImage::destroy($id);
            Session::flash('message','Tractor deleted!');

            return redirect('tractor')->with('flash_message', 'Tractor deleted!');
        }
        return response(view('403'), 403);

    }
    public function insertimg(Request $request,$id)
    {
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
        $model = str_slug('tractor','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            for ($i=0; $i < count($request->images) ; $i++) {
                $SavedFoodItemAttachment = AppHelper::SaveFileAndGetPath($request->images[$i], $UploadEventGalleryFIlePath);
                if ($SavedFoodItemAttachment["reply"] == 1) {
                    $itemAttachment[$i] = $SavedFoodItemAttachment["path"];
                    TractorImage::create([
                        "tractor_id"=>$id,
                        "images"=>$itemAttachment[$i]
                    ]);
                } else {
                    $ErrorMsg = $SavedFoodItemAttachment["msg"];
                }
            }
            Session::flash('message','Tractor image added!');

            return redirect('tractor')->with('flash_message', 'Tractor deleted!');
        }
        return response(view('403'), 403);

    }
}