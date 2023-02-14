<?php

namespace App\Http\Controllers\Config\BankingMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\BankingMaster\PaymentMode;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class PaymentModeController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getPaymentModeData(Crypt::decryptString($request->id));
        }
        return view('config.BankingMaster.PaymentMode',compact( 'action','edit_data'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'BMPMHPaymentModeId'     => 'required|min:2|max:10|unique:t05902l04,BMPMHPaymentModeId,'.$request->id,
              'BMPMHDesc1'      => 'required|max:100',
              'BMPMHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $paymentMode_data = new PaymentMode();
                if($request->id != null){
                    //update
                   $paymentMode_data = PaymentMode::find($request->id);
                }

                $paymentMode_data->BMPMHPaymentModeId= $request->BMPMHPaymentModeId;
                $paymentMode_data->BMPMHDesc1=$request->BMPMHDesc1;
                $paymentMode_data->BMPMHDesc2=$request->BMPMHDesc2;
                $paymentMode_data->BMPMHUser=Auth::user()->name;
                $paymentMode_data->BMPMHLastCreated =now();
                $paymentMode_data->BMPMHLastUpdated =now();
                $paymentMode_data->save();


               if($paymentMode_data){
                       return response()->json(['status' => 'success','data' =>$paymentMode_data ,'updateMode' => 'Updated']);
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

    public function paymentMode_list()
    {
        $paymentMode_list = PaymentMode::where('BMPMHMarkForDeletion','!=',1)->get();
        return $this->TableActionTrait('paymentMode',$paymentMode_list);
    }

    public function DeleteList()
    {
        $delete_list = PaymentMode::where('BMPMHMarkForDeletion',1)->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = PaymentMode::where('id',$request->id)->first();
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
         $paymentMode = PaymentMode::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $paymentMode->BMPMHMarkForDeletion = 1 :$paymentMode->BMPMHMarkForDeletion = 0;
            $paymentMode->save();
            if($paymentMode){
                   return response()->json(['status' => 'success','data' =>$paymentMode]);
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
    public function getPaymentModeData($id)
    {
        try {
           return PaymentMode::where('id', $id)->first();
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
