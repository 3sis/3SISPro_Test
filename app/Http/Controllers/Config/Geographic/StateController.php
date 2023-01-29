<?php

namespace App\Http\Controllers\Config\Geographic;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\Config\Geographic\State;
use App\Models\Config\Geographic\Country;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use Illuminate\Support\Facades\Crypt;
use App\Traits\Error;
use DataTables;

class StateController extends Controller
{
    use CommonDataTables;
    use Error;
    public function index(Request $request)
    {  
        $manage = $request->manage;
        $id = $request->id;
        $edit_data = '';
        if($id>0){
           $edit_data = $this->getStateData(Crypt::decryptString($id));
        }
        $countries = Country::all();
        return view('config.Geographic.state.index1',compact( 'manage','id','edit_data','countries'));
    }

     public function save(Request $request)
     {
         try {
             $validator = Validator::make($request->all(), [
               'GMSMHStateId'    => 'required|min:2|max:10|unique:t05901l04,GMSMHStateId,'.$request->id,
               'GMSMHDesc1'      => 'required|max:100',
               'GMSMHDesc2'      => 'max:200',
               'GMSMHCountryId'  => 'required'
             ]);

             if ($validator->fails()) {
                 return response()->json(['errors'=>$validator->errors()]);
             }
             $state_data = new State();
             if ($request->id != null) {
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


             if ($state_data) {
                 return response()->json(['status' => 'success','data' =>$state_data ,'updateMode' => 'Updated']);
             } else {
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
        $state_list = State::where('GMSMHMarkForDeletion', '!=', 1)->with('fnCountry')->get();
        return $this->TableActionTrait($state_list);
    }

    public function DeleteList()
    {
        $delete_list = State::where('GMSMHMarkForDeletion', 1)->with('fnCountry')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
        try {
            $fetchData = State::where('id', $request->id)->first();
            // $fetchData = State::with('fnCountry')->where('id',$request->id)->first();
            if ($fetchData) {
                return response()->json(['status' => 'success','data' =>$fetchData]);
            } else {
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
            $request->action == 'delete' ? $state->GMSMHMarkForDeletion = 1 : $state->GMSMHMarkForDeletion = 0;
            $state->save();
            if ($state) {
                return response()->json(['status' => 'success','data' =>$state]);
            } else {
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
            $fetchData = State::whereaaa('id', $request->id)->first();
            if ($fetchData) {
                return response()->json(['status' => 'success','data' =>$fetchData]);
            } else {
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
    public function getStateData($id)
    {
        try {
           return State::where('id', $id)->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }

    public function report(Request $request)
    {
        $state = State::with('fnCountry')->get();
        if ($state != '[]') {
          if($request->type == 'excel'){
            $export_data = "State List -\n\n";
            $export_data .= "Id\tState\tDescription1\tDescription2\tCountry\tUser\n";
                // $i = 1;
                foreach ($state as $row) {
                    $lineData = array($row->id, $row->GMSMHStateId, $row->GMSMHDesc1, $row->GMSMHDesc2, $row->GMSMHCountryId, $row->GMSMHUser);
                    $export_data .= implode("\t", array_values($lineData)) . "\n";
                }
                return response($export_data)
                ->header("Content-Type", "application/vnd.ms-excel")
                ->header("Content-Disposition", "attachment;filename=state_list.xls");
            }
          if($request->type == 'pdf'){

            $mpdf = new \Mpdf\Mpdf();
            // $mpdf->WriteHTML('<h1>Hello world!</h1>');
            $mpdf->WriteHTML(view('report.state_list', compact('state')));
            return ($mpdf->Output('state_list.pdf', 'I'));

          }
        }

    }
}
