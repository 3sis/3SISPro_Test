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
use App\Models\Config\FiscalYear\Period;
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
        $period_list = Period::where('FYPMHMarkForDeletion','!=',1)->orderBy('FYPMHPeriodId', 'ASC')->get();
        if(!empty($request->id)){
            $edit_data = $this->getIncomeTypeData(Crypt::decryptString($request->id));
            // $PeriodicIncDed =PeriodicIncDed::where('PMIDDIncDedIdK', $edit_data['PMITHIncomeIdK'])->select('PMIDDPeriodId')->first();
            // if($PeriodicIncDed){
            //     $edit_data = array_merge(json_decode($edit_data,true),json_decode($PeriodicIncDed,true));
            // }
        }
        return view('config.IncomeDeductionType.incomeType',compact( 'action','edit_data','incomeType_list','round_list','rule_list','payCycle','period_list'));
    }
    public function save(Request $request)
    {
        // dd($request->all());
        try {

            $validator = Validator::make($request->all(),[
                'PMITHIncomeId'     => 'required|min:2|max:10|unique:t11906l01,PMITHIncomeId,'.$request->id,
                'PMITHDesc1'      => 'required|max:100',
                'PMITHDesc2'      => 'max:200',
                'PMITHRuleId'    => 'required',
                'PMITHRoundingStrategy'    => 'required',
                'PMITHIncomeCycle'    => 'required',
                "PMITHPeriodId"      => "required_if:PMITHIncomeCycle,==,P",
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
                    $incomeType->PMITHPeriodId           =   null;
                    if($request->PMITHIncomeCycle == 'P'){
                        $period_ids = implode(',', $request->PMITHPeriodId);
                        $incomeType->PMITHPeriodId        =   $period_ids;
                    }
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
    // public function UpdatePeriodicDetailTbl($request)
    // {
    //     // Delete Detail Record First
    //     $PeriodicIncDed = PeriodicIncDed::where('PMIDDIncDedIdK', $request->PMITHIncomeIdK)
    //         ->delete();
    //     if ($request->PMITHIncomeCycle == 'P') {
    //         if (!empty($request->periodId)) {

    //             $period_ids = implode(',', $request->periodId);

    //             $PeriodicIncDed = new PeriodicIncDed();
    //             $PeriodicIncDed->PMIDDIncDedId          = $request->PMITHIncomeId;
    //             $PeriodicIncDed->PMIDDIncDedIdK         = $request->PMITHIncomeIdK;
    //             $PeriodicIncDed->PMIDDIncOrDed          = 'I';
    //             $PeriodicIncDed->PMIDDDesc              = $request->PMITHDesc1;
    //             $PeriodicIncDed->PMIDDPeriodId          = $period_ids;
    //             $PeriodicIncDed->PMIDDMarkForDeletion   = 0;
    //             $PeriodicIncDed->PMIDDUser              = Auth::user()->name;
    //             $PeriodicIncDed->PMIDDLastCreated       = now();
    //             $PeriodicIncDed->PMIDDLastUpdated       = now();
    //             $PeriodicIncDed->save();
    //         }
    //     }
    // }
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
