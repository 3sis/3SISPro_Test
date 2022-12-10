<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\GeneralMaster\StateController;

// Route::get('/',[AuthController::class,'index'])->name('login');
// Route::post('login',[AuthController::class,'login'])->name('login_save');


Route::get('/bug', function () {
    return view('maintenence');
});


Route::get('/error', function () {
    return view('404');
});


// Route::controller(OrderController::class)->group(function () {
//     Route::get('/orders/{id}', 'show');
//     Route::post('/orders', 'store');
// });

// State Master 
Route::controller(StateController::class)->group(function () {
    Route::get('/','index');
    Route::get('/state','index');
    Route::post('/state/save','save');
    Route::get('/get/state','state_list');
    Route::get('/state/Master/Update','fetchData');
    Route::get('/state/Master/Delete','Restore_Delete_Data');
    Route::get('/state/Delete/list','DeleteList');
    Route::get('/test','test');
});

