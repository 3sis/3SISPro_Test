@foreach($emp_payslip as $row)
 <style>
    body {
        font-family: sans-serif;
    }

    table {
        font-family: calibri;
        font-size: 12px;
    }

    #logo {
        text-align: center;
/*        margin-left: 250px; */
    }
</style>
    <div style="border: 1px solid #000;">
    <img id="logo" src="assets/img_pdf/logo.jpg">
    <p style="text-align:center;border-top: 1px solid #000;border-bottom: 1px solid #000;margin: 0;font-weight: bold;">Payslip</p>
<table width="100%" style="border-bottom: 1px solid #000;">
    <tr>
        <td width="50%" align="left" ><span>
                <strong>Period : </strong> Sep-2020</span>
        </td>
        <td  width="20%" align="left" ><span>
                <strong>Fiscal Year :</strong> 2020-2021</span>
        </td>
    </tr>
</table>

<table width="100%" style="border:none;">
    <tr>
        <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                <strong>Name :</strong> {{$row->EMGIHFullName}}</span>
        </td>
        <td width="20%" align="left" style="border:none;"><span
                style="font-size: 15px; text-align:left;"><strong>Employee Id: </strong> {{$row->emp_id}}</span>
        </td>
    </tr>
     <tr>
        <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                <strong>Join Date: </strong> {{date('d/m/Y',strtotime($row->EMGIHDateOfJoining))}}</span>
        </td>
        <td width="20%" align="left" style="border:none;"><span
                style="font-size: 15px; text-align:left;"><strong>Bank Name :  </strong> {{$row->bankname}}</span>
        </td>
    </tr>
     <tr>
        <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                <strong>Department: </strong> {{$row->department}}</span>
        </td>
        <td width="20%" align="left" style="border:none;"><span
                style="font-size: 15px; text-align:left;"><strong>A/C No.
:  </strong> {{$row->EMGIHBankAccountNo}}</span>
        </td>
    </tr>
     <tr>
        <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                <strong>Designation:  </strong> {{$row->designation}}</span>
        </td>
        <td width="20%" align="left" style="border:none;"><span
                style="font-size: 15px; text-align:left;"><strong>IFS Code: </strong> {{$row->EMGIHIFSCId}}</span>
        </td>
    </tr>
    <tr>
        <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                <strong>Reporting To:  </strong> </span>
        </td>
        <td width="20%" align="left" style="border:none;"><span
                style="font-size: 15px; text-align:left;"><strong>Employment Type :  </strong>{{$row->emp_type}}</span>
        </td>
    </tr>
</table>

<div style="border-top: 1px solid #000;">
    <table style="margin:0 auto;">
        <tr>
            <th style="padding-right:5px ;">Calendar Days</th>
            <th style="padding-right:5px ;">LWP</th>
            <th style="padding-right:5px ;">Absent</th>
            <th style="padding-right:5px ;">Weekly Off</th>
            <th style="padding-right:5px ;">Public Holiday</th>
            <th style="padding-right:5px ;">Paid Days</th>
        </tr>
         <tr>
            <td style="text-align: center;">{{$row->caldendardays}}</td>
            <td style="text-align: center;">{{$row->lwp}}</td>
            <td style="text-align: center;">{{$row->absentdays}}</td>
            <td style="text-align: center;">{{$row->weeklyoff}}</td>
            <td style="text-align: center;">{{$row->publicholiday}}</td>
            <td style="text-align: center;">{{$row->paiddays}}</td>
        </tr>
    </table>
</div>
<table style="width:100%;border: 1px solid black;
  border-collapse: collapse;">
  <tr>
    <th style="border: 1px solid black;
  border-collapse: collapse;text-align: left;" width="20%">Income Entity</th>
    <th style="border: 1px solid black;
  border-collapse: collapse;text-align: center;" width="8%">Taxabl</th> 
    <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Fixed</th>
  <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Net Amt.</th>
  <th style="border: 1px solid black;
  border-collapse: collapse;text-align: left;" width="22%">Deductions</th>
  <th style="border: 1px solid black;
  border-collapse: collapse;text-align: center;" width="12%">Tax Exempt</th>
   <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Fixed</th>
   <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Net Amt.</th>
  </tr>


@foreach($row->details as $row1)
  <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;">{{$row1->PYMPDDesc}}</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">{{ $row1->PYMPDIsTaxable == 1 ? 'Y' : 'N' }}</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">{{$row1->PYMPDGrossIncome}}</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">{{$row1->PYMPDGrossPay}}</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;">PF</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">1,800.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">1,800.00</td>
  </tr>
@endforeach

   <!-- <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;">DA</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">7,050.00</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">7,050.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;">PT</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">1,250.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">1,250.00</td>
  </tr>

   <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;">CCA</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">5,497.00</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">5,497.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;">PF Recovery</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">300.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">300.00</td>
  </tr>


   <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;">HRA</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;">Y</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">6,245.00</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;">6,245.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;font-weight: bold;">Tax Exempt Deductions</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;"></td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">3,350.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">3,350.00</td>
  </tr>





   <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;font-weight: bold;">Net Taxable Income</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;"> </td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">32,892.00</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">32,892.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;font-weight: bold;">Total Deductions</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;"></td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">3,350.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">3,350.00</td>
  </tr>


   <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;font-weight: bold;">Total Income</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;"> </td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">32,892.00</td>

   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;font-weight: bold;">32,892.00</td>
   <td style="border: 1px solid black;
  border-collapse: collapse;"> </td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: center;"></td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;"></td>
   <td style="border: 1px solid black;
  border-collapse: collapse;text-align: right;"></td>
  </tr> -->


  <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;font-weight: bold;" colspan="7">Total Income</td>
 <td style="text-align: right;">32,892.00</td>
  </tr>

  <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;font-weight: bold;" colspan="7">Total Deduction</td>
 <td style="text-align: right;">3,350.00</td>
  
  </tr>

  <tr>
    <td style="border: 1px solid black;
  border-collapse: collapse;text-align: left;font-weight: bold;" colspan="7">Net Pay</td>
 <td style="text-align: right;">29,542.00</td>
  
  </tr>

  <tr>
    <td style="border: 1px solid black;text-align: right;font-weight: bold;" colspan="8">Round:   29,542.00</td>
  </tr>

  </tr>
</table>
    </div>
    <div style="margin-left: 560px; margin-top: 450px;"><b>Director,</b></div>
    <div style="margin-left:520px ;"><b>Authorized Signatory</b></div>
<hr>
@endforeach
