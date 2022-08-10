<?php

namespace App\Http\Controllers\CountryController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\CountryList;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Role;
class CountryListController extends Controller
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $countrylist = CountryList::where('name', 'LIKE', "%$keyword%")
                ->orWhere('link', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $countrylist = CountryList::paginate($perPage);
            }

            return view('country.country-list.index', compact('countrylist'));
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('country.country-list.create');
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
            'name'          => 'required',
            'link'          => 'required',
			'description'   => 'required',
		]);
            $requestData = $request->all();
            
            CountryList::create($requestData);
            Session::flash('message','CountryList added!');

            return redirect('country-list')->with('flash_message', 'CountryList added!');
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $countrylist = CountryList::findOrFail($id);
            return view('country.country-list.show', compact('countrylist'));
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $countrylist = CountryList::findOrFail($id);
            return view('country.country-list.edit', compact('countrylist'));
        }
        return response(view('403'), 403);
    }

    public function update(Request $request, $id)
    {
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required',
			'link' => 'required',
            'description'   =>  'required',
		]);
            $requestData = $request->all();
            
            $countrylist = CountryList::findOrFail($id);
             $countrylist->update($requestData);
             Session::flash('message','CountryList updated!');

             return redirect('country-list')->with('flash_message', 'CountryList updated!');
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
        $model = str_slug('countrylist','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            CountryList::destroy($id);
            Session::flash('message','CountryList deleted!');
            return redirect('country-list')->with('flash_message', 'CountryList deleted!');
        }

        return response(view('403'), 403);

    }
}
