<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Enquiryform;
use Illuminate\Http\Request;

class EnquiryformController extends Controller
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $enquiryform = Enquiryform::where('model', 'LIKE', "%$keyword%")
                ->orWhere('QTY', 'LIKE', "%$keyword%")
                ->orWhere('name', 'LIKE', "%$keyword%")
                ->orWhere('number', 'LIKE', "%$keyword%")
                ->orWhere('email', 'LIKE', "%$keyword%")
                ->orWhere('country', 'LIKE', "%$keyword%")
                ->orWhere('message', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $enquiryform = Enquiryform::paginate($perPage);
            }

            return view('enquiryform.enquiryform.index', compact('enquiryform'));
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('enquiryform.enquiryform.create');
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'model' => 'required',
			'QTY' => 'required',
			'name' => 'required',
			'number' => 'required',
			'email' => 'required',
			'country' => 'required'
		]);
            $requestData = $request->all();
            
            Enquiryform::create($requestData);
            return redirect('Enquiry_form/enquiryform')->with('flash_message', 'Enquiryform added!');
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $enquiryform = Enquiryform::findOrFail($id);
            return view('enquiryform.enquiryform.show', compact('enquiryform'));
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $enquiryform = Enquiryform::findOrFail($id);
            return view('enquiryform.enquiryform.edit', compact('enquiryform'));
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'model' => 'required',
			'QTY' => 'required',
			'name' => 'required',
			'number' => 'required',
			'email' => 'required',
			'country' => 'required'
		]);
            $requestData = $request->all();
            
            $enquiryform = Enquiryform::findOrFail($id);
             $enquiryform->update($requestData);

             return redirect('Enquiry_form/enquiryform')->with('flash_message', 'Enquiryform updated!');
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
        $model = str_slug('enquiryform','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Enquiryform::destroy($id);

            return redirect('Enquiry_form/enquiryform')->with('flash_message', 'Enquiryform deleted!');
        }
        return response(view('403'), 403);

    }
}
