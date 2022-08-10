<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Http\Requests;
use Auth;
use Session;
use App\Faq;
use App\Tractor;
use Illuminate\Http\Request;

class FaqController extends Controller
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $keyword = $request->get('search');
            $perPage = 25;

            if (!empty($keyword)) {
                $faq = Faq::where('admin_id', 'LIKE', "%$keyword%")
                ->orWhere('tractor_slug', 'LIKE', "%$keyword%")
                ->orWhere('question', 'LIKE', "%$keyword%")
                ->orWhere('status', 'LIKE', "%$keyword%")
                ->paginate($perPage);
            } else {
                $faq = Faq::paginate($perPage);
            }

            return view('Faq.faq.index', compact('faq'));
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $slag = Tractor::get('tractor_slug');
            return view('Faq.faq.create',compact('slag'));
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','add-'.$model)->first()!= null) {
            $this->validate($request, [
			'tractor_slug'   => 'required',
			'question'       => 'required',
			'answer'         => 'required'
		]);
        $adminId              =     Auth::User()->id; 
        $data                 = new Faq();
        $data->admin_id       = $adminId;
        $data->tractor_slug   = $request->tractor_slug;
        $data->question       = $request->question;
        $data->answer         = $request->answer;
        $data->status         = "1";
        $data->save();

        Session::flash('message','Faq  added!');
        return redirect('Faq/faq')->with('flash_message', 'Faq added!');
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','view-'.$model)->first()!= null) {
            $faq = Faq::findOrFail($id);
            return view('Faq.faq.show', compact('faq'));
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $faq = Faq::findOrFail($id);
            $slag = Tractor::get('tractor_slug');
            return view('Faq.faq.edit', compact('faq','slag'));
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','edit-'.$model)->first()!= null) {
            $this->validate($request, [
			'tractor_slug'  => 'required',
			'question'      => 'required',
			'answer'        => 'required'
		]);
            $requestData = $request->all();
            
            Faq::where('id',$id)->update([
                'tractor_slug'    => $request->tractor_slug,
                'question'        => $request->question,
                'answer'          => $request->answer,
            ]);
             Session::flash('message','Faq  Updated!');

             return redirect('Faq/faq')->with('flash_message', 'Faq updated!');
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
        $model = str_slug('faq','-');
        if(auth()->user()->permissions()->where('name','=','delete-'.$model)->first()!= null) {
            Faq::destroy($id);

            return redirect('Faq/faq')->with('flash_message', 'Faq deleted!');
        }
        return response(view('403'), 403);

    }
}
