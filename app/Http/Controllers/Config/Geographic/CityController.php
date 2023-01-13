<?php

namespace App\Http\Controllers\Config\Geographic;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\Geographic\City;
use App\Models\Config\Geographic\State;
use App\Models\Config\Geographic\Country;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class CityController extends Controller
{
    use CommonDataTables,Error;
    public function menu()
    {
        return $menu = t92::tree();
    }
    public function index()
    {
       // $data = $this->dataTableXLSchemaTrait();
       $menu = $this->menu();
       $theme_Browser1_3SIS = 'purple_Browser1D_3SIS';
       $theme_Browser2_3SIS = 'purple_Browser2D_3SIS';
       $theme_ContentModal1D_3SIS = 'purple_ContentModal1D_3SIS';
       $theme_ContentModal2D_3SIS = 'purple_ContentModal2D_3SIS';
       $theme_Card1D_3SIS = 'purple_Card1D_3SIS';

       $UserId = Auth::user()->name;
       // $UserId = 'Admin_Root';
       $state_list = State::all();
       return view('config.Geographic.city',
            compact('menu','UserId', 'theme_Browser1_3SIS', 'theme_Browser2_3SIS', 'theme_ContentModal1D_3SIS',
                'theme_ContentModal2D_3SIS', 'theme_Card1D_3SIS','state_list'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $validator = Validator::make($request->all(), [
              'GMCTHCityId'     => 'required|min:2|max:10|unique:t05901l05,GMCTHCityId,'.$request->id,
              'GMCTHDesc1'      => 'required|max:100',
              'GMCTHDesc2'      => 'max:200',
              'GMCTHStateId'    => 'required'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $city_data = new City();
                if($request->id != null){
                    //update
                //    $city_data = City::find($request->id);
                }

                $city_data->GMCTHCityId= $request->GMCTHCityId;
                $city_data->GMCTHStateId=$request->GMCTHStateId;
                $city_data->GMCTHCountryId=$request->GMCTHCountryId;
                $city_data->GMCTHDesc1=$request->GMCTHDesc1;
                $city_data->GMCTHDesc2=$request->GMCTHDesc2;
                $city_data->GMCTHUser=Auth::user()->name;
                // GMCTHUser=Auth::user()->id;
                $city_data->GMCTHLastCreated =now();
                $city_data->GMCTHLastUpdated =now();
                $city_data->save();


               if($city_data){
                       return response()->json(['status' => 'success','data' =>$city_data ,'updateMode' => 'Updated']);
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

    public function city_list()
    {
        $city_list = City::where('GMCTHMarkForDeletion','!=',1)->with('fnState','fnCountry')->get();
        // dd($city_list);
        return $this->TableActionTrait($city_list);
    }

    public function DeleteList()
    {
        $delete_list = City::where('GMCTHMarkForDeletion',1)->with('fnState','fnCountry')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = City::where('id',$request->id)->with('fnState','fnCountry')->first();
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
         $city = City::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $city->GMCTHMarkForDeletion = 1 :$city->GMCTHMarkForDeletion = 0;
            $city->save();
            if($city){
                   return response()->json(['status' => 'success','data' =>$city]);
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

    public function test()
    {
        try {
            $fetchData = City::whereaaa('id',$request->id)->first();
            if($fetchData){
                   return response()->json(['status' => 'success','data' =>$fetchData]);
            }else{
                   return response()->json(['status' => 'error' ]);
            }
         } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['alert-danger'=>'Something went wrong. Please try again']);
        } catch (\Exception $e) {
            Log::error($e->getmessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function getStateDesc(Request $request)
    {
        $State_Detail = State::with('fnCountry')->where('GMSMHStateId', $request->id)->first();
        // dd($State_Detail);
        $stateDetail = [];
        // $stateDetail['StateId'] = $State_Detail['GMSMHStateId'];
        // $stateDetail['StateDesc'] = $State_Detail['GMSMHDesc1'];
        $stateDetail['CountryId'] = $State_Detail['fnCountry']['GMCMHCountryId'];
        $stateDetail['CountryDesc'] = $State_Detail['fnCountry']['GMCMHDesc1'];
        return response()->json($stateDetail);
    }
}

