<?php

namespace App\Providers;
use App\BlogCategory;
use App\Brand;
use App\CountryList;
use App\Tractor;
use App\AdPost;
use App\Tag;
use Illuminate\Support\Facades\View;
use File;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        view()->composer('layouts.partials.sidebar', function($view)
        {
            $categories = BlogCategory::all();
            $tags = Tag::all();
            $view->with(['tags' => $tags, 'categories' => $categories]);
        });
        $menus = [];
        if (File::exists(base_path('resources/laravel-admin/menus.json'))) {
            $menus = json_decode(File::get(base_path('resources/laravel-admin/menus.json')));
            // dd($menus);
            view()->share('laravelAdminMenus', $menus);
        }
        $this->data['brand']  = Brand::where("name","massey-ferguson-tractors")->get()->first();
        $this->data['brand1'] = Brand::where("name","farm-implements")->get()->first();
        $this->data['brand2'] = Brand::where("name","new-holland-tractors")->get()->first();
        $this->data['ad']     = AdPost::all();

        
        View::composer('*', function($view){
        //     $view->with('ad_image', Ad::get('image')->last());
            $view->with('contact_form_tractor', Tractor::get());
            $view->with('countries',CountryList::where('name','!=',"NULL")->get());
            $view->with('contact_form_imp',Tractor::where('brand_id', $this->data['brand1']->id)->get());
            $view->with('ad',$this->data['ad']);
            $view->with('imp_footer', Tractor::where('brand_id', $this->data['brand1']->id)->with("getfrontTractorImages")->paginate(10));
            $view->with('mf_sidebar',Tractor::where('brand_id', $this->data['brand']->id)->with("getfrontTractorImages")->paginate(10));
            $view->with('imp_sidebar',Tractor::where('brand_id', $this->data['brand1']->id)->with("getfrontTractorImages")->paginate(10));
            $view->with('nh_sidebar',Tractor::where('brand_id', $this->data['brand2']->id)->with("getfrontTractorImages")->paginate(4));
        });
    }


    public function register()
    {
        //
    }
}
