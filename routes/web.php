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
            // Route::post('save_state', 'save');
            Route::get('{manage}-state{id?}', 'index');
            Route::post('/state/save', 'save');
            Route::get('/get/state', 'state_list');
            Route::get('/state/Master/Update', 'fetchData');
            Route::get('/state/Master/Delete', 'Restore_Delete_Data');
            Route::get('/state/Delete/list', 'DeleteList');
            Route::get('/test', 'test');
});

// Route::get('logout',[AuthController::class,'logout']);
    Route::controller(AuthController::class)->group(function () {
          Route::get('logout', 'logout')->name('logout');
          Route::get('home','dashboard');
    });

});    



    Route::group(['middleware'=>['LoginCheck']],function () {
        // Route::controller(StateController::class)->group(function () {
        //     Route::get('/state', 'index');
        //     Route::post('/state/save', 'save');
        //     Route::get('/get/state', 'state_list');
        //     Route::get('/state/Master/Update', 'fetchData');
        //     Route::get('/state/Master/Delete', 'Restore_Delete_Data');
        //     Route::get('/state/Delete/list', 'DeleteList');
        //     Route::get('/test', 'test');
        // });
    }); 
   

// Location Master
Route::controller(LocationController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/location', 'index');
    Route::post('/location/save', 'save');
    Route::get('/get/location', 'location_list');
    Route::get('/location/Master/Update', 'fetchData');
    Route::get('/location/Master/Delete', 'Restore_Delete_Data');
    Route::get('/location/Delete/list', 'DeleteList');
    Route::get('/test', 'test');
    Route::post('/geographic/city', 'getCityDesc');
});
// city Master
Route::controller(CityController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/city', 'index');
    Route::post('/city/save', 'save');
    Route::get('/get/city', 'city_list');
    Route::get('/city/Master/Update', 'fetchData');
    Route::get('/city/Master/Delete', 'Restore_Delete_Data');
    Route::get('/city/Delete/list', 'DeleteList');
    Route::get('/test', 'test');
    Route::post('/geographic/State', 'getStateDesc');
});
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
