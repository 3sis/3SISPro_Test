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
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class BankNameController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getBankNameData(Crypt::decryptString($request->id));
        }
        return view('config.BankingMaster.BankName',compact( 'action','edit_data'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'BMBNHBankId'     => 'required|min:2|max:10|unique:t05902l01,BMBNHBankId,'.$request->id,
              'BMBNHDesc1'      => 'required|max:100',
              'BMBNHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $bankName_data = new BankName();
                if($request->id != null){
                    //update
                   $bankName_data = BankName::find($request->id);
                }

                $bankName_data->BMBNHBankId= $request->BMBNHBankId;
                $bankName_data->BMBNHDesc1=$request->BMBNHDesc1;
                $bankName_data->BMBNHDesc2=$request->BMBNHDesc2;
                $bankName_data->BMBNHUser=Auth::user()->name;
                // BMBNHUser=Auth::user()->id;
                $bankName_data->BMBNHLastCreated =now();
                $bankName_data->BMBNHLastUpdated =now();
                $bankName_data->save();


               if($bankName_data){
                       return response()->json(['status' => 'success','data' =>$bankName_data ,'updateMode' => 'Updated']);
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

    public function bankName_list()
    {
        $bankName_list = BankName::where('BMBNHMarkForDeletion','!=',1)->get();
        return $this->TableActionTrait('bankName',$bankName_list);
    }

    public function DeleteList()
    {
        $delete_list = BankName::where('BMBNHMarkForDeletion',1)->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = BankName::where('id',$request->id)->first();
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
         $bankName = BankName::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $bankName->BMBNHMarkForDeletion = 1 :$bankName->BMBNHMarkForDeletion = 0;
            $bankName->save();
            if($bankName){
                   return response()->json(['status' => 'success','data' =>$bankName]);
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
    public function getBankNameData($id)
    {
        try {
           return BankName::where('id', $id)->first();
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
