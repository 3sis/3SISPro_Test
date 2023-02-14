<?php

namespace App\Http\Controllers\Config\GeneralMaster;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Log;
use App\Models\t92;
use App\Models\Config\GeneralMaster\Company;
use App\Models\Config\GeneralMaster\Currency;
use App\Models\Config\Geographic\City;
use App\Models\Config\Geographic\State;
use App\Models\Config\Geographic\Country;
use App\Models\Config\BankingMaster\BranchName;
use App\Models\Config\BankingMaster\BankName;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Arr;

// use App\Models\Technical_Error;
use App\Traits\CommonMasters\GeneralMaster\CommonDataTables;
use App\Traits\Error;
use DataTables;

class CompanyController extends Controller
{
    use CommonDataTables,Error;
    public function index(Request $request)
    {
        $edit_data = '';
        $action = $request->action;
        if(!empty($request->id)){
          $edit_data = $this->getCompanyData(Crypt::decryptString($request->id));
        }
        $currency_list = Currency::all();
        $city_list = City::all();
        $branch_list = BranchName::all();
        $qtylist = [0,1,2,3,4,5];
        return view('config.GeneralMaster.company',compact( 'action','edit_data','currency_list','city_list','branch_list','qtylist'));
    }

     public function save(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
              'GMCOHCompanyId' => 'required|min:2|max:10|unique:t05901l01,GMCOHCompanyId,'.$request->id,
              'GMCOHDesc1'      => 'required|max:100',
              'GMCOHDesc2'      => 'max:200',
            //   'GMCOHCityId'     => 'required'
            ]);
            // return $validator;

            if ($validator->fails()) {
                return response()->json(['errors'=>$validator->errors()]);
            }
                $company_data = new Company();
                if($request->id != null){
                    //update
                   $company_data = Company::find($request->id);
                }else {
                    $company_data->GMCOHLastCreated =now();
                }
                $company_data->GMCOHCompanyId               = $request->GMCOHCompanyId;
                $company_data->GMCOHDesc1                   = $request->GMCOHDesc1;
                $company_data->GMCOHDesc2                   = $request->GMCOHDesc2;
                $company_data->GMCOHNickName                = $request->GMCOHNickName;
                $company_data->GMCOHTagLine                 = $request->GMCOHTagLine;
                $company_data->GMCOHCurrencyId              = $request->GMCOHCurrencyId;
                $company_data->GMCOHAddress1                = $request->GMCOHAddress1;
                $company_data->GMCOHAddress2                = $request->GMCOHAddress2;
                $company_data->GMCOHAddress3                = $request->GMCOHAddress3;
                $company_data->GMCOHCityId                  = $request->GMCOHCityId;
                $company_data->GMCOHStateId                 = $request->GMCOHStateId;
                $company_data->GMCOHCountryId               = $request->GMCOHCountryId;
                $company_data->GMCOHPinCode                 = $request->GMCOHPinCode;
                $company_data->GMCOHLandLine                = $request->GMCOHLandLine;
                $company_data->GMCOHMobileNo                = $request->GMCOHMobileNo;
                $company_data->GMCOHEmail                   = $request->GMCOHEmail;
                $company_data->GMCOHWebsite                 = $request->GMCOHWebsite;
                $company_data->GMCOHCINNo                   = $request->GMCOHCINNo;
                $company_data->GMCOHPANNo                   = $request->GMCOHPANNo;
                $company_data->GMCOHGSTNo                   = $request->GMCOHGSTNo;
                $company_data->GMCOHPFNo                    = $request->GMCOHPFNo;
                $company_data->GMCOHPTNo                    = $request->GMCOHPTNo;
                $company_data->GMCOHLWFNo                   = $request->GMCOHLWFNo;
                $company_data->GMCOHESICNo                  = $request->GMCOHESICNo;
                $company_data->GMCOHTANNo                   = $request->GMCOHTANNo;
                $company_data->GMCOHVATNo                   = $request->GMCOHVATNo;
                $company_data->GMCOHESTNo                   = $request->GMCOHESTNo;
                $company_data->GMCOHESTDate                 = date('Y-m-d',strtotime($request->GMCOHESTDate));
                $company_data->GMCOHBankId1                 = $request->GMCOHBankId1;
                $company_data->GMCOHBranchId1               = $request->GMCOHBranchId1;
                $company_data->GMCOHIFSId1                  = $request->GMCOHIFSId1;
                $company_data->GMCOHBankAccNo1              = $request->GMCOHBankAccNo1;
                $company_data->GMCOHBankAcName1             = $request->GMCOHBankAcName1;
                $company_data->GMCOHBankId2                 = $request->GMCOHBankId2;
                $company_data->GMCOHBranchId2               = $request->GMCOHBranchId2;
                $company_data->GMCOHIFSId2                  = $request->GMCOHIFSId2;
                $company_data->GMCOHBankAccNo2              = $request->GMCOHBankAccNo2;
                $company_data->GMCOHBankAcName2             = $request->GMCOHBankAcName2;
                $company_data->GMCOHBiDesc                  = $request->GMCOHBiDesc;
                $company_data->GMCOHDecimalPositionQty      = $request->GMCOHDecimalPositionQty;
                $company_data->GMCOHDecimalPositionValue    = $request->GMCOHDecimalPositionValue;
                $company_data->GMCOHFolderName              = $request->GMCOHFolderName;
                $company_data->GMCOHImageFileName           = $request->GMCOHImageFileName;
                $company_data->GMCOHUser=Auth::user()->name;
                $company_data->GMCOHLastUpdated =now();
                $company_data->save();


               if($company_data){
                       return response()->json(['status' => 'success','data' =>$company_data ,'updateMode' => 'Updated']);
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

    public function company_list()
    {
        $company_list = Company::where('GMCOHMarkForDeletion','!=',1)->with('fnCity','fnBranch1','fnCurrency')->get();
        // dd($company_list);
        return $this->TableActionTrait('company',$company_list);
    }

    public function DeleteList()
    {
        $delete_list = Company::where('GMCOHMarkForDeletion',1)->with('fnCity','fnBranch1','fnCurrency')->get();
        return $this->TableActionRestoreTrait($delete_list);
    }

    public function fetchData(Request $request)
    {
    try {
            $fetchData = Company::where('id',$request->id)->with('fnCity','fnBranch1','fnCurrency')->first();
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
         $company = Company::find($request->id);
         //Delete  - Restore
         $request->action == 'delete' ? $company->GMCOHMarkForDeletion = 1 :$company->GMCOHMarkForDeletion = 0;
            $company->save();
            if($company){
                   return response()->json(['status' => 'success','data' =>$company]);
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
            $fetchData = Company::whereaaa('id',$request->id)->first();
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
    public function getCompanyData($id)
    {
        try {
           return Company::where('id', $id)->with('fnCity','fnBranch1','fnCurrency')->first();
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
