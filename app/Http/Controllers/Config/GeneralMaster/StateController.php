<?php

namespace App\Http\Controllers\Config\GeneralMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\State;
use App\Models\Country;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class StateController extends Controller
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
       $countries = Country::all();
       return view('config.GeneralMaster.state',
            compact('menu','UserId', 'theme_Browser1_3SIS', 'theme_Browser2_3SIS', 'theme_ContentModal1D_3SIS',
                'theme_ContentModal2D_3SIS', 'theme_Card1D_3SIS','countries'));
    }

     public function save(Request $request)
    {
        try {

            $validator = Validator::make($request->all(), [
              'GMSMHStateId' => 'required|unique:t05901l04,GMSMHStateId,'.$request->id,
              'GMSMHCountryId' => 'required'
            ]);
 
            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $state_data = new State();
                if($request->id != null){
                    //update
                   $state_data = State::find($request->id);
                }

                $state_data->GMSMHStateId= $request->GMSMHStateId;
                $state_data->GMSMHCountryId=$request->GMSMHCountryId;
                $state_data->GMSMHDesc1=$request->GMSMHDesc1;
                $state_data->GMSMHDesc2=$request->GMSMHDesc2;
                $state_data->GMSMHUser=Auth::user()->name;
                // GMSMHUser=Auth::user()->id;
                $state_data->GMSMHLastCreated =now();
                $state_data->GMSMHLastUpdated =now();
                $state_data->save();


               if($state_data){
                       return response()->json(['status' => 'success','data' =>$state_data]);
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

    public function state_list()
    {
        $state_list = State::where('GMSMHMarkForDeletion','!=',1)->with('fnCountry')->get();
        return $this->TableActionTrait($state_list);     
    }

    public function DeleteList()
    {
        $delete_list = State::where('GMSMHMarkForDeletion',1)->with('fnCountry')->get();
        return $this->TableActionRestoreTrait($delete_list);     
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = State::where('id',$request->id)->first();
            // $fetchData = State::with('fnCountry')->where('id',$request->id)->first();
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
         $state = State::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $state->GMSMHMarkForDeletion = 1 :$state->GMSMHMarkForDeletion = 0;
            $state->save();
            if($state){
                   return response()->json(['status' => 'success','data' =>$state]);
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
            $fetchData = State::whereaaa('id',$request->id)->first();
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

}
