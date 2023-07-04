<?php

namespace App\Http\Controllers\Payroll\Process;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Payroll\Process\AdHocIncome;
use App\Models\Payroll\EmployeeMaster\GeneralInfo;
use App\Models\Config\IncomeDeductionType\IncomeType;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Validation\Rule;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use Schema;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class AdHocIncomeController extends Controller
{
    use CommonDataTables,Error;
    protected  $gCompanyId      = '1000';
    protected  $gActiveFY       = '2023';
    protected  $gActivePeriod   = '3';

    public function index(Request $request)
    {
        // dd($this->gActiveFY);
        $edit_data = '';
        $adHocIncome_list = [];
        $ActiveFY = $this->gActiveFY;
        $ActivePeriod = $this->gActivePeriod;
        $action = $request->action;
        $employee_list = GeneralInfo::all();
        $income_list = IncomeType::where('PMITHMarkForDeletion','!=',1)->get();

        if(!empty($request->id)){
          $edit_data = $this->getAdHocIncomeData(Crypt::decryptString($request->id));
          $adHocIncome_list = AdHocIncome::where('PGAIDEmployeeId', Crypt::decryptString($request->EMGIHEmployeeId))->get();

        }
        return view('payroll.process.adHocIncome',compact( 'action','edit_data','employee_list','income_list','adHocIncome_list','ActiveFY','ActivePeriod'));
    }
    public function EmployeeList()
    {
        $EmployeeList = GeneralInfo::where('EMGIHCompId', $this->gCompanyId)->with('fnLocation')->get();
        return $this->TableActionTrait('EmployeeList',$EmployeeList);
    }
    public function adHocIncome_list()
    {
        $adHocIncome_list = AdHocIncome::where('PGAIDMarkForDeletion','!=',1)->get();
        // dd($adHocIncome_list);
        // return $adHocIncome_list;
        return $this->TableActionTrait('AdHocIncome',$adHocIncome_list);
    }
    public function save(Request $request)
    {
        // dd($request->all());
        try {
            $request->merge(['PGAIDCompanyId' => $this->gCompanyId]);

            $validator = Validator::make($request->all(), [
                'EMGIHEmployeeId'           => 'required',
                'adHocIncome.*.gross_amt' => 'required',
                'adHocIncome.*.gross_payment' => 'required',
                'adHocIncome.*.income_id' => 'required',
            ],
        );
            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }


         // Remove Record for Datatable
        // if($request->action == 'edit'){
        //     $DetailIds = AdHocIncome::pluck('id')->all();
        //     foreach($DetailIds as $key => $value){
        //         if (!in_array($value, array_keys($request->adHocIncome))) {
        //             $DetailTable = AdHocIncome::find($value);
        //             $DetailTable->delete();
        //         }
        //     }
        // }

        // Create and Update Record Datatable
        $Status = null;
        foreach ($request->adHocIncome as $key => $value) {
            if(isset($value['id'])){
                $Status = AdHocIncome::where('id', '=',$value['id'])->update([
                'PGAIDGrossAmount'        =>  $value['gross_amt'],
                'PGAIDGrossPayment'       =>  $value['gross_payment'],
                'PGAIDUser'               =>  Auth::user()->name,
                'PGAIDLastUpdated'        =>  now(),
                ]);
            }else{
                $data= [

                    'PGAIDCompanyId'        =>  $request->PGAIDCompanyId,
                    'PGAIDFiscalYear'       =>  $this->gActiveFY,
                    'PGAIDPeriodId'         =>  $this->gActivePeriod,
                    'PGAIDLocationId'       =>  $request->EMGIHLocationId,
                    'PGAIDEmployeeId'       =>  $request->EMGIHEmployeeId,
                    'PGAIDIncDedId'         =>  $value['income_id'],
                    // $incomeType = IncomeType::where('PMITHIncomeId',$value['income_id'])->get(),
// dd($incomeType),
                    // 'PGAIDDesc1'            =>  $incomeType->PMITHDesc1,
                    'PGAIDGrossAmount'      =>  $value['gross_amt'],
                    'PGAIDGrossPayment'     =>  $value['gross_payment'],
                    'PGAIDMarkForDeletion'  =>  0,
                    'PGAIDUser'             =>  Auth::user()->name,
                    'PGAIDLastCreated'      =>  now(),
                    'PGAIDLastUpdated'      =>  now(),
                ];
                $Status = AdHocIncome::create($data);

            }
        }
        // dd($Status);

       if($Status){
            return response()->json(['status' => 'success','data' =>$Status ,'updateMode' => 'Updated']);
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
    public function getEmployeeData($id)
    {
        try {
           return GeneralInfo::where('id', $id)->with('fnLocation')->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }

    public function getLocationDesc(Request $request)
    {
        // dd($request->all());

        $Employee = GeneralInfo::with('fnLocation')->where('EMGIHEmployeeId', $request->id)->first();
        $Location = [];
        $Location['locationId'] = $Employee['fnLocation']['GMLMHLocationId'];
        $Location['locationDesc'] = $Employee['fnLocation']['GMLMHDesc1'];
        return response()->json($Location);
    }

    public function getAdHocIncome(Request $request)  {
        $adHocIncome_list = AdHocIncome::where('PGAIDEmployeeId',$request->id)->get();
        dd($adHocIncome_list);
    }
}
