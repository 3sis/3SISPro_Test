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
@foreach ($emp_payslip as $row)
    
    <div style="border: 1px solid #000;">
        <img id="logo" src="assets/img_pdf/logo.jpg">
        <p
            style="text-align:center;border-top: 1px solid #000;border-bottom: 1px solid #000;margin: 0;font-weight: bold;">
            Payslip</p>
        <table width="100%" style="border-bottom: 1px solid #000;">
            <tr>
                <td width="50%" align="left"><span>
                        <strong>Period : </strong> {{ $row->fiscalmonth }}-{{ $row->fiscalyear }}</span>
                </td>
                <td width="20%" align="left"><span>
                        <strong>Fiscal Year :</strong> {{ $row->fiscalyear }}</span>
                </td>
            </tr>
        </table>

        <table width="100%" style="border:none;">
            <tr>
                <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                        <strong>Name :</strong> {{ $row->EMGIHFullName }}</span>
                </td>
                <td width="20%" align="left" style="border:none;"><span
                        style="font-size: 15px; text-align:left;"><strong>Employee Id: </strong>
                        {{ $row->emp_id }}</span>
                </td>
            </tr>
            <tr>
                <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                        <strong>Join Date: </strong> {{ date('d/m/Y', strtotime($row->EMGIHDateOfJoining)) }}</span>
                </td>
                <td width="20%" align="left" style="border:none;"><span
                        style="font-size: 15px; text-align:left;"><strong>Bank Name : </strong>
                        {{ $row->bankname }}</span>
                </td>
            </tr>
            <tr>
                <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                        <strong>Department: </strong> {{ $row->department }}</span>
                </td>
                <td width="20%" align="left" style="border:none;"><span
                        style="font-size: 15px; text-align:left;"><strong>A/C No.
                            : </strong> {{ $row->EMGIHBankAccountNo }}</span>
                </td>
            </tr>
            <tr>
                <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                        <strong>Designation: </strong> {{ $row->designation }}</span>
                </td>
                <td width="20%" align="left" style="border:none;"><span
                        style="font-size: 15px; text-align:left;"><strong>IFS Code: </strong>
                        {{ $row->EMGIHIFSCId }}</span>
                </td>
            </tr>
            <tr>
                <td width="50%" align="left" style="border:none;"><span style="font-size: 15px; text-align:left;">
                        <strong>Reporting To: </strong> </span>
                </td>
                <td width="20%" align="left" style="border:none;"><span
                        style="font-size: 15px; text-align:left;"><strong>Employment Type :
                        </strong>{{ $row->emp_type }}</span>
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
                    <td style="text-align: center;">{{ $row->caldendardays }}</td>
                    <td style="text-align: center;">{{ $row->lwp }}</td>
                    <td style="text-align: center;">{{ $row->absentdays }}</td>
                    <td style="text-align: center;">{{ $row->weeklyoff }}</td>
                    <td style="text-align: center;">{{ $row->publicholiday }}</td>
                    <td style="text-align: center;">{{ $row->paiddays }}</td>
                </tr>
            </table>
        </div>
        <table style="width:100%;border: 1px solid black;
  border-collapse: collapse;">
            <tr>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: left;" width="20%">Income
                    Entity</th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: center;" width="8%">
                    Taxabl</th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Fixed
                </th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Net
                    Amt.</th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: left;" width="22%">
                    Deductions</th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: center;" width="12%">Tax
                    Exempt</th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Fixed
                </th>
                <th style="border: 1px solid black;
  border-collapse: collapse;text-align: right;" width="12%">Net
                    Amt.</th>
            </tr>

            @php 
                $rows = 0;
                $Total_Income = 0;
                $Total_Deduction = 0;
            @endphp

            @foreach ($row->Increament as $key => $row1)
                <tr>
                    <td style="border: 1px solid black;border-collapse: collapse;text-align: left;">
                        {{ $row1->PYMPDDesc }}</td>
                    <td style="border: 1px solid black;border-collapse: collapse;text-align: center;">
                        {{ $row1->PYMPDIsTaxable == 1 ? 'Y' : 'N' }}</td>
                    <td style="border: 1px solid black;border-collapse: collapse;text-align: right;">
                        {{ number_format($row1->PYMPDGrossIncome,2) }}</td>
                    <td style="border: 1px solid black;border-collapse: collapse;text-align: right;">
                        {{ number_format($row1->PYMPDGrossPay,2) }}</td>

                        @php 

                            $Total_Income += $row1->PYMPDGrossIncome;

                        @endphp


                    @if ($key < count($row->Decreament))
                        <td style="border: 1px solid black;border-collapse: collapse;">
                            {{ $row->Decreament[$key]->PYMPDDesc }}</td>
                        <td style="border: 1px solid black;border-collapse: collapse;text-align: center;">
                            {{ $row->Decreament[$key]->PYMPDIsTaxable == 1 ? 'Y' : 'N' }}</td>
                        <td style="border: 1px solid black;border-collapse: collapse;text-align: right;">
                            {{ number_format($row->Decreament[$key]->PYMPDGrossIncome,2) }}</td>
                        <td style="border: 1px solid black;border-collapse: collapse;text-align: right;">
                            {{ number_format($row->Decreament[$key]->PYMPDGrossIncome,2) }}</td>

                        @php 

                        $Total_Deduction += $row->Decreament[$key]->PYMPDGrossIncome;

                        @endphp

                    @endif

                </tr>
                @php $rows++;@endphp
            @endforeach

            <tr>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: left;font-weight: bold;"
                    colspan="2">Total Income</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Income,2)}}</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Income,2)}}</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: left;font-weight: bold;"
                    colspan="2">Tax Exempt Deductions</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Deduction,2)}}</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Deduction,2)}}</td>
            </tr>

            <tr>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: left;font-weight: bold;"
                    colspan="7">Total Income</td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Income,2)}}
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: left;font-weight: bold;"
                    colspan="7">Total Deduction </td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Deduction,2)}}
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: left;font-weight: bold;"
                    colspan="7">Net Pay </td>
                <td style="border: 1px solid black;border-collapse: collapse;text-align: right;font-weight: bold;">{{number_format($Total_Income - $Total_Deduction,2)}}
                </td>
            </tr>

            <tr>
                <td style="border: 1px solid black;text-align: right;font-weight: bold;" colspan="7">Round</td>
                <td style="border: 1px solid black;text-align: right;font-weight: bold;">{{number_format(ceil($Total_Income - $Total_Deduction),2)}}</td>
            </tr>

        </table>
    </div>
    <div style="margin-left: 560px; margin-top: 530px;"><b>Director,</b></div>
    <div style="margin-left:520px ;"><b>Authorized Signatory</b></div>
    <hr>
@endforeach