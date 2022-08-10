<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Storage;
use Config;
use App\AdPost;
use Illuminate\Http\Request;

class AdPostController extends Controller
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
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $adpost = AdPost::where('path', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $adpost = AdPost::paginate($perPage);
            }

            return view('adpost.ad-post.index', compact('adpost'));
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
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('adpost.ad-post.create');
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
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
        $image ='';
        extract($request->all());  
        try{
        $image = "upload/".Storage::disk('upload')->put('TestimonialImage', $request->path);               
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'path' => 'required'
		]);
            $requestData = $request->all();
            
            $data                                =     new AdPost();
            $data->path                    =     $image;
            $data->save();
            return redirect('Ad_Post/ad-post')->with('flash_message', 'AdPost added!');
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
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $adpost = AdPost::findOrFail($id);
            return view('adpost.ad-post.show', compact('adpost'));
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
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $adpost = AdPost::findOrFail($id);
            return view('adpost.ad-post.edit', compact('adpost'));
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
        $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
        $image ='';
        extract($request->all());  
        try{
        $image = "upload/".Storage::disk('upload')->put('TestimonialImage', $request->path);               
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.

        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'path' => 'required'
		]);
            $requestData = $request->all();
            
            $adpost = AdPost::findOrFail($id);
            $adpost->path = $image;
            $adpost->save();

             return redirect('Ad_Post/ad-post')->with('flash_message', 'AdPost updated!');
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
        $model = str_slug('adpost','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            AdPost::destroy($id);

            return redirect('Ad_Post/ad-post')->with('flash_message', 'AdPost deleted!');
        }
        return response(view('403'), 403);

    }
}