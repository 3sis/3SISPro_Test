@extends('layouts.app')
@section('content')
@section('css')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<!-- sweetalert2 -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link rel="stylesheet" href="{{asset('assets/plugins/src/sweetalerts2/sweetalerts2.css')}}">
<link href="{{asset('assets/plugins/css/light/sweetalerts2/custom-sweetalert.css')}}" rel="stylesheet"
   type="text/css" />
<link href="{{asset('assets/plugins/css/dark/sweetalerts2/custom-sweetalert.css')}}" rel="stylesheet"
   type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- sweetalert2 -->
@if($manage == 'manage')
<!-- BEGIN PAGE LEVEL CUSTOM STYLES -->
<link rel="stylesheet" type="text/css"
   href="{{asset('assets/plugins/src/table/datatable/datatables.css')}}">
<link rel="stylesheet" type="text/css"
   href="{{asset('assets/plugins/css/light/table/datatable/dt-global_style.css')}}">
<link rel="stylesheet" type="text/css"
   href="{{asset('assets/plugins/css/light/table/datatable/custom_dt_custom.css')}}">
<link rel="stylesheet" type="text/css"
   href="{{asset('assets/plugins/css/dark/table/datatable/dt-global_style.css')}}">
<link rel="stylesheet" type="text/css"
   href="{{asset('assets/plugins/css/dark/table/datatable/custom_dt_custom.css')}}">
<!-- END PAGE LEVEL CUSTOM STYLES -->
<style>
   #landingPageBrowser3SIS_info{
   margin-top: 2px;
   }
   #input_border{
   border-color: rgb(102, 175, 233); 
   outline: 0px
   }
   @endif
</style>
@endsection
<div class="mt-1" style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
   <form id='AddForm' method="post" autocomplete="off">
      <div class="row justify-content-center">
         <div class="col-auto me-auto mt-2 error_msg">
            <!-- State added successfully -->
         </div>
         <div class="col-auto">
            @if($manage == 'add' || $manage == 'edit')
            <a href="#" class="btn btn-danger" id="btn_error">Error</a>
            <a href="{{ url('manage-state') }}" class="btn btn-info">Back</a>
            <button id="save" class="btn btn-success">{{$manage == 'add' ? 'Add' : 'Edit'}}</button>
            @endif
            @if($manage == 'manage')
            <a class="btn btn-danger btn-icon btnUnDeleteRec3SIS" href="javascript:void(0)" id='Undelete_Data' class='' title="Restore">
            <i class="fa fa-undo m-1" style="font-size:20px"></i>
            </a>
            <a class="btn btn-success btn-icon" href="{{ url('add-state') }}">
            <i class="fa fa-plus-square m-1" style="font-size:20px"></i>
            </a>
            @endif  
         </div>
      </div>
</div>
@if($manage == 'add' || $manage == 'edit')
<div class="row">
<div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
<div class="statbox widget box box-shadow">
<div class="widget-header">
<div class="row">
<div class="col-xl-12 col-md-12 col-sm-12 col-12">
<h4>{{$manage == 'add' ? 'Add' : 'Edit'}} State Master</h4>
</div>
</div>
</div>
<div class="widget-content widget-content-area">
<div class="row g-3" >
@csrf
@if(!empty($edit_data['id']))
<input type="hidden" name="id" value="{{$edit_data['id']}}">
@endif
@if($manage == 'add')
<input type="hidden" id="action" value="insert">
@else
<input type="hidden" id="action" value="update">
@endif
<div class="col-md-6">
<label for="inputEmail4" class="form-label">State Id</label>
<input type="text" name='GMSMHStateId'
   id='GMSMHStateId' class='form-control threshold'
   maxlength="20" placeholder="Enter State Name" style='border-color: rgb(102, 175, 233); outline: 0px'
   value="{{ old('GMSMHStateId', $edit_data['GMSMHStateId'] ?? '') }}" 
   >
</div>
<div class="col-md-6">
<label for="inputPassword4" class="form-label">Description 1</label>
<input type="text" name='GMSMHDesc1' id='GMSMHDesc1' class='form-control threshold' maxlength="20" placeholder="Enter State Description 1"
   style='border-color: rgb(102, 175, 233); outline: 0px' value="{{ old('GMSMHDesc1', $edit_data['GMSMHDesc1'] ?? '') }}">
</div>
<div class="col-12">
<label for="inputAddress" class="form-label">Description 2</label>
<textarea name='GMSMHDesc2' id='GMSMHDesc2' class='form-control textarea' maxlength="200" placeholder="Enter State Description 2"
   style='border-color: rgb(102, 175, 233); outline: 0px'>{{ old('GMSMHDesc2', $edit_data['GMSMHDesc2'] ?? '') }}</textarea>
</div>
<div class="col-6 mb-4">
<label for="inputState" class="form-label">Country</label>
<select id='GMSMHCountryId' name='GMSMHCountryId' class="form-select" style="width: 100%;border: 1px solid #68a6ec;">
<option value=''>Select Country</option>
@foreach ($countries as $country)
@if(!empty($edit_data['GMSMHCountryId']) && $edit_data['GMSMHCountryId'] == $country->GMCMHCountryId)
<option value='{{ $country->GMCMHCountryId }}' selected> {{ $country->GMCMHDesc1 }}</option>
@else
<option value='{{ $country->GMCMHCountryId }}'> {{ $country->GMCMHDesc1 }}</option>
@endif
@endforeach
</select>
</div>
<!--  <div class="col-6 mt-5">
   <button type="submit" class="btn btn-primary _effect--ripple waves-effect waves-light">Add</button>
   </div> -->
</div>
</form>
</div>
</div>
</div>
</div>
@endif
@if($manage == 'manage')
<div class="table-responsive mt-2">
   <table id="landingPageBrowser3SIS"
      class="table dt-table-hover dataTable no-footer purple_Browser2D_3SIS">
      <thead>
         <tr>
            <th title="State Id">ID</th>
            <th>State Name</th>
            <th>Country Name</th>
            <th>User</th>
            <th>Action</th>
            <th style="visibility: hidden;">Desc2</th>
            <th style="visibility: hidden;">Bi Desc</th>
            <th style="visibility: hidden;">User</th>
            <th style="visibility: hidden;">Updated</th>
            <th style="visibility: hidden;">Unique Id</th>
         </tr>
      </thead>
   </table>
</div>
@endif
<!-- start undeletemodal -->
<div id="UndoModal" class="modal fade" data-backdrop="static" data-keyboard="false" role="dialog"
   aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered 3SISPro-modal-dialog" role="document"
      style="max-width:1000px!important;">
      <div class="modal-content {{ $theme_ContentModal2D_3SIS }}">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle"></h5>
            <button type="button" data-bs-dismiss="modal" aria-label="Close">
               <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                  viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                  stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
                  <line x1="18" y1="6" x2="6" y2="18"></line>
                  <line x1="6" y1="6" x2="18" y2="18"></line>
               </svg>
            </button>
         </div>
         <div class="modal-body">
            <div class="container-fluid">
               <div class="table-responsive">
                  <table id="UndoModalTable" class="{{ $theme_Browser2_3SIS }}" style="width:100%">
                     <thead>
                        <tr>
                           <th title="State Id">ID</th>
                           <th>State Name</th>
                           <th>Country Name</th>
                           <th>User</th>
                           <th>Action</th>
                           <th style="visibility: hidden;">Unique Id</th>
                        </tr>
                     </thead>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
<!-- end undeletemodal -->
<!-- Error Model -->
<div class="modal fade" id="ErrorModal" tabindex="-1" role="dialog"
   aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
   <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <h5 class="modal-title" id="exampleModalCenterTitle">Errors</h5>
            <button type="button" data-bs-dismiss="modal" aria-label="Close">
            X
            </button>
         </div>
         <div class="modal-body">
            <div class="w-100 msg_error"></div>
         </div>
         <div class="modal-footer">
            <button class="btn btn-warning" data-bs-dismiss="modal">Close</button>
         </div>
      </div>
   </div>
</div>
<!-- Error Model end-->
@endsection
@section('js_code')
<script src="https://designreset.com/cork/html/src/assets/js/custom.js"></script>
<script src="https://designreset.com/cork/html/src/plugins/src/table/datatable/datatables.js"></script>
<!-- <script src={{ asset('assets/common/js/StateMasterAjax.js') }}></script> -->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script src="https://designreset.com/cork/html/src/plugins/src/sweetalerts2/sweetalerts2.min.js"></script>
<!-- <script src="https://designreset.com/cork/html/src/plugins/src/sweetalerts2/custom-sweetalert.js"></script> -->

<script type="text/javascript">
   $(document).ready(function(){
    // $.ajaxSetup({
    //     headers: {
    //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //      }
    // });
    $('#landingPageBrowser3SIS').DataTable({
        buttons: {
            buttons: [
                { extend: 'excel', className: 'btn' },
                { extend: 'print', className: 'btn' }
            ]
        },
        "oLanguage": {
            "oPaginate": {
                "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" \
                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" \
                class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5">\
                </polyline></svg>', "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" \
                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" \
                stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line>\
                <polyline points="12 5 19 12 12 19"></polyline></svg>' },
            "sInfo": "Showing page PAGE of _PAGES_",
            "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
            "sSearchPlaceholder": "Search...",
            "sLengthMenu": "Results :  _MENU_",
        },
        stripeClasses: [],
        pageLength: 6,
        lengthMenu: [6, 10, 20, 50],
        order: [0, "desc"],
        processing: true,
        serverSide: true,
        "ajax": "/get/state",
        "columns": [
            { data: "GMSMHStateId" },
            { data: "GMSMHDesc1" },
            { data: "fn_country.GMCMHDesc1" },
            { data: "GMSMHUser" },
            { data: "action", orderable: false, searchable: false },
            { data: "GMSMHDesc1", "visible": false },
            { data: "GMSMHDesc2", "visible": false },
            { data: "GMSMHUser", "visible": false },
            { data: "GMSMHLastCreated", "visible": false },
            { data: "id", "visible": false },
        ],
   
        "columnDefs": [
            { "width": "5%", "targets": 0 },
            { "width": "25%", "targets": 1 },
            { "width": "25%", "targets": 2 },
            { "width": "25%", "targets": 3 },
            { "width": "15%", "targets": 4 }
        ]
    });
   
    $('#GMSMHCountryId').select2({
       // theme: "bootstrap-5"
    });
   
    $('#btn_error').hide();
   });
   
    $("#AddForm").submit(function(e) { 
       e.preventDefault();
    $('#GMSMHStateId,#GMSMHDesc1,#GMSMHDesc2,#select2-GMSMHCountryId-container').removeClass('border border-danger');
       
   if($('#GMSMHStateId').val() == ''){
    $('#GMSMHStateId').addClass('border border-danger');
   }
   if($('#GMSMHDesc1').val() == ''){
   $('#GMSMHDesc1').addClass('border border-danger');
   
   }
   // if($('#GMSMHDesc2').val() == ''){
   // $('#GMSMHDesc2').addClass('border border-danger');
   // }
   if($('#GMSMHCountryId').val() == ''){
   $('#select2-GMSMHCountryId-container').addClass('border border-danger');
   }
       $('.msg_error').html('');
       if($('#GMSMHStateId').val() == '' || $('#GMSMHDesc1').val() == ''
        || $('#GMSMHCountryId').val() == ''){
        if($('#GMSMHStateId').val() == ''){
           $('.msg_error').append('<p>Please Enter State name !</p>');
        }
       if($('#GMSMHDesc1').val() == ''){
            $('.msg_error').append('<p>Please Enter State Description 1 !</p>');
       }
       // if($('#GMSMHDesc2').val() == ''){
       //       $('.msg_error').append('<p>Please Enter State Description 2 !</p>');
       // }
       if($('#GMSMHCountryId').val() == ''){
            $('.msg_error').append('<p>Please Select Country !</p>');
       }
        var error_count =  $(".msg_error").children().length;
        if(error_count > 0){
            $('#btn_error').show().animate({left: '-250px'}).animate({left: '1px'});
        }
       return false;
    }else{
        var action = $('#action').val();
        console.log('action: '+action);
        $.ajax({
                url: "{{url('/state/save')}}",
                method: 'post',
                data: new FormData(this),
                processData: false,
                dataType: "json",
                contentType: false,
                beforeSend: function () {
                    $('#btn_error').hide();
                },
                success: function (response) {
                    console.log(response);
                    if(response.status == 'error'){
                        $('#btn_error').show().animate({left: '-250px'}).animate({left: '1px'});
                        $.each( response.errors, function( key, value ) {
                            $('.msg_error').append('<p>'+value+'</p>');
                        });
                    }
                    if(response.status == 'success'){
                        if (action == 'insert') {
                            // $('.error_msg').html('State Id '+$('#GMSMHStateId').val()+' Added successfully');
                             $finalMessage3SIS = fnSingleLevelFinalSave('State', $('#GMSMHStateId').val(),$('#GMSMHDesc1').val(), 'Added');

                             $('.error_msg').html($finalMessage3SIS);

                            $('#GMSMHCountryId').val('').trigger("change");
                            $('#AddForm')[0].reset();
                            // $('.error_msg').html('State added successfully');
                        }
                        if(action == 'update'){

                            Swal.fire({
                                icon: 'success',
                                title: 'State update successfully',
                                allowOutsideClick:false,
                                timer:5000,
                            })
                        }
                    }
                    if(response.status == 'error'){
                        $('.error_msg').append('<p>State Master not save</p>');
                    }
                }
        })
    }
    });
   $('#btn_error').click(function () {
    // $('.modal-title').text('Add ' + $modalTitle);
    $('#ErrorModal').modal('show');
   });

   $('#Undelete_Data').click(function () {
    $('#UndoModalTable').DataTable({
        stripeClasses: [],
        pageLength: 6,
        lengthMenu: [6, 10, 20, 50],
        order: [[1, "desc"]],
        processing: true,
        serverSide: true,
        destroy: true,
        "ajax": "/state/Delete/list",
        "columns": [
            { data: "GMSMHStateId" },
            { data: "GMSMHDesc1" },
            { data: "fn_country.GMCMHDesc1" },
            { data: "GMSMHUser" },
            { data: "action", orderable: false, searchable: false },
            { data: "id", "visible": false },
        ]
    });
    $('.modal-title').text('Restore State');
    $('#UndoModal').modal('show');
});

$(document).on('click', '.delete', function () {
    var action = 'delete';
    var id = $(this).attr('id');
    // var currentRow=$(this).closest("tr");
    // alert(currentRow.find("td:eq(1)").text());
    var desc = $(this).closest("tr").find("td:eq(1)").text();
    $deleteMessage3SIS = fnConfirmationMsg('Delete', 'State', id,desc);
    $successMessage3SIS = fnSuccessMsg('Deleted', 'State', id,desc);

 Swal.fire({
        title: $deleteMessage3SIS,
        // text: "This State Id " + id,
        // text: $deleteMessage3SIS,
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'delete!',
        allowOutsideClick:false,
    }).then((result) => {
         console.log(result)
        if (result.isConfirmed) {
             $.ajax({
            url: "/state/Master/Delete",
            mehtod: "get",
            data: { id: id ,action:action},
            success: function (data) {
                console.log(data);
                $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                  Swal.fire({
                        icon: 'success',
                        title: $successMessage3SIS,
                        allowOutsideClick:false,
                        timer:5000,
                  })
            }
        })
        }
    })
});

$(document).on('click', '.restore', function () {
    var action = 'undelete';
    var id = $(this).attr('id');
    var desc = $(this).closest("tr").find("td:eq(1)").text();
    $restoreMessage3SIS = fnConfirmationMsg('Restore', 'State', id,desc);

        Swal.fire({
                title: $restoreMessage3SIS,
                // text: "Restore this State Id " + id,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Restore!',
                allowOutsideClick:false,
            }).then((result) => {
                 console.log(result)
                if (result.isConfirmed) {
                    $.ajax({
                    url: "/state/Master/Delete",
                    mehtod: "get",
                    data: { id: id,action:action },
                    success: function (data) {
                        console.log(data);
                        $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                        $('#UndoModalTable').DataTable().ajax.reload();
                        Swal.fire({
                        icon: 'success',
                        title: 'Your data has been Restored.',
                        })
                    }
                })
                }
            })
});
</script>
@endsection