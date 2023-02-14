<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\Geographic\CityController;
use App\Http\Controllers\Config\Geographic\CountryController;
use App\Http\Controllers\Config\Geographic\StateController;
use App\Http\Controllers\Config\Geographic\LocationController;
use App\Http\Controllers\Config\GeneralMaster\CompanyController;
use App\Http\Controllers\Config\BankingMaster\AcctTypeController;
use App\Http\Controllers\Config\BankingMaster\BankNameController;
use App\Http\Controllers\Config\BankingMaster\BranchNameController;
use App\Http\Controllers\Config\BankingMaster\PaymentModeController;

Route::group(['middleware'=>['guest']],function () {
   Route::controller(AuthController::class)->group(function () {
       Route::get('/','index')->name('login');
       Route::post('login', 'login')->name('login_check');
       // Route::get('logout', 'logout')->name('logout');
   });
});

Route::group(['middleware'=>['auth']],function () {
    // State Master
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
    // Company Master
    Route::controller(CompanyController::class)->group(function () {
        // Route::get('/','index');
        Route::get('company/{action?}/{id?}', 'index');
        Route::post('company_save', 'save');
        Route::get('get_company', 'company_list');
        Route::get('company_delete', 'Restore_Delete_Data');
        Route::get('delete_company_list', 'DeleteList');
        Route::get('get_city_desc1', 'getCityDesc')->name('get_city_desc1');
        Route::get('get_branch_details', 'getBranchDetails')->name('get_branch_details');
        Route::get('company_report/{type}', 'report');

    });

    // AcctType Master
    Route::controller(AcctTypeController::class)->group(function () {
        //add-edit
        Route::get('acctType/{action?}/{id?}', 'index');
        Route::get('acctType_report/{type}', 'report');
        Route::post('acctType_save', 'save');
        Route::get('get_acctType', 'acctType_list');
        Route::get('acctType_delete', 'Restore_Delete_Data');
        Route::get('delete_acctType_list', 'DeleteList');
    });
// BankName Master
Route::controller(BankNameController::class)->group(function () {
    //add-edit
    Route::get('bankName/{action?}/{id?}', 'index');
    Route::get('bankName_report/{type}', 'report');
    Route::post('bankName_save', 'save');
    Route::get('get_bankName', 'bankName_list');
    Route::get('bankName_delete', 'Restore_Delete_Data');
    Route::get('delete_bankName_list', 'DeleteList');
});
// Branch Master
Route::controller(BranchNameController::class)->group(function () {
    // Route::get('/','index');
    Route::get('branchName/{action?}/{id?}', 'index');
    Route::post('branchName_save', 'save');
    Route::get('get_branchName', 'branchName_list');
    Route::get('branchName_delete', 'Restore_Delete_Data');
    Route::get('delete_branchName_list', 'DeleteList');
    Route::get('branchName_report/{type}', 'report');

});
// paymentMode Master
Route::controller(PaymentModeController::class)->group(function () {
    //add-edit
    Route::get('paymentMode/{action?}/{id?}', 'index');
    Route::get('paymentMode_report/{type}', 'report');
    Route::post('paymentMode_save', 'save');
    Route::get('get_paymentMode', 'paymentMode_list');
    Route::get('paymentMode_delete', 'Restore_Delete_Data');
    Route::get('delete_paymentMode_list', 'DeleteList');
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
