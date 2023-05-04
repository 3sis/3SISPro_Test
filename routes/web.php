<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Config\GeneralMaster\CompanyController;
use App\Http\Controllers\Config\GeneralMaster\CurrencyController;
use App\Http\Controllers\Config\Geographic\CityController;
use App\Http\Controllers\Config\Geographic\StateController;
use App\Http\Controllers\Config\Geographic\CountryController;
use App\Http\Controllers\Config\Geographic\LocationController;
use App\Http\Controllers\Config\BankingMaster\AcctTypeController;
use App\Http\Controllers\Config\BankingMaster\BankNameController;
use App\Http\Controllers\Config\BankingMaster\BranchNameController;
use App\Http\Controllers\Config\BankingMaster\PaymentModeController;
use App\Http\Controllers\EmployeeMaster\GeneralInfoController;
use App\Http\Controllers\Config\FiscalYear\PeriodController;
use App\Http\Controllers\Config\FiscalYear\FiscalYearController;
use App\Http\Controllers\Config\FiscalYear\WeeklyOffController;
use App\Http\Controllers\Config\FiscalYear\ActivePeriodChangeController;
use App\Http\Controllers\Config\IncomeDeductionType\IncomeTypeController;
use App\Http\Controllers\Config\IncomeDeductionType\DeductionTypeController;
use App\Http\Controllers\PdfController;

Route::group(['middleware'=>['guest']],function () {
   Route::controller(AuthController::class)->group(function () {
       Route::get('/','index')->name('login');
       Route::post('login', 'login')->name('login_check');
       // Route::get('logout', 'logout')->name('logout');
   });
});

Route::group(['middleware'=>['auth']],function () {
    // country Master
    Route::controller(CountryController::class)->group(function () {
        // Route::get('/','index');
        Route::get('country/{action?}/{id?}', 'index');
        Route::post('country_save', 'save');
        Route::get('get_country', 'country_list');
        Route::get('country_delete', 'Restore_Delete_Data');
        Route::get('delete_country_list', 'DeleteList');
        Route::get('country_report/{type}', 'report');

    });
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
    // currency Master
    Route::controller(CurrencyController::class)->group(function () {
        // Route::get('/','index');
        Route::get('currency/{action?}/{id?}', 'index');
        Route::post('currency_save', 'save');
        Route::get('get_currency', 'currency_list');
        Route::get('currency_delete', 'Restore_Delete_Data');
        Route::get('delete_currency_list', 'DeleteList');
        Route::get('currency_report/{type}', 'report');

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

// GeneralInfo Master
Route::controller(GeneralInfoController::class)->group(function () {
    //add-edit
    Route::get('generalInfo/{action?}/{id?}', 'index');
    Route::get('generalInfo_report/{type}', 'report');
    Route::post('generalInfo_save', 'save');
    Route::get('get_generalInfo', 'generalInfo_list');
    Route::get('generalInfo_delete', 'Restore_Delete_Data');
    Route::get('delete_generalInfo_list', 'DeleteList');
    Route::get('get_city_desc', 'getCityDesc')->name('get_city_desc');
    Route::get('get_branch_details', 'getBranchDetails')->name('get_branch_details');
});
// Fiscal Year
Route::controller(FiscalYearController::class)->group(function () {
    Route::get('fiscalYear/{action?}/{id?}', 'index');
    Route::get('fiscalYear_report/{type}', 'report');
    Route::get('get_fiscalYear', 'fiscalYear_list');
    Route::post('fiscalYear_save', 'save');
    Route::get('get_fy_date', 'constractFYDate')->name('get_fy_date');
    Route::get('get_period_date', 'getPeriodDate')->name('get_period_date');
    Route::get('get_posted_period', 'getPostedPeriod')->name('get_posted_period');
    Route::get('get_active_fy', 'getActiveFYData')->name('get_active_fy');

});
// Period Master
Route::controller(PeriodController::class)->group(function () {
    Route::get('period/{action?}/{id?}', 'index');
    Route::get('period_report/{type}', 'report');
    Route::post('period_save', 'save');
    Route::get('get_period', 'period_list');
    Route::get('period_report/{type}', 'report');

});
// Fiscal Year
Route::controller(ActivePeriodChangeController::class)->group(function () {
    Route::get('periodChange/{action?}/{id?}', 'index');
    Route::post('periodChange_save', 'save');
});
// WeeklyOff
Route::controller(WeeklyOffController::class)->group(function () {
    Route::get('weeklyOff/{action?}/{id?}', 'index');
    Route::get('weeklyOff_report/{type}', 'report');
    Route::get('get_weeklyOff', 'weeklyOff_list');
    Route::get('get_weeklyOffDetail', 'weeklyOffDetail_list')->name('get_weeklyOffDetail');
    Route::post('weeklyOff_save', 'save');
    Route::get('get_fydate', 'getFYDate')->name('get_fydate');


});
// incomeType Master
Route::controller(IncomeTypeController::class)->group(function () {
    // Route::get('/','index');
    Route::get('incomeType/{action?}/{id?}', 'index');
    Route::post('incomeType_save', 'save');
    Route::get('get_incomeType', 'incomeType_list');
    Route::get('incomeType_delete', 'Restore_Delete_Data');
    Route::get('delete_incomeType_list', 'DeleteList');
    Route::get('incomeType_report/{type}', 'report');

});
// DeductionType Master
Route::controller(DeductionTypeController::class)->group(function () {
    Route::get('deductionType/{action?}/{id?}', 'index');
    Route::post('deductionType_save', 'save');
    Route::get('get_deductionType', 'deductionType_list');
    Route::get('get_incomeSubForm', 'incomeSubForm_list')->name('get_incomeSubForm');
    Route::get('deductionType_delete', 'Restore_Delete_Data');
    Route::get('delete_deductionType_list', 'DeleteList');
    Route::get('deductionType_report/{type}', 'report');
});
    // Route::get('logout',[AuthController::class,'logout']);
    Route::controller(AuthController::class)->group(function () {
        Route::get('logout', 'logout')->name('logout');
        Route::get('home','home');
        Route::get('fastpath','fastpath');
    });


 // Pdf Generate
    Route::controller(PdfController::class)->group(function () {
        Route::get('pdf', 'invoice');
        Route::get('payslip_list', 'payslip_list');
        Route::post('payslip', 'generate_payslip');
    });


});

// Route::group(['middleware'=>['LoginCheck']],function () {
// });



// testing route
Route::get('/bug', function () {
    return view('maintenence');
});
Route::get('/error', function () {
    return view('404');
});
