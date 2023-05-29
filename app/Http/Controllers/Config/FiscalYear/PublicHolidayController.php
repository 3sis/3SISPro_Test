<?php

namespace App\Http\Controllers\Config\FiscalYear;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\FiscalYear\PublicHolidayHeader;
use App\Models\Config\FiscalYear\PublicHolidayDetail;
use App\Models\Config\FiscalYear\Calendar;
use App\Models\Config\FiscalYear\FiscalYear;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Validation\Rule;
use Illuminate\Support\Arr;
use Carbon\Carbon;
use Schema;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class PublicHolidayController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $publicHolidayDetail_list = [];
        $action = $request->action;
        $calendar_list = Calendar::all();
        $fiscalYear_list = FiscalYear::all();
        // $publicHolidayDetail_list = PublicHolidayDetail::where('FYPHDMarkForDeletion','!=',1)->get();



        // $publicHolidayDetail_list = PublicHolidayDetail::where('idH', $request->id)->all();

        if(!empty($request->id)){
          $edit_data = $this->getPublicHolidayData(Crypt::decryptString($request->id));
          $publicHolidayDetail_list = PublicHolidayDetail::where('idH', Crypt::decryptString($request->id))->get();

        }
        return view('config.FiscalYear.publicHoliday',compact( 'action','edit_data','calendar_list','fiscalYear_list','publicHolidayDetail_list'));
    }
    public function publicHoliday_list()
    {
        $publicHoliday_list = PublicHolidayHeader::where('FYPHHMarkForDeletion','!=',1)->with('fnCalendar','fnFy')->get();
        return $this->TableActionTrait('publicHoliday',$publicHoliday_list);
    }
    public function publicHolidayDetail_list()
    {
        $publicHolidayDetail_list = PublicHolidayDetail::where('FYPHDMarkForDeletion','!=',1)->get();
        // dd($publicHolidayDetail_list);
        // return $publicHolidayDetail_list;
        return $this->TableActionTrait('publicHoliday',$publicHolidayDetail_list);
    }
    public function save(Request $request)
    {
        try {
            //Duplicat date/FY
            //blank desc
            // Date range validation
            $validator = Validator::make($request->all(), [
                'FYPHHCalendarId'          => 'required',
                'FYPHHFiscalYearId' => [
                    'required',
                    // 'unique:t05903l04,FYPHHCalendarId,FYPHHFiscalYearId'.$request->id,
                    //Duplicat FY
                    Rule::unique('t05903l04')
                        ->ignore($request->id)
                        ->where('FYPHHCalendarId', $request->FYPHHCalendarId)
                        ->where('FYPHHFiscalYearId','!=', $request->FYPHHFiscalYearId)
                ],
                'holidayDetails.*.date' => [
                    'required',
                    'after_or_equal:'.$request->FYFYHStartDate,
                    'before_or_equal:'.$request->FYFYHEndDate,
                ],
                'holidayDetails.*.desc' => 'required',
            ],
        );
            if ($validator->fails()) {
                return response()->json(['status' => 'error','errors'=>$validator->errors()]);
            }
                $HeaderTable = new PublicHolidayHeader();
                if($request->id != null){
                   $HeaderTable = PublicHolidayHeader::find($request->id);
                }else{
                    $HeaderTable->FYPHHCalendarId         =   $request->FYPHHCalendarId;
                    $HeaderTable->FYPHHFiscalYearId       =   $request->FYPHHFiscalYearId;
                    $HeaderTable->FYPHHLastCreated        =   now();
                }
                    $HeaderTable->FYPHHMarkForDeletion   =   0;
                    $HeaderTable->FYPHHUser              =   Auth::user()->name;
                    $HeaderTable->FYPHHLastUpdated       =   now();
                    $HeaderTable->save();

                 $lastInserted_id  = $HeaderTable->id;


         // Remove Record for Datatable
        if($request->action == 'edit'){
            $DetailIds = PublicHolidayDetail::pluck('id')->all();
            foreach($DetailIds as $key => $value){
                if (!in_array($value, array_keys($request->holidayDetails))) {
                    $DetailTable = PublicHolidayDetail::find($value);
                    $DetailTable->delete();
                }
            }
        }

        // Create and Update Record Datatable
        foreach ($request->holidayDetails as $key => $value) {
            if(isset($value['id'])){
                PublicHolidayDetail::where('id', '=',$value['id'])->update([
                'idH' => $lastInserted_id,
                'FYPHDHolidayType'    =>  'PH',
                'FYPHDHolidayDate'    =>  $value['date'],
                'FYPHDDesc1'          =>  $value['desc']]);
            }else{
                $data= ['idH' => $lastInserted_id,
                    'FYPHDCalendarId'     =>  $request->FYPHHCalendarId,
                    'FYPHDFiscalYearId'   =>  $request->FYPHHFiscalYearId,
                    'FYPHDHolidayType'=>'PH',
                    'FYPHDHolidayDate'=> $value['date'],
                    'FYPHDDesc1'=> $value['desc']];
                PublicHolidayDetail::create($data);
            }
        }


       if($HeaderTable){
            return response()->json(['status' => 'success','data' =>$HeaderTable ,'updateMode' => 'Updated']);
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
    public function detail_save(Request $request)
    {
        echo 'Data Submitted.';
        dd($request->all());
        // return $request;
    }
    public function getPublicHolidayData($id)
    {
        try {
           return PublicHolidayHeader::where('id', $id)->with('fnCalendar','fnFy')->first();
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
}
