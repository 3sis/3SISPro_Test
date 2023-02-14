<?php

namespace App\Http\Controllers\Config\BankingMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\BankingMaster\AcctType;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class AcctTypeController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        $AcctType_list = AcctType::all();
        // dd($AcctType_list);
        if(!empty($request->id)){
          $edit_data = $this->getAcctTypeData(Crypt::decryptString($request->id));
        }
        return view('config.BankingMaster.account_type',compact( 'action','edit_data'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'BMATHAcctId'     => 'required|min:2|max:10|unique:t05902l03,BMATHAcctId,'.$request->id,
              'BMATHDesc1'      => 'required|max:100',
              'BMATHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $acctType_data = new AcctType();
                if($request->id != null){
                    //update
                   $acctType_data = AcctType::find($request->id);
                }

                $acctType_data->BMATHAcctId= $request->BMATHAcctId;
                $acctType_data->BMATHDesc1=$request->BMATHDesc1;
                $acctType_data->BMATHDesc2=$request->BMATHDesc2;
                $acctType_data->BMATHUser=Auth::user()->name;
                // BMATHUser=Auth::user()->id;
                $acctType_data->BMATHLastCreated =now();
                $acctType_data->BMATHLastUpdated =now();
                $acctType_data->save();


               if($acctType_data){
                       return response()->json(['status' => 'success','data' =>$acctType_data ,'updateMode' => 'Updated']);
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

    public function acctType_list()
    {
        $acctType_list = AcctType::where('BMATHMarkForDeletion','!=',1)->get();
        return $this->TableActionTrait('acctType',$acctType_list);
    }

    public function DeleteList()
    {
        $delete_list = AcctType::where('BMATHMarkForDeletion',1)->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = AcctType::where('id',$request->id)->first();
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
         $acctType = AcctType::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $acctType->BMATHMarkForDeletion = 1 :$acctType->BMATHMarkForDeletion = 0;
            $acctType->save();
            if($acctType){
                   return response()->json(['status' => 'success','data' =>$acctType]);
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
    public function getAcctTypeData($id)
    {
        try {
           return AcctType::where('id', $id)->first();
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
