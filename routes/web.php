<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\Geographic\CityController;
use App\Http\Controllers\Config\Geographic\CountryController;
use App\Http\Controllers\Config\Geographic\StateController;
use App\Http\Controllers\Config\Geographic\LocationController;

Route::group(['middleware'=>['guest']],function () {
   Route::controller(AuthController::class)->group(function () {
       Route::get('/','index')->name('login');
       Route::post('login', 'login')->name('login_check');
       // Route::get('logout', 'logout')->name('logout');
   });
});

Route::group(['middleware'=>['auth']],function () {
    Route::controller(StateController::class)->group(function () {
        //add-edit
        Route::get('state/{action?}/{id?}', 'index');
        Route::get('state_report/{type}', 'report');
        Route::post('state_save', 'save');
        Route::get('get_state', 'state_list');
        Route::get('state_delete', 'Restore_Delete_Data');
        Route::get('delete_state_list', 'DeleteList');
        // Route::get('get_state_Update', 'fetchData');
    });

    // city Master
    Route::controller(CityController::class)->group(function () {
        // Route::get('/','index');
        Route::get('city/{action?}/{id?}', 'index');
        Route::post('city_save', 'save');
        Route::get('get_city', 'city_list');
        Route::get('city_delete', 'Restore_Delete_Data');
        Route::get('delete_city_list', 'DeleteList');
        Route::get('get_state_desc', 'getStateDesc')->name('get_state_desc');
        Route::get('city_report/{type}', 'report');

    });
    // Location Master
    Route::controller(LocationController::class)->group(function () {
        // Route::get('/','index');
        Route::get('location/{action?}/{id?}', 'index');
        Route::post('location_save', 'save');
        Route::get('get_location', 'location_list');
        Route::get('location_delete', 'Restore_Delete_Data');
        Route::get('delete_location_list', 'DeleteList');
        Route::get('get_city_desc', 'getCityDesc')->name('get_city_desc');
        Route::get('location_report/{type}', 'report');

    });

    // Route::get('logout',[AuthController::class,'logout']);
    Route::controller(AuthController::class)->group(function () {
        Route::get('logout', 'logout')->name('logout');
        Route::get('home','home');
        Route::get('fastpath','fastpath');
    });
});

// Route::group(['middleware'=>['LoginCheck']],function () {
// });

// country Master
Route::controller(CountryController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/country', 'index');
    Route::post('/country/save', 'save');
    Route::get('/get/country', 'country_list');
    Route::get('/country/Master/Update', 'fetchData');
    Route::get('/country/Master/Delete', 'Restore_Delete_Data');
    Route::get('/country/Delete/list', 'DeleteList');
    Route::get('/test', 'test');
});

// testing route
Route::get('/bug', function () {
    return view('maintenence');
});
Route::get('/error', function () {
    return view('404');
});
