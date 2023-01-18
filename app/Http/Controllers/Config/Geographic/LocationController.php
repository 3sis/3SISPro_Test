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
use App\Models\Config\Geographic\Location;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class LocationController extends Controller
{
    use CommonDataTables,Error;
    protected  $gCompanyId = '1000';

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
       $city_list = City::all();
       return view('config.Geographic.location',
            compact('menu','UserId', 'theme_Browser1_3SIS', 'theme_Browser2_3SIS', 'theme_ContentModal1D_3SIS',
                'theme_ContentModal2D_3SIS', 'theme_Card1D_3SIS','city_list'));
    }

     public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $request->merge(['GMLMHCompanyId' => $this->gCompanyId]);

            $validator = Validator::make($request->all(), [
              'GMLMHLocationId' => 'required|min:2|max:10|unique:t05901l06,GMLMHLocationId,'.$request->id,
              'GMLMHDesc1'      => 'required|max:100',
              'GMLMHDesc2'      => 'max:200',
              'GMLMHCityId'     => 'required'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $location_data = new Location();
                if($request->id != null){
                    //update
                   $location_data = Location::find($request->id);
                }

                $location_data->GMLMHCompanyId= $request->GMLMHCompanyId;
                $location_data->GMLMHLocationId= $request->GMLMHLocationId;
                $location_data->GMLMHCityId=$request->GMLMHCityId;
                $location_data->GMLMHStateId=$request->GMLMHStateId;
                $location_data->GMLMHCountryId=$request->GMLMHCountryId;
                $location_data->GMLMHDesc1=$request->GMLMHDesc1;
                $location_data->GMLMHDesc2=$request->GMLMHDesc2;
                $location_data->GMLMHDesc2=$request->GMLMHDesc2;
                $location_data->GMLMHBiDesc=$request->GMLMHBiDesc;
                $location_data->GMLMHUser=Auth::user()->name;
                // GMLMHUser=Auth::user()->id;
                $location_data->GMLMHLastCreated =now();
                $location_data->GMLMHLastUpdated =now();
                $location_data->save();


               if($location_data){
                       return response()->json(['status' => 'success','data' =>$location_data ,'updateMode' => 'Updated']);
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

    public function location_list()
    {
        $location_list = Location::where('GMLMHMarkForDeletion','!=',1)->where('t05901L06.GMLMHCompanyId', $this->gCompanyId)->with('fnCity','fnState','fnCountry')->get();
        // dd($location_list);
        return $this->TableActionTrait($location_list);
    }

    public function DeleteList()
    {
        $delete_list = Location::where('GMLMHMarkForDeletion',1)->with('fnCity','fnState','fnCountry')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = Location::where('id',$request->id)->with('fnCity','fnState','fnCountry')->first();
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
         $city = Location::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $city->GMLMHMarkForDeletion = 1 :$city->GMLMHMarkForDeletion = 0;
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
            $fetchData = Location::whereaaa('id',$request->id)->first();
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
    public function getCityDesc(Request $request)
    {
        $City_Detail = City::with('fnState','fnCountry')->where('GMCTHCityId', $request->id)->first();
        // dd($City_Detail);
        $CityDetail = [];
        $CityDetail['StateId'] = $City_Detail['fnState']['GMSMHStateId'];
        $CityDetail['StateDesc'] = $City_Detail['fnState']['GMSMHDesc1'];
        $CityDetail['CountryId'] = $City_Detail['fnCountry']['GMCMHCountryId'];
        $CityDetail['CountryDesc'] = $City_Detail['fnCountry']['GMCMHDesc1'];
        return response()->json($CityDetail);
    }
}


