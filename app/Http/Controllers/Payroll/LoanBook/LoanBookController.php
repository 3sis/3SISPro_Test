<?php

namespace App\Http\Controllers\Payroll\LoanBook;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Payroll\LoanBook\LoanBookHeader;
use App\Models\Payroll\LoanBook\LoanBookDetail;
use App\Models\Payroll\EmployeeMaster\GeneralInfo;
use App\Models\Config\IncomeDeductionType\DeductionType;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Validation\Rule;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use Schema;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class LoanBookController extends Controller
{
    use CommonDataTables,Error;
    protected  $gCompanyId = '1000';

    public function index(Request $request)
    {
        $edit_data = '';
        $loanBookDetail_list = [];
        $action = $request->action;
        $employee_list = GeneralInfo::all();
        $deduction_list = DeductionType::where('PMDTHIsThisLoanLine',1)->get();
        // $dynamicValue = "2023-06-30"; // Value to be updated

        if(!empty($request->id)){
          $edit_data = $this->getLoanBookData(Crypt::decryptString($request->id));
          $loanBookDetail_list = LoanBookDetail::where('idH', Crypt::decryptString($request->id))->get();

        }
        return view('payroll.LoanBook.loanBook',compact( 'action','edit_data','employee_list','deduction_list','loanBookDetail_list'));
    }
    public function loanBook_list()
    {
        $loanBook_list = LoanBookHeader::where('LALBHMarkForDeletion','!=',1)->where('LALBHCompanyId', $this->gCompanyId)->with('fnEmployee','fnLocation','fnDeduction')->get();
        return $this->TableActionTrait('loanBook',$loanBook_list);
    }
    public function loanBookDetail_list()
    {
        $loanBookDetail_list = LoanBookDetail::where('LALBDMarkForDeletion','!=',1)->get();
        // dd($loanBookDetail_list);
        // return $loanBookDetail_list;
        return $this->TableActionTrait('loanBook',$loanBookDetail_list);
    }
    public function save(Request $request)
    {
        // dd($request->all());
        try {
            $request->merge(['LALBHCompanyId' => $this->gCompanyId]);

            $validator = Validator::make($request->all(), [
                'LALBHEmployeeId'           => 'required',
                'LALBHDeductionId'          => 'required',
                'LALBHLoanAmount'           => 'required|gt:0',
                'LALBHNoOfEMI'              => 'required|gt:0',
                'LALBHStartDateEMI'         => 'required|before:LALBHEndDateEMI',
                'LALBHEndDateEMI'           => 'required|after:LALBHStartDateEMI',

                'loanDetails.*.emi_date' => [
                    'required',

                    // Rule::unique('t11130l0111')
                    //     // ->ignore($request->id)
                    //     ->where('LALBDLoanId', $request->LALBHLoanId)
                    //     ->where('LALBDEMIDate','!=', 'loanDetails.*.emi_date')
                ],
                'loanDetails.*.emi_amt' => 'required',
            ],
        );
            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }
                $LoanId = Carbon::now()->timestamp;
                $HeaderTable = new LoanBookHeader();
                if($request->id != null){
                   $HeaderTable = LoanBookHeader::find($request->id);
                   $LoanId = $HeaderTable->LALBHLoanId ;
                }
                    $HeaderTable->LALBHLoanId           =   $LoanId;
                    $HeaderTable->LALBHCompanyId        =   $request->LALBHCompanyId;
                    $HeaderTable->LALBHLocationId       =   $request->LALBHLocationId;
                    $HeaderTable->LALBHEmployeeId       =   $request->LALBHEmployeeId;
                    $HeaderTable->LALBHDeductionId      =   $request->LALBHDeductionId;
                    $HeaderTable->LALBHLoanAmount       =   $request->LALBHLoanAmount;
                    $HeaderTable->LALBHInterestAmount   =   $request->LALBHInterestAmount;
                    $HeaderTable->LALBHRecoveryAmount   =   $request->LALBHRecoveryAmount;
                    $HeaderTable->LALBHNoOfEMI          =   $request->LALBHNoOfEMI;
                    $HeaderTable->LALBHEMIAmount        =   $request->LALBHEMIAmount;
                    $HeaderTable->LALBHTotalDeduction   =   $request->LALBHTotalDeduction;

                    $HeaderTable->LALBHStartDateEMI     =   date("Y-m-d", strtotime($request->LALBHStartDateEMI));
                    $HeaderTable->LALBHEndDateEMI       =   date("Y-m-d", strtotime($request->LALBHEndDateEMI));
                    $HeaderTable->LALBHPaidEMI          =   $request->LALBHPaidEMI;
                    $HeaderTable->LALBHBalanceEMI       =   $request->LALBHBalanceEMI;
                    $HeaderTable->LALBHPaidAmount       =   $request->LALBHPaidAmount;
                    $HeaderTable->LALBHBalanceAmount    =   $request->LALBHBalanceAmount;
                    $HeaderTable->LALBHLoanPaidFully    =   $request->LALBHLoanPaidFully;
                    $HeaderTable->LALBHLastCreated      =   now();
                    $HeaderTable->LALBHMarkForDeletion  =   0;
                    $HeaderTable->LALBHUser             =   Auth::user()->name;
                    $HeaderTable->LALBHLastUpdated      =   now();
                    $HeaderTable->save();

                 $lastInserted_id  = $HeaderTable->id;


         // Remove Record for Datatable
        if($request->action == 'edit'){
            $DetailIds = LoanBookDetail::where('idH', $lastInserted_id)->pluck('id');
            foreach($DetailIds as $key => $value){
                if (!in_array($value, array_keys($request->loanDetails))) {
                    $DetailTable = LoanBookDetail::find($value);
                    $DetailTable->delete();
                }
            }
        }
        // Create and Update Record Datatable
        foreach ($request->loanDetails as $key => $value) {
            if(isset($value['id'])){
                LoanBookDetail::where('id', '=',$value['id'])->update([
                'idH' => $lastInserted_id,
                'LALBDEMIAmount'        =>  $value['emi_amt'],
                'LALBDPaidAmount'       =>  $value['paid_amt'],
                'LALBDEMIDate'          =>  date('Y-m-01',strtotime($value['emi_date'])),
                ]);

            }else{
                $data= ['idH' => $lastInserted_id,
                    'LALBDLoanId'       =>  $LoanId,
                    'LALBDCompanyId'    =>  $request->LALBHCompanyId,
                    'LALBDLocationId'   =>  $request->LALBHLocationId,
                    'LALBDEmployeeId'   =>  $request->LALBHEmployeeId,
                    'LALBDDeductionId'  =>  $request->LALBHDeductionId,
                    'LALBDEMIAmount'    =>  $value['emi_amt'],
                    'LALBDPaidAmount'   =>  $value['paid_amt'],
                    'LALBDEMIDate'      =>  date('Y-m-01',strtotime($value['emi_date'])),
                ];
                LoanBookDetail::create($data);
            }
        }


       if($HeaderTable){
            return response()->json(['status' => 'success','data' =>$HeaderTable ,'updateMode' => 'Updated']);
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
    public function getLoanBookData($id)
    {
        try {
           return LoanBookHeader::where('id', $id)->with('fnEmployee','fnLocation','fnDeduction')->first();
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
}
