<?php

namespace App\Http\Controllers\Config\FiscalYear;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\FiscalYear\Period;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class PeriodController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        $month_list = [];
        for($m=1; $m<=12; ++$m){
            $month_list[] = date('F', mktime(0, 0, 0, $m, 1));
        }

        if(!empty($request->id)){
          $edit_data = $this->getPeriodData(Crypt::decryptString($request->id));
        }
        return view('config.FiscalYear.period',compact( 'action','edit_data','month_list'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->input();
            $validator = Validator::make($request->all(), [
              'FYPMHPeriodId'     => 'required|unique:t00901L01,FYPMHPeriodId,'.$request->id,
              'FYPMHMonth'      => 'required|max:100|unique:t00901L01,FYPMHMonth,'.$request->id,
              'FYPMHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $period_data = new Period();
                if($request->id != null){
                    //update
                   $period_data = Period::find($request->id);
                }else{
                    $period_data->FYPMHPeriodId= $request->FYPMHPeriodId;
                    $period_data->FYPMHLastCreated =now();
                }

                $period_data->FYPMHMonth=$request->FYPMHMonth;
                $period_data->FYPMHNMonth= intval(date("n",strtotime($request->FYPMHMonth)));
                $period_data->FYPMHDesc2=$request->FYPMHDesc2;
                $period_data->FYPMHUser=Auth::user()->name;
                // FYPMHUser=Auth::user()->id;
                $period_data->FYPMHLastUpdated =now();
                $period_data->save();


               if($period_data){
                       return response()->json(['status' => 'success','data' =>$period_data ,'updateMode' => 'Updated']);
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

    public function period_list()
    {
        $period_list = Period::where('FYPMHMarkForDeletion','!=',1)->get();
        return $this->TableActionEditTrait('period',$period_list);
    }
    public function getPeriodData($id)
    {
        try {
           return Period::where('id', $id)->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
}
