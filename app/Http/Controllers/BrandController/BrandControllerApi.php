<?php

namespace App\Http\Controllers\BrandController;

use App\Http\Controllers\Controller;
use App\Http\Requests;

use App\Brand;
use Illuminate\Http\Request;
use Session;

class BrandController extends Controller
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $brand = Brand::where('name', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $brand = Brand::paginate($perPage);
            }
            return 'here';
            return view('brand.brand.index', compact('brand'));
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            return view('brand.brand.create');
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required'
		]);
            $requestData = $request->all();
            
            Brand::create($requestData);
            Session::flash('message','Brand added!');

            return redirect('brand')->with('flash_message', 'Brand added!');
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $brand = Brand::findOrFail($id);
            return view('brand.brand.show', compact('brand'));
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $brand = Brand::findOrFail($id);
            return view('brand.brand.edit', compact('brand'));
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'name' => 'required'
		]);
            $requestData = $request->all();
            
            $brand = Brand::findOrFail($id);
             $brand->update($requestData);
             Session::flash('message','Brand updated!');

             return redirect('brand')->with('flash_message', 'Brand updated!');
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
        $model = str_slug('brand','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Brand::destroy($id);
            Session::flash('message','Brand deleted!');

            return redirect('brand')->with('flash_message', 'Brand deleted!');
        }
        return response(view('403'), 403);

    }
}
