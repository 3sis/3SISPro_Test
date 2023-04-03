<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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
