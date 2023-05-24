<?php

namespace App\Http\Controllers\Config\FiscalYear;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\FiscalYear\PublicHolidayHeader;
use App\Models\Config\FiscalYear\PublicHolidayDetail;
use App\Models\Config\FiscalYear\Calendar;
use App\Models\Config\FiscalYear\FiscalYear;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use Schema;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class PublicHolidayController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        $calendar_list = Calendar::all();
        $fiscalYear_list = FiscalYear::all();
        // $publicHolidayDetail_list = PublicHolidayDetail::where('FYPHDMarkForDeletion','!=',1)->get();



        // $publicHolidayDetail_list = PublicHolidayDetail::all();

        if(!empty($request->id)){
          $edit_data = $this->getPublicHolidayData(Crypt::decryptString($request->id));
        }
        return view('config.FiscalYear.publicHoliday',compact( 'action','edit_data','calendar_list','fiscalYear_list'));
    }
    public function publicHoliday_list()
    {
        $publicHoliday_list = PublicHolidayHeader::where('FYPHHMarkForDeletion','!=',1)->with('fnCalendar','fnFy')->get();
        return $this->TableActionTrait('publicHoliday',$publicHoliday_list);
    }
    public function publicHolidayDetail_list()
    {
        $publicHolidayDetail_list = PublicHolidayDetail::where('FYPHDMarkForDeletion','!=',1)->get();
        // dd($publicHolidayDetail_list);
        // return $publicHolidayDetail_list;
        return $this->TableActionTrait('publicHoliday',$publicHolidayDetail_list);
    }
    public function save(Request $request)
    {
        dd($request->all());

        // try {
        //     // echo 'Data Submitted.';
        //     // return $request;
        //     $request->merge(['FYFYHCompanyId' => $this->gCompanyId]);
        //     // return $request;

        //     $validator = Validator::make($request->all(), [
        //         'FYFYHFiscalYearId' => [
        //             'required',
        //             'unique:t05903L01,FYFYHCompanyId,FYFYHFiscalYearId'.$request->id
        //         ],

        //         'FYFYHStartDate'        => 'required',
        //         'FYFYHEndDate'          => 'required|after:FYFYHStartDate',
        //         'FYFYHCurrentFY'         =>
        //         // 'unique:t05903L01,FYFYHCompanyId,FYFYHCurrentFY,1'.$request->id,

        //         // 'unique:t05903L01,FYFYHCurrentFY,1'.$request->id,
        //         Rule::unique('t05903l01')   ->where('FYFYHCompanyId',$request->FYFYHCompanyId)
        //                                     ->where('FYFYHFiscalYearId','!=',$request->FYFYHFiscalYearId)
        //                                     ->where('FYFYHCurrentFY',1),
        //         'FYFYHCurrentPeriod'    => [
        //             Rule::in(['1','2','3','4','5','6','7','8','9','10','11','12']),
        //         ],
        //     ]);

        //     if ($validator->fails()) {
        //         return response()->json(['status' => 'error','errors'=>$validator->errors()]);
        //     }
        //         $FiscalYear = new FiscalYear();
        //         if($request->id != null){
        //             //update
        //            $FiscalYear = FiscalYear::find($request->id);

        //         }else{
        //             $FiscalYear->FYFYHCompanyId         =   $request->FYFYHCompanyId;
        //             $FiscalYear->FYFYHFiscalYearId      =   $request->FYFYHFiscalYearId;
        //             $FiscalYear->FYFYHLastCreated       =   now();
        //         }
        //             $FiscalYear->FYFYHStartDate         =   date("Y-m-d", strtotime($request->FYFYHStartDate));//2023-04-01
        //             $FiscalYear->FYFYHEndDate           =   date("Y-m-d", strtotime($request->FYFYHEndDate));//2023-04-01
        //             $FiscalYear->FYFYHCurrentFY         =   intval($request->FYFYHCurrentFY);
        //             $FiscalYear->FYFYHCurrentPeriod     =   intval($request->FYFYHCurrentPeriod);
        //             $Period = Period::where('FYPMHPeriodId',$request->FYFYHCurrentPeriod)->first();
        //             $date = $request->FYFYHFiscalYearId.'-'.$Period->FYPMHMonth.'-01';
        //             $FiscalYear->FYFYHPeriodStartDate   =   date("Y-m-01", strtotime($date));
        //             $FiscalYear->FYFYHPeriodEndDate     =   date("Y-m-t", strtotime($date));
        //             $FiscalYear->FYFYHMarkForDeletion   =   0;
        //             $FiscalYear->FYFYHUser              =   Auth::user()->name;
        //             $FiscalYear->FYFYHLastUpdated       =   now();
        //             $this->updPostedPeriodHistory($FiscalYear);

        //             // $PostedPeriodHistory->FYPPDCompanyId         =   $FiscalYear->FYFYHCompanyId;
        //             // $PostedPeriodHistory->FYPPDFiscalYearId      =   $FiscalYear->FYFYHFiscalYearId;
        //             // $PostedPeriodHistory->FYPPDLastCreated       =   now();
        //             // $PostedPeriodHistory->FYPPDStartDate         =   $FiscalYear->FYFYHStartDate;
        //             // $PostedPeriodHistory->FYPPDEndDate           =   $FiscalYear->FYFYHEndDate;
        //             // $PostedPeriodHistory->FYPPDPeriod            =   $FiscalYear->FYFYHCurrentPeriod;
        //             // $PostedPeriodHistory->FYPPDPeriodStartDate   =   $FiscalYear->FYFYHPeriodStartDate;
        //             // $PostedPeriodHistory->FYPPDPeriodEndDate     =   $FiscalYear->FYFYHPeriodEndDate;
        //             // $PostedPeriodHistory->FYPPDMarkForDeletion   =   0;
        //             // $PostedPeriodHistory->FYPPDUser              =   Auth::user()->name;
        //             // $PostedPeriodHistory->FYPPDLastUpdated       =   now();
        //             // $PostedPeriodHistory->save();

        //             $FiscalYear->save();



        //        if($FiscalYear){
        //             return response()->json(['status' => 'success','data' =>$FiscalYear ,'updateMode' => 'Updated']);
        //        }else{
        //             return response()->json(['status' => 'error' ]);
        //        }
        //  } catch (QueryException $e) {
        //     Log::error($e->getMessage());
        //     return response()->json(['status' => 'technical_error']);
        // } catch (\Exception $e) {
        //     Log::error($e->getMessage());
        //     $this->error_log($e);
        //     return response()->json(['status' => 'technical_error']);
        // }
    }
    public function detail_save(Request $request)
    {
        echo 'Data Submitted.';
        dd($request->all());
        // return $request;
    }
    public function getPublicHolidayData($id)
    {
        try {
           return PublicHolidayHeader::where('id', $id)->with('fnCalendar','fnFy')->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function getFYDate(Request $request){
        $fy = FiscalYear::where('FYFYHFiscalYearId',$request->year)->first();
        $fyDate = [];
        $fyDate['fyStartDate'] = date("d-m-Y", strtotime($fy->FYFYHStartDate));
        $fyDate['fyEndDate'] = date("d-m-Y", strtotime($fy->FYFYHEndDate));
        return response()->json($fyDate);

    }
}
