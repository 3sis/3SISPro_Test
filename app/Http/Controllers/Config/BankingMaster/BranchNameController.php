<?php

namespace App\Http\Controllers\Config\BankingMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\BankingMaster\BankName;
use App\Models\Config\BankingMaster\BranchName;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class BranchNameController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getBranchData(Crypt::decryptString($request->id));
        }
        $bank_list = BankName::all();
        return view('config.BankingMaster.BranchName',compact( 'action','edit_data','bank_list'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'BMBRHBranchId'     => 'required|min:2|max:10|unique:t05902l02,BMBRHBranchId,'.$request->id,
              'BMBRHDesc1'      => 'required|max:100',
              'BMBRHDesc2'      => 'max:200',
              'BMBRHBankId'    => 'required'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $branch_data = new BranchName();
                if($request->id != null){
                    //update
                   $branch_data = BranchName::find($request->id);
                }

                $branch_data->BMBRHBranchId= $request->BMBRHBranchId;
                $branch_data->BMBRHBankId=$request->BMBRHBankId;
                $branch_data->BMBRHDesc1=$request->BMBRHDesc1;
                $branch_data->BMBRHDesc2=$request->BMBRHDesc2;
                $branch_data->BMBRHIFSCId=$request->BMBRHIFSCId;
                $branch_data->BMBRHUser=Auth::user()->name;
                $branch_data->BMBRHLastCreated =now();
                $branch_data->BMBRHLastUpdated =now();
                $branch_data->save();


               if($branch_data){
                       return response()->json(['status' => 'success','data' =>$branch_data ,'updateMode' => 'Updated']);
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

    public function BranchName_list()
    {
        $branch_list = BranchName::where('BMBRHMarkForDeletion','!=',1)->with('fnBankName')->get();
        return $this->TableActionTrait('branchName',$branch_list);
    }

    public function DeleteList()
    {
        $delete_list = BranchName::where('BMBRHMarkForDeletion',1)->with('fnBankName','fnCountry')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = BranchName::where('id',$request->id)->with('fnBankName')->first();
            // dd($fetchData);
            if($fetchData){
                   return response()->json(['status' => 'success','data' =>$fetchData]);
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
    public function Restore_Delete_Data(Request $request)
    {
    try {
         $branch = BranchName::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $branch->BMBRHMarkForDeletion = 1 :$branch->BMBRHMarkForDeletion = 0;
            $branch->save();
            if($branch){
                   return response()->json(['status' => 'success','data' =>$branch]);
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
    public function getBranchData($id)
    {
        try {
           return BranchName::where('id', $id)->with('fnBankName')->first();
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
