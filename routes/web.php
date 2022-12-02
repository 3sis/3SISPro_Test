<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Config\GeneralMaster\StateController;
use App\Http\Controllers\Config\GeneralMaster\CompanyController;

use App\Http\Controllers\AuthController;


Route::get('/',[AuthController::class,'index'])->name('login');
Route::post('login',[AuthController::class,'login'])->name('login_save');

Route::get('/test', [StateController::class, 'test']);

Route::group(['middleware'=>'auth'],function(){
    Route::get('/company/index', [CompanyController::class, 'Index']);

   // State Master 
    Route::get('/state', [StateController::class, 'index']);
    Route::post('/state/save', [StateController::class, 'save']);
    Route::get('/get/state', [StateController::class, 'state_list']);
    Route::get('/state/Master/Update', [StateController::class, 'fetchData']);
    Route::get('/state/Master/Delete', [StateController::class, 'Restore_Delete_Data']);
    Route::get('/state/Delete/list', [StateController::class, 'DeleteList']);

    Route::get('logout',[AuthController::class,'logout'])->name('logout');
});

// Route::get('/', [DashboardController::class,'index']);
Route::get('/fastpath', [DashboardController::class,'MNFastPath']);


Route::post('/current_url', [DashboardController::class,'current_url']);

Route::get('/test_table', [DashboardController::class,'test']);

Route::get('/table', function () {
    return view('table');
});


// Route::get('/company/index', [DashboardController::class,'companymaster']);
Route::get('/system/index', [DashboardController::class,'systemmaster']);


Route::get('/new/index', [DashboardController::class,'tabform']);


//Route for Company Master 3SIS
// Route::get('/company/index', [CompanyController::class, 'Index']);
Route::GET('/company/Master',[CompanyController::class, 'BrowserData'])->name('company.browserData');
Route::GET('/company/Master/Update',[CompanyController::class, 'FetchData'])->name('company.fetchData');
Route::POST('/company/Master/Add',[CompanyController::class, 'PostData'])->name('company.postData');
Route::GET('/company/Master/Delete',[CompanyController::class, 'DeleteData'])->name('company.deleteData');
Route::GET('/company/Master1',[CompanyController::class, 'BrowserDeletedRecords'])->name('company.browserDeletedRecords');
Route::GET('/company/Master/Undelete',[CompanyController::class, 'RestoreDeletedRecord'])->name('company.restoreDeletedRecords');
Route::POST('/company/Master/getGeoDesc',[CompanyController::class, 'GetGeoDesc'])->name('company.getGeoDesc');

Route::post('/city/dropdown',[CompanyController::class, 'getcityStateDropDown'])->name('dropDownMasters.getGeoDesc');
Route::post('/bankBranch/branchDetail',[CompanyController::class, 'getBankBranch']);
//Route for Company Master 3SIS Ends

//tab design test
Route::get('/tabs', [CompanyController::class, 'Tab']);