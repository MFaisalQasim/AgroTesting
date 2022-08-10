<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\ContactFormDatum;
use Illuminate\Http\Request;

class ContactFormDataController extends Controller
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $contactformdata = ContactFormDatum::where('name', 'LIKE', "%$keyword%")
                ->orWhere('email', 'LIKE', "%$keyword%")
                ->orWhere('number', 'LIKE', "%$keyword%")
                ->orWhere('country', 'LIKE', "%$keyword%")
                ->orWhere('tractor', 'LIKE', "%$keyword%")
                ->orWhere('implement1', 'LIKE', "%$keyword%")
                ->orWhere('implement2', 'LIKE', "%$keyword%")
                ->orWhere('message', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $contactformdata = ContactFormDatum::paginate($perPage);
            }

            return view('contactform_data.contact-form-data.index', compact('contactformdata'));
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('contactform_data.contact-form-data.create');
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'email' => 'required',
			'number' => 'required',
			'country' => 'required'
		]);
            $requestData = $request->all();
            
            ContactFormDatum::create($requestData);
            return redirect('ContactForm_Data/contact-form-data')->with('flash_message', 'ContactFormDatum added!');
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $contactformdatum = ContactFormDatum::findOrFail($id);
            return view('contactform_data.contact-form-data.show', compact('contactformdatum'));
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $contactformdatum = ContactFormDatum::findOrFail($id);
            return view('contactform_data.contact-form-data.edit', compact('contactformdatum'));
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'email' => 'required',
			'number' => 'required',
			'country' => 'required'
		]);
            $requestData = $request->all();
            
            $contactformdatum = ContactFormDatum::findOrFail($id);
             $contactformdatum->update($requestData);

             return redirect('ContactForm_Data/contact-form-data')->with('flash_message', 'ContactFormDatum updated!');
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
        $model = str_slug('contactformdata','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            ContactFormDatum::destroy($id);

            return redirect('ContactForm_Data/contact-form-data')->with('flash_message', 'ContactFormDatum deleted!');
        }
        return response(view('403'), 403);

    }
}
