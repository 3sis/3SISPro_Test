<?php

namespace App\Http\Controllers\Config\IncomeDeductionType;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\IncomeDeductionType\IncomeType;
use App\Models\Config\IncomeDeductionType\PeriodicIncDed;
use App\Models\SystemsMaster\RoundingStrategy;
use App\Models\SystemsMaster\PaymentMaster\RuleDefinition;
use App\Models\SystemsMaster\PaymentMaster\PaymentCycle;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class IncomeTypeController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        // echo 'Data Submitted.';
        $edit_data = '';
        $action = $request->action;
        $incomeType_list = IncomeType::all();
        $round_list = RoundingStrategy::all();
        $rule_list = RuleDefinition::where('PMRDHIncOrDed','I')->get();
        $payCycle = PaymentCycle::all();
        // $period_list = PeriodicIncDed::where('PMIDDIncDedId',I)->all();
        if(!empty($request->id)){
          $edit_data = $this->getIncomeTypeData(Crypt::decryptString($request->id));
        }
        return view('config.IncomeDeductionType.incomeType',compact( 'action','edit_data','incomeType_list','round_list','rule_list','payCycle'));
    }
    public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request;
            $validator = Validator::make($request->all(), [
                'PMITHIncomeId'     => 'required|min:2|max:10|unique:t11906l01,PMITHIncomeId,'.$request->id,
                'PMITHDesc1'      => 'required|max:100',
                'PMITHDesc2'      => 'max:200',
                'PMITHRuleId'    => 'required',
                'PMITHRoundingStrategy'    => 'required',
                'PMITHIncomeCycle'    => 'required'
                // "periodId"      => "required_if:PMITHIncomeCycle,==,P",

            ]);
            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }
                $incomeType = new IncomeType();
                if($request->id != null){
                    //update
                   $incomeType = IncomeType::find($request->id);

                }else{
                    $incomeType->PMITHIncomeId           =   $request->PMITHIncomeId;
                    $incomeType->PMITHIncomeIdK           =   $request->PMITHIncomeIdK;
                    $incomeType->PMITHLastCreated       =   now();
                }
                    $incomeType->PMITHDesc1              =   $request->PMITHDesc1;//2023-04-01
                    $incomeType->PMITHDesc2              =   $request->PMITHDesc2;
                    $incomeType->PMITHIsTaxable          =   $request->PMITHIsTaxable;
                    $incomeType->PMITHRuleId             =   $request->PMITHRuleId;
                    $incomeType->PMITHIncomeCycle        =   $request->PMITHIncomeCycle;
                    $incomeType->PMITHPrintingSeq        =   $request->PMITHPrintingSeq;
                    $incomeType->PMITHRoundingStrategy   =   $request->PMITHRoundingStrategy;
                    $incomeType->PMITHMarkForDeletion   =   0;
                    $incomeType->PMITHUser              =   Auth::user()->name;
                    $incomeType->PMITHLastUpdated       =   now();
                    $incomeType->save();
               if($incomeType){
                    return response()->json(['status' => 'success','data' =>$incomeType ,'updateMode' => 'Updated']);
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
    public function incomeType_list()
    {
        $incomeType_list = IncomeType::where('PMITHMarkForDeletion','!=',1)->with('fnRule','fnRounding')->get();
        return $this->TableActionTrait('incomeType',$incomeType_list);
    }
    public function DeleteList()
    {
        $delete_list = IncomeType::where('PMITHMarkForDeletion',1)->with('fnRule','fnRounding')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }
    public function Restore_Delete_Data(Request $request)
    {
    try {
         $incomeType = IncomeType::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $incomeType->PMITHMarkForDeletion = 1 :$incomeType->PMITHMarkForDeletion = 0;
            $incomeType->save();
            if($incomeType){
                   return response()->json(['status' => 'success','data' =>$incomeType]);
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
    public function getIncomeTypeData($id)
    {
        try {
           return IncomeType::where('id', $id)->first();
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
