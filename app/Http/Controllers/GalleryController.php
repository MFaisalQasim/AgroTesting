<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Auth;
use Session;
use Config;
use Storage;
use App\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $gallery = Gallery::where('admin_id', 'LIKE', "%$keyword%")
                ->orWhere('path', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $gallery = Gallery::paginate($perPage);
            }

            return view('gallery.gallery.index', compact('gallery'));
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('gallery.gallery.create');
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'path' => 'required'
		]);
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.GalleryVideo");

        $path ='';
        extract($request->all());  
        try{
        $path = Storage::disk('upload')->put('Gallery', $request->path);               
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.
        $adminId              =     Auth::User()->id; 
        $data                 = new Gallery();
        $data->admin_id       = $adminId;
        $data->path           = "upload/".$path;
        $data->save();
        Session::flash('message','Gallery  Inserted!');
  
            return redirect('gallery/gallery')->with('flash_message', 'Gallery added!');
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $gallery = Gallery::findOrFail($id);
            return view('gallery.gallery.show', compact('gallery'));
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $gallery = Gallery::findOrFail($id);
            return view('gallery.gallery.edit', compact('gallery'));
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'path' => 'required'
		]);
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
        // $UploadMannualFIlePath = Config::get("constants.attachment_paths.TractorMannuals");

        $path ='';
        extract($request->all());  
        try{
        $path = Storage::disk('upload')->put('Gallery', $request->path);               
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.
        $adminId              =     Auth::User()->id; 
        Gallery::where('id',$id)->update([
            'admin_id'    => $adminId,
            'path'        => "upload/".$path,
        ]);
         Session::flash('message','Gallery  Updated!');


             return redirect('gallery/gallery')->with('flash_message', 'Gallery updated!');
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
        $model = str_slug('gallery','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Gallery::destroy($id);

            return redirect('gallery/gallery')->with('flash_message', 'Gallery deleted!');
        }
        return response(view('403'), 403);

    }
}
