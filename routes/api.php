<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });






use Illuminate\Support\Facades\Route;

Route::get('/mail-sent', function () {
    \Illuminate\Support\Facades\Mail::send(new \App\Mail\InquiryMail()); 
    // \Illuminate\Support\Facades\Notification::send(\App\Models\User::all(), new \App\Mail\InquiryMail()); 
    // return view('welcome');
    return redirect('/thankyou-page');
});
Route::get('/thankyou-page', 'AgroasiaTractors@mailsent');

//frontend Routes
Route::get('/', 'AgroasiaTractorsApi@index')->name('frontend.index');
Route::get('/massey-ferguson-tractors', 'AgroasiaTractorsApi@messeyferguson')->name('frontend.massey_ferguson_tractors.index');
Route::get('/new-holland-tractors', 'AgroasiaTractorsApi@newholland')->name('frontend.new_holland_tractors.index');
Route::get('/ford-tractors', 'AgroasiaTractorsApi@ford')->name('frontend.ford_tractors.index');
Route::get('/farm-implements', 'AgroasiaTractorsApi@implement')->name('frontend.farm_implements.index');
Route::get('/{c_slag}', 'AgroasiaTractorsApi@country')->name('frontend.countries.index');
Route::get('/{brand}/{slag}', 'AgroasiaTractorsApi@product')->name('frontend.product.index');
Route::get('/country/{c_slag}/{slag}_for-sale-in-{country}', 'AgroasiaTractorsApi@countryproduct')->name('frontend.countries.product');
Route::get('/about-us', 'AgroasiaTractorsApi@aboutus')->name('frontend.about_us.index');
Route::get('/contact-us', 'AgroasiaTractorsApi@contactus')->name('frontend.contact_us.index');
Route::get('/testimonial', 'AgroasiaTractorsApi@testimonial')->name('frontend.testimonial.index');
Route::get('/bank-details', 'AgroasiaTractorsApi@bankdetails')->name('frontend.bank_details.index');
Route::get('/site-map', 'AgroasiaTractorsApi@sitemap')->name('frontend.site_map.index');
Route::get('/how-to-place-order', 'AgroasiaTractorsApi@howtoplaceorder')->name('frontend.how_to_place_order.index');
Route::get('/authorized-sales-agents', 'AgroasiaTractorsApi@salesagent')->name('frontend.sales_agent.index');
Route::get('/faq', 'AgroasiaTractorsApi@faq')->name('frontend.faq.index');
Route::get('/shipment', 'AgroasiaTractorsApi@shipment')->name('frontend.shipment.index');
Route::get('/care-tip', 'AgroasiaTractorsApi@caretip')->name('frontend.care_tip.index');
Route::get('/page-gallery', 'AgroasiaTractorsApi@gallery')->name('frontend.gallery.index');
Route::get('/mearsk-line', 'AgroasiaTractorsApi@maerskline')->name('frontend.mearsk_line.index');
Route::get('/cma-cgm', 'AgroasiaTractorsApi@cmacgm')->name('frontend.cma_cgm.index');
Route::get('/msc-pakistan', 'AgroasiaTractorsApi@mscpakistan')->name('frontend.msc_pakistan.index');
Route::post('/enquiry-form', 'AgroasiaTractorsApi@enquiryform')->name('frontend.includes.enquiryform');
Route::post('/contact-form', 'AgroasiaTractorsApi@contactform')->name('frontend.contactform.index');



Route::get('/login', 'PagesController@HomePage');

Route::group(['middleware' => ['auth', 'roles'],'roles' => ['admin','user','developer']], function () {
    Route::get('/dashboard', function () {
        return view('dashboard.index');
    });
    Route::get('account-settings', 'UsersController@getSettings');
    Route::post('account-settings', 'UsersController@saveSettings');
});

Route::group(['middleware' => 'guest'],function (){

    Route::get('addmoney/stripe', array('as' => 'addmoney.paystripe','uses' => 'MoneySetupController@PaymentStripe'));
    Route::post('addmoney/stripe', array('as' => 'addmoney.stripe','uses' => 'MoneySetupController@postPaymentStripe'));
    // Route::post('gamepayment','OrderController\\OrdersController@GamePayment');
    Route::post('paypal','OrderController\\OrdersController@PayWithPayPal');
    Route::get('status','OrderController\\OrdersController@getPaymentStatus');
    Route::get('practiceJsonP','OrderController\\OrdersController@practiceJsonP');

});




Route::group(['middleware' => 'auth'], function () {
    /*routes for blog*/
    Route::group(['prefix' => 'blog'], function () {
        Route::get('/create', 'BlogController@create');
        Route::post('/create', 'BlogController@store');
        Route::get('delete/{id}', 'BlogController@destroy')->name('blog.delete');
        Route::get('edit/{id}', 'BlogController@edit')->name('blog.edit');
        Route::post('edit/{id}', 'BlogController@update');
        Route::get('view/{id}', 'BlogController@show');
//        Route::get('{blog}/restore', 'BlogController@restore')->name('blog.restore');
        Route::post('{id}/storecomment', 'BlogController@storeComment')->name('storeComment');
       
    });
    Route::resource('blog', 'BlogController');
    /*routes for blog category*/
    Route::group(['prefix' => 'blog-category'], function () {
        Route::get('/', 'BlogCategoryController@getIndex');
        Route::get('/create', 'BlogCategoryController@create');
        Route::post('/create', 'BlogCategoryController@save');
        Route::get('/delete/{id}', 'BlogCategoryController@delete');
        Route::get('/edit/{id}', 'BlogCategoryController@edit');
        Route::post('/edit/{id}', 'BlogCategoryController@update');
    });
    Route::resource('blogcategory', 'BlogCategoryController');

    
    
});

Route::group(['middleware' => ['auth', 'roles'],'roles' => 'admin','roles'=>'developer'], function () {
    Route::get('index2', function () {
        return view('dashboard.index2');
    });
    Route::get('index3', function () {
        return view('dashboard.index3');
    });
    Route::get('index4', function () {
        return view('ecommerce.index4');
    });
    Route::get('products', function () {
        return view('ecommerce.products');
    });
    Route::get('product-detail', function () {
        return view('ecommerce.product-detail');
    });
    Route::get('product-edit', function () {
        return view('ecommerce.product-edit');
    });
    Route::get('product-orders', function () {
        return view('ecommerce.product-orders');
    });
    Route::get('product-cart', function () {
        return view('ecommerce.product-cart');
    });
    Route::get('product-checkout', function () {
        return view('ecommerce.product-checkout');
    });
    Route::get('panels-wells', function () {
        return view('ui-elements.panels-wells');
    });
    Route::get('panel-ui-block', function () {
        return view('ui-elements.panel-ui-block');
    });
    Route::get('portlet-draggable', function () {
        return view('ui-elements.portlet-draggable');
    });
    Route::get('buttons', function () {
        return view('ui-elements.buttons');
    });
    Route::get('tabs', function () {
        return view('ui-elements.tabs');
    });
    Route::get('modals', function () {
        return view('ui-elements.modals');
    });
    Route::get('progressbars', function () {
        return view('ui-elements.progressbars');
    });
    Route::get('notification', function () {
        return view('ui-elements.notification');
    });
    Route::get('carousel', function () {
        return view('ui-elements.carousel');
    });
    Route::get('user-cards', function () {
        return view('ui-elements.user-cards');
    });
    Route::get('timeline', function () {
        return view('ui-elements.timeline');
    });
    Route::get('timeline-horizontal', function () {
        return view('ui-elements.timeline-horizontal');
    });
    Route::get('range-slider', function () {
        return view('ui-elements.range-slider');
    });
    Route::get('ribbons', function () {
        return view('ui-elements.ribbons');
    });
    Route::get('steps', function () {
        return view('ui-elements.steps');
    });
    Route::get('session-idle-timeout', function () {
        return view('ui-elements.session-idle-timeout');
    });
    Route::get('session-timeout', function () {
        return view('ui-elements.session-timeout');
    });
    Route::get('bootstrap-ui', function () {
        return view('ui-elements.bootstrap');
    });
    Route::get('starter-page', function () {
        return view('pages.starter-page');
    });
    Route::get('blank', function () {
        return view('pages.blank');
    });
    Route::get('blank', function () {
        return view('pages.blank');
    });
    Route::get('search-result', function () {
        return view('pages.search-result');
    });
    Route::get('custom-scroll', function () {
        return view('pages.custom-scroll');
    });
    Route::get('lock-screen', function () {
        return view('pages.lock-screen');
    });
    Route::get('recoverpw', function () {
        return view('pages.recoverpw');
    });
    Route::get('animation', function () {
        return view('pages.animation');
    });
    Route::get('profile', function () {
        return view('pages.profile');
    });
    Route::get('invoice', function () {
        return view('pages.invoice');
    });
    Route::get('gallery', function () {
        return view('pages.gallery');
    });
    Route::get('pricing', function () {
        return view('pages.pricing');
    });
    Route::get('400', function () {
        return view('pages.400');
    });
    Route::get('403', function () {
        return view('pages.403');
    });
    Route::get('404', function () {
        return view('pages.404');
    });
    Route::get('500', function () {
        return view('pages.500');
    });
    Route::get('503', function () {
        return view('pages.503');
    });
    Route::get('form-basic', function () {
        return view('forms.form-basic');
    });
    Route::get('form-layout', function () {
        return view('forms.form-layout');
    });
    Route::get('icheck-control', function () {
        return view('forms.icheck-control');
    });
    Route::get('form-advanced', function () {
        return view('forms.form-advanced');
    });
    Route::get('form-upload', function () {
        return view('forms.form-upload');
    });
    Route::get('form-dropzone', function () {
        return view('forms.form-dropzone');
    });
    Route::get('form-pickers', function () {
        return view('forms.form-pickers');
    });
    Route::get('basic-table', function () {
        return view('tables.basic-table');
    });
    Route::get('table-layouts', function () {
        return view('tables.table-layouts');
    });
    Route::get('data-table', function () {
        return view('tables.data-table');
    });
    Route::get('bootstrap-tables', function () {
        return view('tables.bootstrap-tables');
    });
    Route::get('responsive-tables', function () {
        return view('tables.responsive-tables');
    });
    Route::get('editable-tables', function () {
        return view('tables.editable-tables');
    });
    Route::get('inbox', function () {
        return view('inbox.inbox');
    });
    Route::get('inbox-detail', function () {
        return view('inbox.inbox-detail');
    });
    Route::get('compose', function () {
        return view('inbox.compose');
    });
    Route::get('contact', function () {
        return view('inbox.contact');
    });
    Route::get('contact-detail', function () {
        return view('inbox.contact-detail');
    });
    Route::get('calendar', function () {
        return view('extra.calendar');
    });
    Route::get('widgets', function () {
        return view('extra.widgets');
    });
    Route::get('morris-chart', function () {
        return view('charts.morris-chart');
    });
    Route::get('peity-chart', function () {
        return view('charts.peity-chart');
    });
    Route::get('knob-chart', function () {
        return view('charts.knob-chart');
    });
    Route::get('sparkline-chart', function () {
        return view('charts.sparkline-chart');
    });
    Route::get('simple-line', function () {
        return view('icons.simple-line');
    });
    Route::get('fontawesome', function () {
        return view('icons.fontawesome');
    });
    Route::get('map-google', function () {
        return view('maps.map-google');
    });
    Route::get('map-vector', function () {
        return view('maps.map-vector');
    });

    #Permission management
    Route::get('permission-management', 'PermissionController@getIndex');
    Route::get('permission/create', 'PermissionController@create');
    Route::post('permission/create', 'PermissionController@save');
    Route::get('permission/delete/{id}', 'PermissionController@delete');
    Route::get('permission/edit/{id}', 'PermissionController@edit');
    Route::post('permission/edit/{id}', 'PermissionController@update');
    
    #Role management
    Route::get('role-management', 'RoleController@getIndex');
    Route::get('role/create', 'RoleController@create');
    Route::post('role/create', 'RoleController@save');
    Route::get('role/delete/{id}', 'RoleController@delete');
    Route::get('role/edit/{id}', 'RoleController@edit')->name('createRole');
    Route::post('role/edit/{id}', 'RoleController@update')->name('createpermission');

    #CRUD Generator
    Route::get('/crud-generator', ['uses' => 'ProcessController@getGenerator']);
    Route::post('/crud-generator', ['uses' => 'ProcessController@postGenerator']);

    # Activity log
    Route::get('activity-log', 'LogViewerController@getActivityLog');
    Route::get('activity-log/data', 'LogViewerController@activityLogData')->name('activity-log.data');

    #User Management routes
    Route::get('users', 'UsersController@getIndex');
    Route::get('user/create', 'UsersController@create');
    Route::post('user/create', 'UsersController@save');
    Route::get('user/edit/{id}', 'UsersController@edit')->name('EditUser');
    // Route::get('/user/edit/{id}', [App\Http\Controllers\UsersController::class, 'edit']);

    Route::post('user/edit/{id}', 'UsersController@update');
    Route::get('user/delete/{id}', 'UsersController@delete');
    Route::get('user/deleted/', 'UsersController@getDeletedUsers');
    Route::get('user/restore/{id}', 'UsersController@restoreUser');

});

//Log Viewer
Route::get('log-viewers', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@index')->name('log-viewers');
Route::get('log-viewers/logs', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@listLogs')->name('log-viewers.logs');
Route::delete('log-viewers/logs/delete', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@delete')->name('log-viewers.logs.delete');
Route::get('log-viewers/logs/{date}', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@show')->name('log-viewers.logs.show');
Route::get('log-viewers/logs/{date}/download', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@download')->name('log-viewers.logs.download');
Route::get('log-viewers/logs/{date}/{level}', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@showByLevel')->name('log-viewers.logs.filter');
Route::get('log-viewers/logs/{date}/{level}/search', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@search')->name('log-viewers.logs.search');
Route::get('log-viewers/logcheck', '\Arcanedev\LogViewer\Http\Controllers\LogViewerController@logCheck')->name('log-viewers.logcheck');

#blog routes frontend
// Route::get('/', 'BlogController@getBlogList');
Route::get('blogs/{slug}', 'BlogController@getBlog');
Route::get('blogs/category/{slug}', 'BlogController@getCategoryBlog');
Route::get('blogs/tag/{slug}', 'BlogController@getTagBlog');
Route::get('blogs/author/{slug}', 'BlogController@getAuthorBlog');

Route::get('auth/{provider}/', 'Auth\SocialLoginController@redirectToProvider');
Route::get('{provider}/callback', 'Auth\SocialLoginController@handleProviderCallback');
Route::get('logout', 'Auth\LoginController@logout');
Auth::routes();
Route::resource('payment-detail', 'PaymentDetailController\\PaymentDetailController');
Route::resource('payment-detail', 'PaymentDetailController\\PaymentDetailController');

Route::resource('/tractor', 'TractorController\\TractorController');
Route::get('/tractor/show/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'show'])->name('tractor.show');
Route::get('/tractor/edit/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'edit'])->name('tractor.edit');
Route::post('/tractor/update/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'update'])->name('tractor.update');
Route::get('/tractor/delete/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'destroy'])->name('tractor.delete');
Route::get('/delete_img/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'imgdestroy'])->name('tractorimage.delete');
Route::post('/insert_image/{id}', [App\Http\Controllers\TractorController\TractorController::class, 'insertimg'])->name('tractor.images');

Route::resource('/brand', 'BrandController\\BrandControllerApi');

Route::get('/brand/show/{id}', [App\Http\Controllers\BrandController\BrandControllerApi::class, 'show'])->name('brand.show');
Route::get('/brand/edit/{id}', [App\Http\Controllers\BrandController\BrandControllerApi::class, 'edit'])->name('brand.edit');
Route::get('/brand/delete/{id}', [App\Http\Controllers\BrandController\BrandControllerApi::class, 'destroy'])->name('brand.delete');




Route::resource('/country-list', 'CountryController\\CountryListControllerApi');
Route::get('country-list/show/{id}', [App\Http\Controllers\CountryController\CountryListControllerApi::class, 'show'])->name('country-list.show');
Route::get('country-list/edit/{id}', [App\Http\Controllers\CountryController\CountryListControllerApi::class, 'edit'])->name('country-list.edit');
Route::post('country-list/update/{id}', [App\Http\Controllers\CountryController\CountryListControllerApi::class,'update'])->name('country-list.update');
Route::get('country-list/delete/{id}', [App\Http\Controllers\CountryController\CountryListControllerApi::class, 'destroy'])->name('countrylist.delete');
// Route::post('/country-list/update/{id}', 'CountryListControllerApi@update')->name('country-list.update');

Route::resource('Scripts/header-script', 'HeaderScriptController');
Route::get('Scripts/header-script/show/{id}', [App\Http\Controllers\HeaderScriptController::class, 'show'])->name('header-script.show');
Route::get('Scripts/header-script/edit/{id}', [App\Http\Controllers\HeaderScriptController::class, 'edit'])->name('header-script.edit');
Route::post('Scripts/header-script/update/{id}', [App\Http\Controllers\HeaderScriptController::class, 'update'])->name('header-script.update');
Route::get('Scripts/header-script/delete/{id}', [App\Http\Controllers\HeaderScriptController::class, 'destroy'])->name('header-script.delete');

Route::resource('Faq/faq', 'FaqController');
Route::get('Faq/faq/show/{id}', [App\Http\Controllers\FaqController::class, 'show'])->name('faq.show');
Route::get('Faq/faq/edit/{id}', [App\Http\Controllers\FaqController::class, 'edit'])->name('faq.edit');
Route::post('Faq/faq/update/{id}', [App\Http\Controllers\FaqController::class, 'update'])->name('faq.update');
Route::get('Faq/faq/delete/{id}', [App\Http\Controllers\FaqController::class, 'destroy'])->name('faq.delete');




Route::resource('Testimonial/testimonial', 'TestimonialController');
Route::get('Testimonial/testimonial/show/{id}', [App\Http\Controllers\TestimonialController::class, 'show'])->name('testimonial.show');
Route::get('Testimonial/testimonial/edit/{id}', [App\Http\Controllers\TestimonialController::class, 'edit'])->name('testimonial.edit');
Route::post('Testimonial/testimonial/update/{id}', [App\Http\Controllers\TestimonialController::class, 'update'])->name('testimonial.update');
Route::get('Testimonial/testimonial/delete/{id}', [App\Http\Controllers\TestimonialController::class, 'destroy'])->name('testimonial.delete');



Route::resource('gallery/gallery', 'GalleryController');// empty and error
Route::get('backGallery/show/{id}', [App\Http\Controllers\GalleryController::class, 'show'])->name('gallery.show');
Route::get('backGallery/{id}', [App\Http\Controllers\GalleryController::class, 'edit'])->name('gallery.edit');
Route::post('backGallery/update/{id}', [App\Http\Controllers\GalleryController::class, 'update'])->name('gallery.update');
Route::get('backGallery/delete/{id}', [App\Http\Controllers\GalleryController::class, 'destroy'])->name('gallery.delete');




Route::resource('Enquiry_form/enquiryform', 'EnquiryformController');
Route::resource('ContactForm_Data/contact-form-data', 'ContactFormDataController');


Route::resource('Ad_Post/ad-post', 'AdPostController');
Route::get('Ad-Post/show/{id}', [App\Http\Controllers\AdPostController::class, 'show'])->name('ad-post.show');
Route::get('Ad-Post/edit/{id}', [App\Http\Controllers\AdPostController::class, 'edit'])->name('ad-post.edit');
Route::post('Ad-Post/update/{id}', [App\Http\Controllers\AdPostController::class, 'update'])->name('ad-post.update');
Route::get('Ad-Post/delete/{id}', [App\Http\Controllers\AdPostController::class, 'destroy'])->name('ad-post.delete');

Route::resource('watermark/water-mark', 'WaterMarkController');
Route::post('/watermark/insert', [App\Http\Controllers\WaterMarkController::class, 'store'])->name('backend.watermark.insert');
Route::get('/watermark/delete', [App\Http\Controllers\WaterMarkController::class, 'watermarkdel'])->name('watermark.delete.allfiles');
Route::get('create_zipp',[App\Http\Controllers\WaterMarkController::class, 'watermarkdownload'])->name('create-zip');

   Route::get('clear', function () {
       \Artisan::call('optimize:clear');
       return "clear";
    });



