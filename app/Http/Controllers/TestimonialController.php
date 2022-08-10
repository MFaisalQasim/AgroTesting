<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Auth;
use Storage;
use Session;
use Config;
use App\Testimonial;
use Illuminate\Http\Request;

class TestimonialController extends Controller
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
        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $testimonial = Testimonial::where('admin_id', 'LIKE', "%$keyword%")
                ->orWhere('image_path', 'LIKE', "%$keyword%")
                ->orWhere('name', 'LIKE', "%$keyword%")
                ->orWhere('address', 'LIKE', "%$keyword%")
                ->orWhere('comment', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $testimonial = Testimonial::paginate($perPage);
            }

            return view('testimonial.testimonial.index', compact('testimonial'));
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
        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('testimonial.testimonial.create');
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
        // $UploadMannualFIlePath = Config::get("constants.attachment_paths.TractorMannuals");

        $image ='';
        extract($request->all());  
        try{
        $image = "upload/".Storage::disk('upload')->put('TestimonialImage', $request->image_path);               
        }catch(\Exception $e){
        return $e->getMessage();
                
        }//end trycatch.

        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'image_path' => 'required',
			'name' => 'required',
			'address' => 'required',
			'comment' => 'required'
		]);
        $adminId                             =     Auth::User()->id; 
        $data                                =     new Testimonial();
        $data->admin_id                      =     $adminId;
        $data->name                          =     $request->name;
        $data->address                       =     $request->address;
        $data->comment                       =     $request->comment;
        $data->image_path                    =     $image;
        $data->save();
        Session::flash('message','Testimonial  added!');
            
            return redirect('Testimonial/testimonial')->with('flash_message', 'Testimonial added!');
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
        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $testimonial = Testimonial::findOrFail($id);
            return view('testimonial.testimonial.show', compact('testimonial'));
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
        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $testimonial = Testimonial::findOrFail($id);
            return view('testimonial.testimonial.edit', compact('testimonial'));
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
        
        

        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'address' => 'required',
			'comment' => 'required'
		]);

        if($request->image_path !='')
        {
            $UploadEventGalleryFIlePath = Config::get("constants.attachment_paths.TractorImages");
            // $UploadMannualFIlePath = Config::get("constants.attachment_paths.TractorMannuals");
    
            $image ='';
            extract($request->all());  
            try{
            $image = Storage::disk('upload')->put('TestimonialImage', $request->image_path);               
            }catch(\Exception $e){
            return $e->getMessage();
                    
            }//end trycatch.
            Testimonial::where('id',$id)->update([
                'image_path'     => "upload/".$image,
                'name'           => $request->name,
                'address'        => $request->address,
                'comment'        => $request->comment,
            ]);
             Session::flash('message','Faq  Updated!');
        }
        else{
            Testimonial::where('id',$id)->update([
                'name'           => $request->name,
                'address'        => $request->address,
                'comment'        => $request->comment,
            ]);
             Session::flash('message','Faq  Updated!');
        }
   
          
   

             return redirect('Testimonial/testimonial')->with('flash_message', 'Testimonial updated!');
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
        $model = str_slug('testimonial','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Testimonial::destroy($id);

            return redirect('Testimonial/testimonial')->with('flash_message', 'Testimonial deleted!');
        }
        return response(view('403'), 403);

    }
}
