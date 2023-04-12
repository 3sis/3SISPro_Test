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
use App\Models\Config\IncomeDeductionType\DeductionType;
use App\Models\Config\IncomeDeductionType\IncomeType;
use App\Models\Config\IncomeDeductionType\IncDependentDed;
use App\Models\Config\IncomeDeductionType\PeriodicIncDed;
use App\Models\SystemsMaster\RoundingStrategy;
use App\Models\SystemsMaster\PaymentMaster\RuleDefinition;
use App\Models\SystemsMaster\PaymentMaster\PaymentCycle;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
use Illuminate\Contracts\Encryption\DecryptException;

class DeductionTypeController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        try {
             $edit_data = '';
            $action = $request->action;
            $deductionType_list = DeductionType::all();
            $round_list = RoundingStrategy::all();
            $rule_list = RuleDefinition::where('PMRDHIncOrDed','D')->get();
            $payCycle = PaymentCycle::all();
            $incomeSubForm_list = IncomeType::where('PMITHMarkForDeletion','!=',1)->get();

            if(!empty($request->id)){
              $edit_data = $this->getDeductionTypeData(Crypt::decryptString($request->id));

            }
        return view('config.IncomeDeductionType.deductionType',compact( 'action','edit_data','deductionType_list','round_list','rule_list','payCycle','incomeSubForm_list'));
        } catch (DecryptException $e) {
          //
         }

    }
    public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request;
            $validator = Validator::make($request->all(), [
                'PMDTHDeductionId'     => 'required|min:2|max:10|unique:t11906l02,PMDTHDeductionId,'.$request->id,
                'PMDTHDesc1'      => 'required|max:100',
                'PMDTHDesc2'      => 'max:200',
                'PMDTHRuleId'    => 'required',
                'PMDTHRoundingStrategy'    => 'required',
                'PMDTHDeductionCycle'    => 'required'
                // "periodId"      => "required_if:PMDTHDeductionCycle,==,P",

            ]);
            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }
                $deductionType = new DeductionType();
                if($request->id != null){
                    //update
                   $deductionType = DeductionType::find($request->id);

                }else{
                    $deductionType->PMDTHDeductionId           =   $request->PMDTHDeductionId;
                    $deductionType->PMDTHDeductionIdK           =   $request->PMDTHDeductionIdK;
                    $deductionType->PMDTHLastCreated       =   now();
                }
                    $deductionType->PMDTHDesc1              =   $request->PMDTHDesc1;//2023-04-01
                    $deductionType->PMDTHDesc2              =   $request->PMDTHDesc2;
                    $deductionType->PMDTHIsTaxExempted          =   $request->PMDTHIsTaxExempted;
                    $deductionType->PMDTHIsThisLoanLine          =   $request->PMDTHIsThisLoanLine;
                    $deductionType->PMDTHShowInTaxList          =   $request->PMDTHShowInTaxList;
                    $deductionType->PMDTHIsIncomeDependent          =   $request->PMDTHIsIncomeDependent;
                    $deductionType->PMDTHRuleId             =   $request->PMDTHRuleId;
                    $deductionType->PMDTHDeductionCycle        =   $request->PMDTHDeductionCycle;
                    $deductionType->PMDTHApplicableFor        =   $request->PMDTHApplicableFor;
                    $deductionType->PMDTHDedStrategy        =   $request->PMDTHDedStrategy;
                    $deductionType->PMDTHDedStrategyDesc        =   $request->PMDTHDedStrategyDesc;
                    $deductionType->PMDTHPrintingSeq        =   $request->PMDTHPrintingSeq;
                    $deductionType->PMDTHRoundingStrategy   =   $request->PMDTHRoundingStrategy;
                    $deductionType->PMDTHMarkForDeletion   =   0;
                    $deductionType->PMDTHUser              =   Auth::user()->name;
                    $deductionType->PMDTHLastUpdated       =   now();
                    $deductionType->save();
               if($deductionType){
                    return response()->json(['status' => 'success','data' =>$deductionType ,'updateMode' => 'Updated']);
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
    public function deductionType_list()
    {
        $deductionType_list = DeductionType::where('PMDTHMarkForDeletion','!=',1)->with('fnRule','fnRounding')->get();
        return $this->TableActionTrait('deductionType',$deductionType_list);
    }
    public function incomeSubForm_list()
    {
        // $incomeSubForm_list = IncomeType::where('PMITHMarkForDeletion','!=',1)->get();

        $incomeSubForm_list = IncDependentDed::where('PMDTDMarkForDeletion','!=',1)->with('fnIncome')->get();
        return $this->TableActionTrait('IncDependentDed',$incomeSubForm_list);
    }
    public function DeleteList()
    {
        $delete_list = DeductionType::where('PMDTHMarkForDeletion',1)->with('fnRule','fnRounding')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }
    public function Restore_Delete_Data(Request $request)
    {
    try {
         $deductionType = DeductionType::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $deductionType->PMDTHMarkForDeletion = 1 :$deductionType->PMDTHMarkForDeletion = 0;
            $deductionType->save();
            if($deductionType){
                   return response()->json(['status' => 'success','data' =>$deductionType]);
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
    public function getDeductionTypeData($id)
    {
        try {
           return DeductionType::where('id', $id)->first();
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
