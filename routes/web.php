<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\GeneralMaster\StateController;

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
