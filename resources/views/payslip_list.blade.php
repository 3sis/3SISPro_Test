@extends('layouts.app')
@section('content')
@section('css')

@endsection
<h2>Payslip</h2>
<div id="payslip_id"></div>
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
                </tr>
            </thead>
            <tbody>
                @foreach($emp_list as $row)
                <tr>
                    <td><input class="form-check-input checkbox" type="checkbox" value="{{$row->EMGIHEmployeeId}}" name="emp_ids[]"></td>
                    <td>{{$row->EMGIHEmployeeId}}</td>
                    <td>{{$row->EMGIHFullName}}</td>
                </tr>
                 @endforeach
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
          checked_id();
        })
    } else {
        $('.checkbox').each(function() {
          this.checked = false;
          $('#generate_btn').hide();
          checked_id();
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
    checked_id();
});


var id  = [];
function checked_id(){
         id  = [];
     $('.checkbox:checked').each(function(key) {
        id[key] = $(this).val();
    })
   
console.log(JSON.stringify(id));

$('#payslip_id').empty().html(JSON.stringify(id));
}

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
