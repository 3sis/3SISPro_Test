<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Payroll\EmployeeMaster\GeneralInfo;

class PdfController extends Controller
{
    public function invoice(Request $request){
        $stylesheet = "";
        // return view('invoice');
        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8',
    // 'format' => [190, 236],
    // 'orientation' => 'L'
     ]);
       
        $mpdf->WriteHTML(view('invoice'));
        return ($mpdf->Output('state_list.pdf', 'I'));
    }
    public function payslip_list(Request $request){
        $emp_list = GeneralInfo::join('t11701','t11101l01.EMGIHEmployeeId','=','t11701.PYLMEmpId')
                       ->get();
        return view('payslip_list',compact('emp_list'));
    }

    public function payslip_pdf(Request $request){
        $emp_payslip = GeneralInfo::join('t22501','t11101l01.EMGIHEmployeeId','=','t22501.PYMPHEmpCode')
        ->join('t11903l01','t11903l01.ESDEHDesignationId','=','t11101l01.EMGIHDesignationId')
        ->join('t11903l03','t11903l03.ESDPHDepartmentId','=','t11101l01.EMGIHDepartmentId')
        ->join('t05902l01','t05902l01.BMBNHBankId','=','t11101l01.EMGIHBankId')
        ->join('t11903l04','t11903l04.ESTYHTypeId','=','t11101l01.EMGIHEmploymentTypeId')
        ->where('t11101l01.EMGIHEmployeeId',$request->emp_id)
        ->select('t11101l01.EMGIHEmployeeId as emp_id','t11101l01.EMGIHFullName','t11101l01.EMGIHDateOfJoining','t11903l01.ESDEHDesc1 as designation','t11903l03.ESDPHDesc1 as department','t11101l01.EMGIHIFSCId','t11101l01.EMGIHBankAccountNo','t22501.PYMPHCaldendarDays as caldendardays','t22501.PYMPHLeaveWithoutyPay as lwp','t22501.PYMPHPaidDays as paiddays','t22501.PYMPHAbsentDays as absentdays','t22501.PYMPHWeeklyOff as weeklyoff','t22501.PYMPHPublicHoliday as publicholiday','t05902l01.BMBNHDesc1 as bankname','t11903l04.ESTYHDesc1 as emp_type')->get();
        foreach($emp_payslip as $row){
            $row->details = GeneralInfo::join('t2250111','t2250111.PYMPDEmpCode','=','t11101l01.EMGIHEmployeeId')->where('t2250111.PYMPDEmpCode',$row->emp_id)->get();
            $row->details = collect($row->details)->sortBy('PYMPDUserSorting');
        }
        // dd($emp_payslip);
        // return view('payslip',compact('emp_payslip'));
        $mpdf = new \Mpdf\Mpdf(['mode' => 'utf-8',
            // 'format' => [190, 236],
            // 'orientation' => 'L'
        ]);
        $mpdf->WriteHTML(view('payslip',compact('emp_payslip')));
        return ($mpdf->Output('state_list.pdf', 'I'));
    }
}

// $mpdf=new \Mpdf\Mpdf(['mode'=>'utf-8']);
// $mpdf->WriteHTML($stylesheet,1);
            // $mpdf->WriteHTML('<h1>Hello world!</h1>');
// $mpdf->WriteHTML($html);
// $file='media/'.time().'.pdf';
// $mpdf->output($file,'I');
//D
//I
//F
//S
