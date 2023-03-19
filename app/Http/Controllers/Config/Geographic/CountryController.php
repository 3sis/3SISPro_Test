<?php

namespace App\Http\Controllers\Config\Geographic;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\Geographic\Country;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class CountryController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getCountryData(Crypt::decryptString($request->id));
        }
        return view('config.Geographic.country',compact( 'action','edit_data'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'GMCMHCountryId'     => 'required|min:2|max:10|unique:t05901l03,GMCMHCountryId,'.$request->id,
              'GMCMHDesc1'      => 'required|max:100',
              'GMCMHDesc2'      => 'max:200'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $country_data = new Country();
                if($request->id != null){
                    //update
                   $country_data = Country::find($request->id);
                }

                $country_data->GMCMHCountryId= $request->GMCMHCountryId;
                $country_data->GMCMHDesc1=$request->GMCMHDesc1;
                $country_data->GMCMHDesc2=$request->GMCMHDesc2;
                $country_data->GMCMHUser=Auth::user()->name;
                // GMCMHUser=Auth::user()->id;
                $country_data->GMCMHLastCreated =now();
                $country_data->GMCMHLastUpdated =now();
                $country_data->save();


               if($country_data){
                       return response()->json(['status' => 'success','data' =>$country_data ,'updateMode' => 'Updated']);
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

    public function country_list()
    {
        $country_list = Country::where('GMCMHMarkForDeletion','!=',1)->get();
        return $this->TableActionTrait('country',$country_list);
    }

    public function DeleteList()
    {
        $delete_list = Country::where('GMCMHMarkForDeletion',1)->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = Country::where('id',$request->id)->first();
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
         $country = Country::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $country->GMCMHMarkForDeletion = 1 :$country->GMCMHMarkForDeletion = 0;
            $country->save();
            if($country){
                   return response()->json(['status' => 'success','data' =>$country]);
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
    public function getCountryData($id)
    {
        try {
           return Country::where('id', $id)->first();
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


