@extends('layouts.app')
@section('content')
@section('css')

@endsection
<h2>Payslip</h2>
<form action="payslip" method="post">
    @csrf
<div class="row mb-2">
<div class="col-md-2">
     <label for="exampleFormControlInput1">Month</label>
    <select class="form-control form-control-sm" name="month" required>
<option value="">Select Month</option>
<option value="Jan">January</option>
<option value="Feb">February</option>
<option value="Mar">March</option>
<option value="Apr">April</option>
<option value="May">May</option>
<option value="Jun">June</option>
<option value="Jul">July</option>
<option value="Aug">August</option>
<option value="Sep">September</option>
<option value="Oct">October</option>
<option value="Nov">November</option>
<option value="Dec">December</option>
</select>
</div>
<div class="col-md-2">
 <label for="exampleFormControlInput1">Year</label>
<select class="form-control form-control-sm" name="year" required>
<option value="">Select Year</option>
<option value="2020">2020</option>
<option value="2021">2021</option>
<option value="2022">2022</option>
<option value="2023">2023</option>
</select>
</div>
<div class="col-md-2">
     <button class="btn btn-secondary mt-4" id="generate_btn">Generate Payslip</button>
</div>
</div>

<div class="table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th scope="col"><label> <input class="form-check-input" type="checkbox" id="select_all"> Select All</label></th>
                                                    <th scope="col">Emp Id</th>
                                                    <th scope="col">Full Name</th>
                                                    <!-- <th scope="col">Date</th>
                                                    <th class="text-center" scope="col">Sales</th> -->
                                                    <!-- <th class="text-center" scope="col">Status</th> -->
                                                </tr>
                                            </thead>
                                            <tbody>

                                                @foreach($emp_list as $row)
                                               
                                                <tr>
                                                    <td><input class="form-check-input checkbox" type="checkbox" value="{{$row->EMGIHEmployeeId}}" name="emp_ids[]"></td>
                                                    <td>{{$row->EMGIHEmployeeId}}</td>
                                                    <td>{{$row->EMGIHFullName}}</td>
                                                   <!--  <td>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                                        <span class="table-inner-text">25 Apr</span>
                                                    </td>
                                                    <td class="text-center">320</td> -->
                                                        <!-- <span class="badge badge-warning">Generate Payslip</span> -->
                                                   <!--  <td class="text-center">
                                                        <button class="btn btn-warning btn-sm">Generate Payslip</button>
                                                    </td> -->
                                                </tr>

                                                 @endforeach


                                               <!--  <tr>
                                                    <td>Alma Clarke</td>
                                                    <td>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                                        <span class="table-inner-text">26 Apr</span>
                                                    </td>
                                                    <td class="text-center">110</td>
                                                    <td class="text-center">
                                                        <span class="badge badge-light-secondary">Pending</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Vincent Carpenter</td>
                                                    <td>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                                        <span class="table-inner-text">05 May</span>
                                                    </td>
                                                    <td class="text-center">210</td>
                                                    <td class="text-center">
                                                        <span class="badge badge-light-danger">Rejected</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Xavier</td>
                                                    <td>
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-calendar"><rect x="3" y="4" width="18" height="18" rx="2" ry="2"></rect><line x1="16" y1="2" x2="16" y2="6"></line><line x1="8" y1="2" x2="8" y2="6"></line><line x1="3" y1="10" x2="21" y2="10"></line></svg>
                                                        <span class="table-inner-text">18 May</span>
                                                    </td>
                                                    <td class="text-center">784</td>
                                                    <td class="text-center">
                                                        <span class="badge badge-light-info">In Progress</span>
                                                    </td>
                                                </tr> -->
                                            </tbody>
                                        </table>
                                        </form>
                                    </div>
@endsection
@section('js_code')
<script type="text/javascript">
    $(document).ready(function() {
        $('#generate_btn').hide();
    });
$('#select_all').on('click',function(){
    if (this.checked) {
        $('.checkbox').each(function() {
          this.checked = true;
          $('#generate_btn').show();
        })
    } else {
        $('.checkbox').each(function() {
          this.checked = false;
          $('#generate_btn').hide();
    })
    }
});
$('.checkbox').on('click',function(){
    if($('.checkbox:checked').length == $('.checkbox').length){
       $('#select_all').prop('checked',true); 
       $('#generate_btn').show();
    }else{
       $('#select_all').prop('checked',false); 
    }

    if($('.checkbox:checked').length > 0 ){
       $('#generate_btn').show();
    }else{
       $('#generate_btn').hide();
    }
});
// $('#generate_btn').on('click',function(){
//    var id  = [];
//     $('.checkbox:checked').each(function(key) {
//           id[key] = $(this).val();
//     })
//     if(id.length === 0){
//        alert("Please Select atleast one checkbox."); 
//     }else{
        
//     }
// });
</script>
@endsection
