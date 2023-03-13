<?php

namespace App\Http\Controllers\EmployeeMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Payroll\EmployeeMaster\GeneralInfo;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

use App\Models\Config\Geographic\Location;
use App\Models\Config\Geographic\City;
use App\Models\Config\GeneralMaster\Salutation;
use App\Models\Config\Geographic\Country;
use App\Models\Config\BankingMaster\BranchName;
use App\Models\Config\BankingMaster\PaymentMode;
use App\Models\Config\GeneralMaster\Gender;
use App\Models\Config\GeneralMaster\BloodGroup;
use App\Models\Config\GeneralMaster\MaritalStatus;
use App\Models\Config\GeneralMaster\Nationality;
use App\Models\Config\GeneralMaster\PhysicalStatus;
use App\Models\Config\GeneralMaster\RaceGroup;
use App\Models\Config\GeneralMaster\ReligionMaster;
use App\Models\Payroll\EmployeeStatus\Department;
use App\Models\Payroll\EmployeeStatus\Designation;
use App\Models\Payroll\EmployeeStatus\Grade;
use App\Models\Payroll\EmployeeStatus\Type;
use App\Models\Config\FiscalYear\Calendar;
use App\Models\Config\BankingMaster\AcctType;
// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;


class GeneralInfoController extends Controller
{
    use CommonDataTables,Error;
    protected  $gCompanyId = '1000';
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getEmployeeData(Crypt::decryptString($request->id));
        }
        $salutation_list = Salutation::all();
        $location_list = Location::all();
        $city_list = City::all();
        $country_list = Country::all();
        $branch_list = BranchName::all();
        $acctType_list = AcctType::all();
        $paymentMode_list = PaymentMode::all();
        $gender_list = Gender::all();
        $bloodGroup_list = BloodGroup::all();
        $maritalStatus_list = MaritalStatus::all();
        $nationality_list = Nationality::all();
        $physicalStatus_list = PhysicalStatus::all();
        $raceGroup_list = RaceGroup::all();
        $religionMaster_list = ReligionMaster::all();
        $department_list = Department::all();
        $designation_list = Designation::all();
        $grade_list = Grade::all();
        $employmentType_list = Type::all();
        $calendar_list = Calendar::all();
        $wadge = ['Daily','Hourly'];

        return view('Payroll.EmployeeMaster.generalInfo',compact( 'action','edit_data','salutation_list',
        'location_list','city_list','country_list','branch_list','acctType_list','paymentMode_list','paymentMode_list','paymentMode_list',
        'paymentMode_list','gender_list','bloodGroup_list','maritalStatus_list','maritalStatus_list',
        'nationality_list','physicalStatus_list','raceGroup_list','religionMaster_list','department_list',
        'designation_list','grade_list','employmentType_list','calendar_list','wadge'));
    }
    public function getEmployeeData($id)
    {
        try {
           return GeneralInfo::where('id', $id)->with('fnCity','fnLocation','fnSalutation')->first();
        } catch (QueryException $e) {
            Log::error($e->getMessage());
            return response()->json(['status' => 'technical_error']);
        } catch (\Exception $e) {
            Log::error($e->getMessage());
            $this->error_log($e);
            return response()->json(['status' => 'technical_error']);
        }
    }
    public function save(Request $request)
    {
        try {
            // echo 'Data Submitted.';
            // return $request->id;
            $request->merge(['EMGIHCompId' => $this->gCompanyId]);

            $validator = Validator::make($request->all(), [
              'EMGIHEmployeeId'         => 'required|min:2|max:10|unique:T11101l01,EMGIHEmployeeId,'.$request->id,
              'EMGIHFirstName'          => 'required|max:100',
              'EMGIHEmploymentTypeId'   => 'max:200',
              'EMGIHLocationId'         => 'required'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $generalInfo = new GeneralInfo();
                if($request->id != null){
                    //update
                   $generalInfo = GeneralInfo::find($request->id);
                }
                $generalInfo->EMGIHCompId= $request->EMGIHCompId;
                $generalInfo->EMGIHLocationId= $request->EMGIHLocationId;
                $generalInfo->EMGIHEmployeeId= $request->EMGIHEmployeeId;
                $generalInfo->EMGIHSalutationId= $request->EMGIHSalutationId;
                $generalInfo->EMGIHGenderId= $request->EMGIHGenderId;
                $generalInfo->EMGIHFirstName= $request->EMGIHFirstName;
                $generalInfo->EMGIHMiddleName= $request->EMGIHMiddleName;
                $generalInfo->EMGIHLastName= $request->EMGIHLastName;
                $generalInfo->EMGIHFullName= $request->EMGIHFullName;
                $generalInfo->EMGIHDateOfBirth= $request->EMGIHDateOfBirth;
                $generalInfo->EMGIHDateOfJoining= $request->EMGIHDateOfJoining;
                $generalInfo->EMGIHDateOfConfirmation= $request->EMGIHDateOfConfirmation;
                $generalInfo->EMGIHEmploymentTypeId= $request->EMGIHEmploymentTypeId;
                $generalInfo->EMGIHGradeId= $request->EMGIHGradeId;
                $generalInfo->EMGIHDesignationId= $request->EMGIHDesignationId;
                $generalInfo->EMGIHDepartmentId= $request->EMGIHDepartmentId;
                $generalInfo->EMGIHCalendarId= $request->EMGIHCalendarId;
                $generalInfo->EMGIHNationalityId= $request->EMGIHNationalityId;
                $generalInfo->EMGIHReligionId= $request->EMGIHReligionId;
                $generalInfo->EMGIHRaceCastId= $request->EMGIHRaceCastId;
                $generalInfo->EMGIHBloodGroupId= $request->EMGIHBloodGroupId;
                $generalInfo->EMGIHPhysicalStatusId= $request->EMGIHPhysicalStatusId;
                $generalInfo->EMGIHMaritalStatusId= $request->EMGIHMaritalStatusId;
                $generalInfo->EMGIHDateOfMarriage= $request->EMGIHDateOfMarriage;
                $generalInfo->EMGIHSpouseName= $request->EMGIHSpouseName;
                $generalInfo->EMGIHOfficeEmail= $request->EMGIHOfficeEmail;
                $generalInfo->EMGIHOfficeExtension= $request->EMGIHOfficeExtension;
                $generalInfo->EMGIHOfficeLandLineNo= $request->EMGIHOfficeLandLineNo;
                $generalInfo->EMGIHOfficeMobileNo= $request->EMGIHOfficeMobileNo;
                $generalInfo->EMGIHPersonalEmail= $request->EMGIHPersonalEmail;
                $generalInfo->EMGIHPersonalPhoneNo= $request->EMGIHPersonalPhoneNo;
                $generalInfo->EMGIHPANNo= $request->EMGIHPANNo;
                $generalInfo->EMGIHAadharNo= $request->EMGIHAadharNo;
                $generalInfo->EMGIHDrivingLicenseNo= $request->EMGIHDrivingLicenseNo;
                $generalInfo->EMGIHUANNo= $request->EMGIHUANNo;
                $generalInfo->EMGIHPresentAddress1= $request->EMGIHPresentAddress1;
                $generalInfo->EMGIHPresentAddress2= $request->EMGIHPresentAddress2;
                $generalInfo->EMGIHPresentAddress3= $request->EMGIHPresentAddress3;
                $generalInfo->EMGIHPresentCityId= $request->EMGIHPresentCityId;
                $generalInfo->EMGIHPresentStateId= $request->EMGIHPresentStateId;
                $generalInfo->EMGIHPresentCountryId= $request->EMGIHPresentCountryId;
                $generalInfo->EMGIHPresentPinCode= $request->EMGIHPresentPinCode;
                $generalInfo->EMGIHPresentContactName= $request->EMGIHPresentContactName;
                $generalInfo->EMGIHSameAsPresentAdd= $request->EMGIHSameAsPresentAdd;
                $generalInfo->EMGIHPermanentAddress1= $request->EMGIHPermanentAddress1;
                $generalInfo->EMGIHPermanentAddress2= $request->EMGIHPermanentAddress2;
                $generalInfo->EMGIHPermanentAddress3= $request->EMGIHPermanentAddress3;
                $generalInfo->EMGIHPermanentCityId= $request->EMGIHPermanentCityId;
                $generalInfo->EMGIHPermanentStateId= $request->EMGIHPermanentStateId;
                $generalInfo->EMGIHPermanentCountryId= $request->EMGIHPermanentCountryId;
                $generalInfo->EMGIHPermanentPinCode= $request->EMGIHPermanentPinCode;
                $generalInfo->EMGIHPermanentContactName= $request->EMGIHPermanentContactName;
                $generalInfo->EMGIHPermanentContactNo= $request->EMGIHPermanentContactNo;
                $generalInfo->EMGIHReportingManager1Id= $request->EMGIHReportingManager1Id;
                $generalInfo->EMGIHReportingManager2Id= $request->EMGIHReportingManager2Id;
                $generalInfo->EMGIHReportingManager3Id= $request->EMGIHReportingManager3Id;
                $generalInfo->EMGIHPaymentModeId= $request->EMGIHPaymentModeId;
                $generalInfo->EMGIHBranchId= $request->EMGIHBranchId;
                $generalInfo->EMGIHBankId= $request->EMGIHBankId;
                $generalInfo->EMGIHIFSCId= $request->EMGIHIFSCId;
                $generalInfo->EMGIHAccountTypeId= $request->EMGIHAccountTypeId;
                $generalInfo->EMGIHBankAccountNo= $request->EMGIHBankAccountNo;
                $generalInfo->EMGIHOTApplicable= $request->EMGIHOTApplicable;
                $generalInfo->EMGIHOTBasisId= $request->EMGIHOTBasisId;
                $generalInfo->EMGIHIsDailyWages= $request->EMGIHIsDailyWages;
                $generalInfo->EMGIHDailyWagesId= $request->EMGIHDailyWagesId;
                $generalInfo->EMGIHPFApplicable= $request->EMGIHPFApplicable;
                $generalInfo->EMGIHPFThreshold= $request->EMGIHPFThreshold;
                $generalInfo->EMGIHPFAgreedByComp= $request->EMGIHPFAgreedByComp;
                $generalInfo->EMGIHPFCompLimit= $request->EMGIHPFCompLimit;
                $generalInfo->EMGIHPFAcctNo= $request->EMGIHPFAcctNo;
                $generalInfo->EMGIHRegimeId= $request->EMGIHRegimeId;
                $generalInfo->EMGIHIsResignation= $request->EMGIHIsResignation;
                $generalInfo->EMGIHDateOfLetterSubmission= $request->EMGIHDateOfLetterSubmission;
                $generalInfo->EMGIHDateOfResignation= $request->EMGIHDateOfResignation;
                $generalInfo->EMGIHDateOfLeaving= $request->EMGIHDateOfLeaving;
                $generalInfo->EMGIHReason= $request->EMGIHReason;
                $generalInfo->EMGIHRemarksForFnF= $request->EMGIHRemarksForFnF;
                $generalInfo->EMGIHLeaveWithoutPayIndicator= $request->EMGIHLeaveWithoutPayIndicator;
                $generalInfo->EMGIHLeaveWithoutPayFrom= $request->EMGIHLeaveWithoutPayFrom;
                $generalInfo->EMGIHOldEmployeeCode= $request->EMGIHOldEmployeeCode;
                $generalInfo->EMGIHGroup= $request->EMGIHGroup;
                $generalInfo->EMGIHLeaveGroupId= $request->EMGIHLeaveGroupId;
                $generalInfo->EMGIHBiDesc= $request->EMGIHBiDesc;
                $generalInfo->EEGIHIncomeDefined= $request->EEGIHIncomeDefined;
                $generalInfo->EEGIHDeductionDefined= $request->EEGIHDeductionDefined;
                $generalInfo->EMGIHUser= Auth::user()->name;
                $generalInfo->EMGIHLastCreated= now();
                $generalInfo->EMGIHLastUpdated= now();

                $generalInfo->save();


               if($generalInfo){
                       return response()->json(['status' => 'success','data' =>$generalInfo ,'updateMode' => 'Updated']);
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

    public function generalInfo_list()
    {
        $generalInfo_list = GeneralInfo::where('EMGIHMarkForDeletion','!=',1)->where('T11101l01.EMGIHCompId', $this->gCompanyId)->with('fnCity','fnLocation','fnSalutation')->get();
        return $this->TableActionTrait('generalInfo',$generalInfo_list);
    }

    public function DeleteList()
    {
        $delete_list = GeneralInfo::where('EMGIHMarkForDeletion',1)->with('fnCity','fnLocation','fnSalutation')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = GeneralInfo::where('id',$request->id)->with('fnCity','fnLocation','fnSalutation')->first();
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
         $city = GeneralInfo::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $city->EMGIHMarkForDeletion = 1 :$city->EMGIHMarkForDeletion = 0;
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
    public function getBranchDetails(Request $request)
    {
        $Branch_Detail = BranchName::with('fnBankName')->where('BMBRHBranchId', $request->id)->first();
        // dd($Branch_Detail);
        $BranchDetail = [];
        $BranchDetail['BankId'] = $Branch_Detail['fnBankName']['BMBNHBankId'];
        $BranchDetail['BankName'] = $Branch_Detail['fnBankName']['BMBNHDesc1'];
        $BranchDetail['ifsc'] = $Branch_Detail['BMBRHIFSCId'];
        // dd($BranchDetail);

        return response()->json($BranchDetail);
    }
}
