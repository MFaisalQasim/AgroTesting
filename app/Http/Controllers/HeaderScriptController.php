<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\HeaderScript;
use Illuminate\Http\Request;
use App\CountryList;
use Session;
use Auth;

class HeaderScriptController extends Controller
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $headerscript = HeaderScript::where('admin_id', 'LIKE', "%$keyword%")
                ->orWhere('country_slug', 'LIKE', "%$keyword%")
                ->orWhere('tags', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $headerscript = HeaderScript::paginate($perPage);
            }

            return view('headerscript.header-script.index', compact('headerscript'));
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $countrySlugs = CountryList::all();
            return view('headerscript.header-script.create',compact('countrySlugs'));
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'country_slug' => 'required',
			'tags' => 'required',
		]);
            $adminId              =     Auth::User()->id; 
            $data                 = new HeaderScript();
            $data->admin_id       = $adminId;
            $data->country_slug   = $request->country_slug;
            $data->tags           = $request->tags;
            $data->status         = "1";
            $data->save();
            
            // HeaderScript::create($requestData);

            Session::flash('message','Tags  added!');
            return redirect('Scripts/header-script')->with('flash_message', 'HeaderScript added!');
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $headerscript = HeaderScript::findOrFail($id);
            return view('headerscript.header-script.show', compact('headerscript'));
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $headerscript = HeaderScript::findOrFail($id);
            $CountryList = CountryList::get();
            
            return view('headerscript.header-script.edit', compact('headerscript','CountryList'));
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
    
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'country_slug' => 'required',
			'tags' => 'required',
		]);
            $requestData = $request->all();
            
            $headerscript = HeaderScript::findOrFail($id);
             $headerscript->update($requestData);
             Session::flash('message','HeaderScript  added!');

             return redirect('Scripts/header-script')->with('flash_message', 'HeaderScript updated!');
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
        $model = str_slug('headerscript','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            HeaderScript::destroy($id);
            Session::flash('message','HeaderScript  Deleted!');

            return redirect('Scripts/header-script')->with('flash_message', 'HeaderScript deleted!');
        }
        return response(view('403'), 403);

    }
}
