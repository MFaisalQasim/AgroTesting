<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Image;
use Storage;
use Zipper;
use File;
use ZipArchive;
use App\WaterMark;
use Illuminate\Http\Request;
use Illuminate\Filesystem\Filesystem;
class WaterMarkController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\View\View
     */

    public function index(Request $request)
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $watermark = WaterMark::where('image', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $watermark = WaterMark::paginate($perPage);
            }

            return view('watermark.water-mark.index', compact('watermark'));
        }
        return response(view('403'), 403);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('watermark.water-mark.create');
        }
        return response(view('403'), 403);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function store(Request $request)
    {
        
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
                  "image"    => "required",
                  "image.*"  => "required|image|mimes:jpeg,png,jpg,gif,svg,jfif",
		]);
		
		foreach ($request->image as $key => $value) {
        $image = $value;
        $input['image'] = time().'.'.$image->extension();
    
        $imgFile = Image::make($image->getRealPath());
     
        $imgFile->resize(1080, 1080, function ($constraint) {
            $constraint->upsize();
        });

        $imgFile->insert(public_path('logo.png'), 'bottom-right', 0, 0
        )->save(public_path('/watermark_images').'/'.$input['image']);  
       }
    
          
            return redirect('watermark/water-mark')->with('flash_message', 'WaterMark added!');
        }
 
        return response(view('403'), 403);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function show($id)
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $watermark = WaterMark::findOrFail($id);
            return view('watermark.water-mark.show', compact('watermark'));
        }
        return response(view('403'), 403);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     *
     * @return \Illuminate\View\View
     */
    public function edit($id)
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $watermark = WaterMark::findOrFail($id);
            return view('watermark.water-mark.edit', compact('watermark'));
        }
        return response(view('403'), 403);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function update(Request $request, $id)
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'image' => 'required'
		]);
            $requestData = $request->all();
            
            $watermark = WaterMark::findOrFail($id);
             $watermark->update($requestData);

             return redirect('watermark/water-mark')->with('flash_message', 'WaterMark updated!');
        }
        return response(view('403'), 403);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     *
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function destroy($id)
    {
        $model = str_slug('watermark','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            WaterMark::destroy($id);

            return redirect('watermark/water-mark')->with('flash_message', 'WaterMark deleted!');
        }
        return response(view('403'), 403);

    }
    public function watermarkdel(){
        $file = new Filesystem;
        $file->cleanDirectory(public_path('/watermark_images'));
       return redirect('watermark/water-mark')->with('flash_message', 'WaterMark deleted!');
        
    }
    public function watermarkdownload(Request $request){
   
         if(file_exists(public_path("/zipfile/".date('Y-m-d').'.zip'))){
            unlink(public_path("/zipfile/".date('Y-m-d').'.zip'));
        }
      
        $zip = new ZipArchive;
   
        $fileName = date('Y-m-d').'.zip';
   
        if ($zip->open(public_path("/zipfile/".$fileName), ZipArchive::CREATE) === TRUE)
        {
     
            $files = File::files(public_path('/watermark_images'));
            foreach ($files as $key => $value) {
                $relativeNameInZipFile = basename($value);
                $zip->addFile($value, $relativeNameInZipFile);
            }
            $zip->close();
        }
      return redirect('watermark/water-mark')->with('flash_message', 'Zip Files Created!');
        //  return response()->download(public_path($fileName))->deleteFileAfterSend(true);
    
     

        
    }
}
