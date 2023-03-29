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
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;


class ActivePeriodChangeController extends Controller
{
    use Error;
    protected  $gCompanyId = '1000';
    public function index(Request $request)
    {
        // echo 'Data Submitted.';
        $edit_data = '';
        $action = $request->action;
        $period_list = Period::all();

        $fiscalYear_list = FiscalYear::where('FYFYHCurrentFY',1)->where('FYFYHCompanyId', $this->gCompanyId)->first();
        // if(!empty($request->id)){
        //   $edit_data = $this->getFiscalYearData(Crypt::decryptString($request->id));
        // }
        $edit_data = $this->getFiscalYearData();

        return view('config.FiscalYear.activePeriodChange',compact( 'action','edit_data','period_list'));
    }

    public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request;
            $request->merge(['FYFYHCompanyId' => $this->gCompanyId]);
            // return $request;

            $validator = Validator::make($request->all(), [
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
                    // $FiscalYear->FYFYHCurrentFY         =   $request->FYFYHCurrentFY;
                    $FiscalYear->FYFYHCurrentPeriod     =   intval($request->FYFYHCurrentPeriod);
                    $Period = Period::where('FYPMHPeriodId',$request->FYFYHCurrentPeriod)->first();
                    $date   = $this->constractPeriodDate($request->FYFYHFiscalYearId,$Period->FYPMHMonth);
                    $FiscalYear->FYFYHPeriodStartDate   =   date("Y-m-01", strtotime($date));
                    $FiscalYear->FYFYHPeriodEndDate     =   date("Y-m-t", strtotime($date));
                    $FiscalYear->FYFYHUser              =   Auth::user()->name;
                    $FiscalYear->FYFYHLastUpdated       =   now();
                    $FiscalYear->save();
                }



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

    public function getFiscalYearData()
    {
        // echo 'Data Submitted.';
        // $fiscalYear_list = FiscalYear::where('FYFYHCurrentFY',1)->where('FYFYHCompanyId', $this->gCompanyId)->first();

        try {
            // echo 'Data Submitted.2';
            // return $test=FiscalYear::where('id', $id)->first();
           return FiscalYear::where('FYFYHCurrentFY',1)->with('fnPeriod')->first();
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
        // return json($fyDate);
        return response()->json($fyDate);

    }
}
