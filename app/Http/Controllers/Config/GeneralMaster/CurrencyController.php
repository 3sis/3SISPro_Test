<?php

namespace App\Http\Controllers\Config\GeneralMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\GeneralMaster\Currency;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class CurrencyController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getCurrencyData(Crypt::decryptString($request->id));
        }
        return view('config.GeneralMaster.currency',compact( 'action','edit_data'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'GMCRHCurrencyId'     => 'required|min:2|max:10|unique:t05901l07,GMCRHCurrencyId,'.$request->id,
              'GMCRHDesc1'      => 'required|max:100',
              'GMCRHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $currency_data = new Currency();
                if($request->id != null){
                    //update
                   $currency_data = Currency::find($request->id);
                }

                $currency_data->GMCRHCurrencyId= $request->GMCRHCurrencyId;
                $currency_data->GMCRHDesc1=$request->GMCRHDesc1;
                $currency_data->GMCRHDesc2=$request->GMCRHDesc2;
                $currency_data->GMCRHUser=Auth::user()->name;
                // GMCRHUser=Auth::user()->id;
                $currency_data->GMCRHLastCreated =now();
                $currency_data->GMCRHLastUpdated =now();
                $currency_data->save();


               if($currency_data){
                       return response()->json(['status' => 'success','data' =>$currency_data ,'updateMode' => 'Updated']);
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

    public function currency_list()
    {
        $currency_list = Currency::where('GMCRHMarkForDeletion','!=',1)->get();
        return $this->TableActionTrait('currency',$currency_list);
    }

    public function DeleteList()
    {
        $delete_list = Currency::where('GMCRHMarkForDeletion',1)->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = Currency::where('id',$request->id)->first();
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
         $currency = Currency::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $currency->GMCRHMarkForDeletion = 1 :$currency->GMCRHMarkForDeletion = 0;
            $currency->save();
            if($currency){
                   return response()->json(['status' => 'success','data' =>$currency]);
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
    public function getCurrencyData($id)
    {
        try {
           return Currency::where('id', $id)->first();
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
