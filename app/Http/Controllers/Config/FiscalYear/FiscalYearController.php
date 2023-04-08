<?php

namespace App\Http\Controllers\Config\FiscalYear;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\FiscalYear\Period;
use App\Models\Config\FiscalYear\FiscalYear;
use App\Models\Config\FiscalYear\PostedPeriodHistory;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;


class FiscalYearController extends Controller
{
    use CommonDataTables,Error;
    protected  $gCompanyId = '1000';
    public function index(Request $request)
    {
        // echo 'Data Submitted.';
        $edit_data = '';
        $action = $request->action;
        $period_list = Period::all();

        if(!empty($request->id)){
          $edit_data = $this->getFiscalYearData(Crypt::decryptString($request->id));
        }
        return view('config.FiscalYear.fiscalYear',compact( 'action','edit_data','period_list'));
    }

    public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request;
            $request->merge(['FYFYHCompanyId' => $this->gCompanyId]);
            // return $request;

            $validator = Validator::make($request->all(), [
                'FYFYHFiscalYearId' => [
                    'required',
                    'unique:t05903L01,FYFYHCompanyId,FYFYHFiscalYearId'.$request->id
                ],

                'FYFYHStartDate'        => 'required',
                'FYFYHEndDate'          => 'required|after:FYFYHStartDate',
                'FYFYHCurrentFY'         =>
                // 'unique:t05903L01,FYFYHCompanyId,FYFYHCurrentFY,1'.$request->id,

                // 'unique:t05903L01,FYFYHCurrentFY,1'.$request->id,
                Rule::unique('t05903l01')   ->where('FYFYHCompanyId',$request->FYFYHCompanyId)
                                            ->where('FYFYHFiscalYearId','!=',$request->FYFYHFiscalYearId)
                                            ->where('FYFYHCurrentFY',1),
                'FYFYHCurrentPeriod'    => [
                    Rule::in(['1','2','3','4','5','6','7','8','9','10','11','12']),
                ],
            ]);

            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }
                $FiscalYear = new FiscalYear();
                if($request->id != null){
                    //update
                   $FiscalYear = FiscalYear::find($request->id);

                }else{
                    $FiscalYear->FYFYHCompanyId         =   $request->FYFYHCompanyId;
                    $FiscalYear->FYFYHFiscalYearId      =   $request->FYFYHFiscalYearId;
                    $FiscalYear->FYFYHLastCreated       =   now();
                }
                    $FiscalYear->FYFYHStartDate         =   date("Y-m-d", strtotime($request->FYFYHStartDate));//2023-04-01
                    $FiscalYear->FYFYHEndDate           =   date("Y-m-d", strtotime($request->FYFYHEndDate));//2023-04-01
                    $FiscalYear->FYFYHCurrentFY         =   intval($request->FYFYHCurrentFY);
                    $FiscalYear->FYFYHCurrentPeriod     =   intval($request->FYFYHCurrentPeriod);
                    $Period = Period::where('FYPMHPeriodId',$request->FYFYHCurrentPeriod)->first();
                    $date = $request->FYFYHFiscalYearId.'-'.$Period->FYPMHMonth.'-01';
                    $FiscalYear->FYFYHPeriodStartDate   =   date("Y-m-01", strtotime($date));
                    $FiscalYear->FYFYHPeriodEndDate     =   date("Y-m-t", strtotime($date));
                    $FiscalYear->FYFYHMarkForDeletion   =   0;
                    $FiscalYear->FYFYHUser              =   Auth::user()->name;
                    $FiscalYear->FYFYHLastUpdated       =   now();
                    $this->updPostedPeriodHistory($FiscalYear);

                    // $PostedPeriodHistory->FYPPDCompanyId         =   $FiscalYear->FYFYHCompanyId;
                    // $PostedPeriodHistory->FYPPDFiscalYearId      =   $FiscalYear->FYFYHFiscalYearId;
                    // $PostedPeriodHistory->FYPPDLastCreated       =   now();
                    // $PostedPeriodHistory->FYPPDStartDate         =   $FiscalYear->FYFYHStartDate;
                    // $PostedPeriodHistory->FYPPDEndDate           =   $FiscalYear->FYFYHEndDate;
                    // $PostedPeriodHistory->FYPPDPeriod            =   $FiscalYear->FYFYHCurrentPeriod;
                    // $PostedPeriodHistory->FYPPDPeriodStartDate   =   $FiscalYear->FYFYHPeriodStartDate;
                    // $PostedPeriodHistory->FYPPDPeriodEndDate     =   $FiscalYear->FYFYHPeriodEndDate;
                    // $PostedPeriodHistory->FYPPDMarkForDeletion   =   0;
                    // $PostedPeriodHistory->FYPPDUser              =   Auth::user()->name;
                    // $PostedPeriodHistory->FYPPDLastUpdated       =   now();
                    // $PostedPeriodHistory->save();

                    $FiscalYear->save();



               if($FiscalYear){
                    return response()->json(['status' => 'success','data' =>$FiscalYear ,'updateMode' => 'Updated']);
               }else{
                    return response()->json(['status' => 'error' ]);
               }
         } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function fiscalYear_list()
    {
        $fiscalYear_list = FiscalYear::where('FYFYHMarkForDeletion','!=',1)->where('FYFYHCompanyId', $this->gCompanyId)->with('fnPeriod')->get();
        // $test=$fiscalYear_list;
        return $this->TableActionEditTrait('fiscalYear',$fiscalYear_list);
    }
    public function getFiscalYearData($id)
    {
        // echo 'Data Submitted.';

        try {
            // echo 'Data Submitted.2';
            // return $test=FiscalYear::where('id', $id)->first();
           return FiscalYear::where('id', $id)->with('fnPeriod')->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function constractPeriodDate($fy,$month){
        $date = $fy.'-'.$month.'-01';
    }
    public function constractFYDate(Request $request){
        $FirstPeriod = Period::where('FYPMHPeriodId',1)->first();
        $StartDate = $request->year.'-'.$FirstPeriod->FYPMHMonth.'-01';

        $LastPeriod = Period::where('FYPMHPeriodId',12)->first();
        $EndDate = $request->year.'-'.$LastPeriod->FYPMHMonth.'-01';

        $addInt ='+ '.$LastPeriod->FYPMHNAddInt.' years';

        $fyDate = [];
        $fyDate['fyStartDate'] = date("01-m-Y", strtotime($StartDate));
        $fyDate['fyEndDate'] = date("t-m-Y", strtotime($EndDate. $addInt));
        return response()->json($fyDate);

    }
    public function getPeriodDate(Request $request){
        if($request->period!=''){
            $Period = Period::where('FYPMHPeriodId',$request->period)->first();
        }else{
            $Period = Period::where('FYPMHPeriodId',1)->first();
        }
        $Date = $request->year.'-'.$Period->FYPMHMonth.'-01';

        $periodDate = [];
        $periodDate['periodId'] = $Period->FYPMHPeriodId;
        $periodDate['periodStartDate'] = date("01-m-Y", strtotime($Date));
        $periodDate['periodEndDate'] = date("t-m-Y", strtotime($Date));
        // return json($fyDate);
        return response()->json($periodDate);

    }
    public function updPostedPeriodHistory($FiscalYear){
        $PostedPeriodHistory = PostedPeriodHistory::where('FYPPDCompanyId',$FiscalYear->FYFYHCompanyId)
        ->where('FYPPDPeriod',$FiscalYear->FYFYHCurrentPeriod)
        ->where('FYPPDFiscalYearId',$FiscalYear->FYFYHFiscalYearId)
        ->first();
        if($PostedPeriodHistory == null || $PostedPeriodHistory == ''){
            //update
            $PostedPeriodHistory = new PostedPeriodHistory();
            $PostedPeriodHistory->FYPPDCompanyId         =   $FiscalYear->FYFYHCompanyId;
            $PostedPeriodHistory->FYPPDFiscalYearId      =   $FiscalYear->FYFYHFiscalYearId;
            $PostedPeriodHistory->FYPPDLastCreated       =   now();
            $PostedPeriodHistory->FYPPDStartDate         =   $FiscalYear->FYFYHStartDate;
            $PostedPeriodHistory->FYPPDEndDate           =   $FiscalYear->FYFYHEndDate;

            $PostedPeriodHistory->FYPPDPeriod            =   $FiscalYear->FYFYHCurrentPeriod;
            $PostedPeriodHistory->FYPPDPeriodStartDate   =   $FiscalYear->FYFYHPeriodStartDate;
            $PostedPeriodHistory->FYPPDPeriodEndDate     =   $FiscalYear->FYFYHPeriodEndDate;
            $PostedPeriodHistory->FYPPDMarkForDeletion   =   0;
            $PostedPeriodHistory->FYPPDUser              =   Auth::user()->name;
            $PostedPeriodHistory->FYPPDLastUpdated       =   now();
            $PostedPeriodHistory->save();
        }
    }
    public function getPostedPeriod(Request $request){
        $PostedPeriodHistory = PostedPeriodHistory::
        where('FYPPDCompanyId',$this->gCompanyId)
        ->where('FYPPDFiscalYearId',$request->fiscalYear)
        ->orderBy('FYPPDPeriod', 'desc')
        ->first();

        $postedPeriod = [];
        $postedPeriod['postedPeriod'] = $PostedPeriodHistory->FYPPDPeriod;
        return response()->json($postedPeriod);
    }
    public function getActiveFYData(Request $request)
    {
        $FiscalYear = FiscalYear::
          where('FYFYHCompanyId',$this->gCompanyId)
        ->where('FYFYHFiscalYearId','!=',$request->FYFYHFiscalYearId)
        ->where('FYFYHCurrentFY','==',1)
        ->first();
        $ActiveFYDetail = [];
        $ActiveFYDetail['activeFYId'] = $FiscalYear->FYFYHFiscalYearId;
        $ActiveFYDetail['fyStartDate'] = date("01-m-Y", strtotime( $FiscalYear->FYFYHStartDate));
        $ActiveFYDetail['fyEndDate'] = date("t-m-Y", strtotime( $FiscalYear->FYFYHEndDate));
        // return json($fyDate);
        return response()->json($ActiveFYDetail);
    }
}
