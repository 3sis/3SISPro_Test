<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\Geographic\CityController;
use App\Http\Controllers\Config\Geographic\CountryController;
use App\Http\Controllers\Config\Geographic\StateController;

Route::get('/', function () {
    return view('auth.login');
});

Route::post('login', [AuthController::class,'login'])->name('login_check');

// middleware
// Route::middleware(['LoginCheck'])->group(function () {
 //Login
Route::controller(AuthController::class)->group(function () {
    Route::get('logout','logout')->name('logout');
    // Route::post('login','login')->name('login_check');
});


// city Master
Route::controller(CityController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/city','index');
    Route::post('/city/save','save');
    Route::get('/get/city','city_list');
    Route::get('/city/Master/Update','fetchData');
    Route::get('/city/Master/Delete','Restore_Delete_Data');
    Route::get('/city/Delete/list','DeleteList');
    Route::get('/test','test');
    Route::post('/geographic/State','getStateDesc');
});
// country Master
Route::controller(CountryController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/country','index');
    Route::post('/country/save','save');
    Route::get('/get/country','country_list');
    Route::get('/country/Master/Update','fetchData');
    Route::get('/country/Master/Delete','Restore_Delete_Data');
    Route::get('/country/Delete/list','DeleteList');
    Route::get('/test','test');
});
// State Master
Route::controller(StateController::class)->group(function () {
    // Route::get('/','index');
    Route::get('/state','index');
    Route::post('/state/save','save');
    Route::get('/get/state','state_list');
    Route::get('/state/Master/Update','fetchData');
    Route::get('/state/Master/Delete','Restore_Delete_Data');
    Route::get('/state/Delete/list','DeleteList');
    Route::get('/test','test');
});
// });

// testing route
Route::get('/bug', function () {
    return view('maintenence');
});


Route::get('/error', function () {
    return view('404');
});
