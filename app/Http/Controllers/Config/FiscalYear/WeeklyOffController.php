<?php

namespace App\Http\Controllers\Config\FiscalYear;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\FiscalYear\WeeklyOffHeader;
use App\Models\Config\FiscalYear\WeeklyOffDetail;
use App\Models\Config\FiscalYear\Calendar;
use App\Models\Config\FiscalYear\FiscalYear;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use Schema;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;
class WeeklyOffController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        $calendar_list = Calendar::all();
        $fiscalYear_list = FiscalYear::all();
        // $columns = Schema::getColumnListing('t05903l0311'); // users table
        // dd($columns); // dump the result and die
        $weeklyOffDetail_list = new WeeklyOffDetail();
        // dd($weeklyOffDetail_list);
        $weekList = ['Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday'];
        foreach ($weekList as $day) {
            WeeklyOffDetail::create([
                'FYWODDayId' =>Carbon::parse($day)->dayOfWeek,
                'FYWODDesc1' => $day,

                'FYWODCalendarId' => $day,
                'FYWODFiscalYearId' => '2023',
                'FYWODHolidayType' => 'WO',
                'idH' => Carbon::parse($day)->dayOfWeek,
                'FYWODMarkForDeletion'   =>   0,
                    'FYWODUser'              =>   Auth::user()->name,
                    'FYWODLastUpdated'       =>   now()

            ]);

            // $weeklyOffDetail_list->FYWODDayId =  Carbon::parse($day)->dayOfWeek;
            // $weeklyOffDetail_list->FYWODDesc1 = $day;
        }
        // dd($weeklyOffDetail_list);
        // // $weeklyOffDetail_list = new WeeklyOffDetail();
        $weeklyOffDetail_list = WeeklyOffDetail::get()->map(function($item, $key) {
            $item->FYWODDayId = $item->FYWODDayId . '1' . '2'. '3'. '4'. '5'. '6'. '7';
            $item->FYWODDesc1 = $item->FYWODDesc1 . 'Monday' . 'Tuesday' . 'Wednesday' . 'Thursday' . 'Friday' . 'Saturday' . 'Sunday';
            return $item;
        });

        $temp_table = $request->session()->get('temp_table', $weeklyOffDetail_list);

        if(!empty($request->id)){
          $edit_data = $this->getWeeklyOffData(Crypt::decryptString($request->id));
        }
        return view('config.FiscalYear.weeklyOff',compact( 'action','edit_data','calendar_list','fiscalYear_list','temp_table'));
    }
    public function weeklyOff_list()
    {
        $weeklyOff_list = WeeklyOffHeader::where('FYWOHMarkForDeletion','!=',1)->with('fnCalendar','fnFy')->get();
        return $this->TableActionTrait('weeklyOff',$weeklyOff_list);
    }
    public function weeklyOffDetail_list()
    {
        $weeklyOffDetail_list = WeeklyOffDetail::where('FYWODMarkForDeletion','!=',1)->get();
        // dd($weeklyOffDetail_list);
        return $this->TableActionTrait('weeklyOff',$weeklyOffDetail_list);
    }
    public function getWeeklyOffData($id)
    {
        try {
           return WeeklyOffHeader::where('id', $id)->with('fnCalendar','fnFy')->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function getFYDate(Request $request){
        $fy = FiscalYear::where('FYFYHFiscalYearId',$request->year)->first();
        $fyDate = [];
        $fyDate['fyStartDate'] = date("d-m-Y", strtotime($fy->FYFYHStartDate));
        $fyDate['fyEndDate'] = date("d-m-Y", strtotime($fy->FYFYHEndDate));
        return response()->json($fyDate);

    }

    public function save(Request $request){
        // dd($request->all());

  // "FYWOHCalendarId" => "1000"
  // "FYWOHFiscalYearId" => "2023"
  // "FYFYHStartDate" => "01-04-2023"
  // "FYFYHEndDate" => "31-03-2024"
  // "WeekDay" => array:1 [
  //   "sunday" => array:1 [
  //     "'all'" => null ]]

        try {
                $data = new WeeklyOffHeader();
                if($request->id != null){
                    //update
                   $data = WeeklyOffHeader::find($request->id);
                }else{
                    $data->FYWOHCalendarId           =   $request->FYWOHCalendarId;
                    $data->FYWOHFiscalYearId           =   $request->FYWOHFiscalYearId;
                    $data->FYWOHLastCreated       =   now();
                }

                   //array to json
                    $WeekDay_json = NULL;
                    if(isset($request->WeekDay)){
                        $WeekDay_json = json_encode($request->WeekDay);
                    }
                    $data->weekday    =   $WeekDay_json;
                    
                    $data->FYWOHMarkForDeletion   =   0;
                    $data->FYWOHUser              =   Auth::user()->name;
                    $data->FYWOHLastUpdated       =   now();
                    $data->save();
               if($data){
                    return response()->json(['status' => 'success','data' =>$data ,'updateMode' => 'Updated']);
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
}
