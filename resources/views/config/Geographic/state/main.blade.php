@extends('layouts.app')
@section('content')
@section('css')
@include('inc.style')
@if($manage == 'manage')
  @include('inc.datatable')
@endif
<style>
   #landingPageBrowser3SIS_info{
   margin-top: 2px;
   }
   #input_border{
   border-color: rgb(102, 175, 233); 
   outline: 0px
   }
</style>
@endsection
<div class="mt-1" style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
   <form id='AddForm' method="post" autocomplete="off">
      <div class="row justify-content-center">

         <div class="col-auto me-auto mt-2 error_msg">
         </div>
         
         <div class="col-auto">
            @if($manage == 'add' || $manage == 'edit')
            <a href="#" class="btn btn-danger" id="btn_error">Error</a>
            <a href="{{ url('manage-state') }}" class="btn btn-info">Back</a>
            <button id="save" class="btn btn-success">{{$manage == 'add' ? 'Add' : 'Edit'}}</button>
            @endif
            @if($manage == 'manage')
            <a class="btn btn-danger btn-icon btnUnDeleteRec3SIS" href="javascript:void(0)" id='Undelete_Data' class='' title="Restore">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-rotate-ccw"><polyline points="1 4 1 10 7 10"></polyline><path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"></path></svg>
            </a>
            <a class="btn btn-success btn-icon" href="{{ url('add-state') }}">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-plus"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
            </a>

            <a class="btn btn-light btn-icon" href="{{ url('state_report/excel') }}" target="_blank">
<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 48 48" width="48px" height="48px"><path fill="#169154" d="M29,6H15.744C14.781,6,14,6.781,14,7.744v7.259h15V6z"/><path fill="#18482a" d="M14,33.054v7.202C14,41.219,14.781,42,15.743,42H29v-8.946H14z"/><path fill="#0c8045" d="M14 15.003H29V24.005000000000003H14z"/><path fill="#17472a" d="M14 24.005H29V33.055H14z"/><g><path fill="#29c27f" d="M42.256,6H29v9.003h15V7.744C44,6.781,43.219,6,42.256,6z"/><path fill="#27663f" d="M29,33.054V42h13.257C43.219,42,44,41.219,44,40.257v-7.202H29z"/><path fill="#19ac65" d="M29 15.003H44V24.005000000000003H29z"/><path fill="#129652" d="M29 24.005H44V33.055H29z"/></g><path fill="#0c7238" d="M22.319,34H5.681C4.753,34,4,33.247,4,32.319V15.681C4,14.753,4.753,14,5.681,14h16.638 C23.247,14,24,14.753,24,15.681v16.638C24,33.247,23.247,34,22.319,34z"/><path fill="#fff" d="M9.807 19L12.193 19 14.129 22.754 16.175 19 18.404 19 15.333 24 18.474 29 16.123 29 14.013 25.07 11.912 29 9.526 29 12.719 23.982z"/></svg>
            </a>
            <a class="btn btn-light btn-icon" href="{{ url('state_report/pdf') }}" target="_blank">
<svg xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 48 48" width="48px" height="48px"><path fill="#e53935" d="M38,42H10c-2.209,0-4-1.791-4-4V10c0-2.209,1.791-4,4-4h28c2.209,0,4,1.791,4,4v28 C42,40.209,40.209,42,38,42z"/><path fill="#fff" d="M34.841,26.799c-1.692-1.757-6.314-1.041-7.42-0.911c-1.627-1.562-2.734-3.45-3.124-4.101 c0.586-1.757,0.976-3.515,1.041-5.402c0-1.627-0.651-3.385-2.473-3.385c-0.651,0-1.237,0.391-1.562,0.911 c-0.781,1.367-0.456,4.101,0.781,6.899c-0.716,2.018-1.367,3.97-3.189,7.42c-1.888,0.781-5.858,2.604-6.183,4.556 c-0.13,0.586,0.065,1.172,0.521,1.627C13.688,34.805,14.273,35,14.859,35c2.408,0,4.751-3.32,6.379-6.118 c1.367-0.456,3.515-1.107,5.663-1.497c2.538,2.213,4.751,2.538,5.923,2.538c1.562,0,2.148-0.651,2.343-1.237 C35.492,28.036,35.297,27.32,34.841,26.799z M33.214,27.905c-0.065,0.456-0.651,0.911-1.692,0.651 c-1.237-0.325-2.343-0.911-3.32-1.692c0.846-0.13,2.734-0.325,4.101-0.065C32.824,26.929,33.344,27.254,33.214,27.905z M22.344,14.497c0.13-0.195,0.325-0.325,0.521-0.325c0.586,0,0.716,0.716,0.716,1.302c-0.065,1.367-0.325,2.734-0.781,4.036 C21.824,16.905,22.019,15.083,22.344,14.497z M22.214,27.124c0.521-1.041,1.237-2.864,1.497-3.645 c0.586,0.976,1.562,2.148,2.083,2.669C25.794,26.213,23.776,26.604,22.214,27.124z M18.374,29.728 c-1.497,2.473-3.059,4.036-3.905,4.036c-0.13,0-0.26-0.065-0.391-0.13c-0.195-0.13-0.26-0.325-0.195-0.586 C14.078,32.136,15.77,30.899,18.374,29.728z"/></svg>
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
      class="table dt-table-hover dataTable no-footer {{theme('table')}}">
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
      <div class="modal-content {{theme('card')}}">
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
                  <table id="UndoModalTable" class="{{theme('table')}}" style="width:100%">
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
@include('inc.js_file')
<!-- <script src={{ asset('assets/common/js/StateMasterAjax.js') }}></script> -->
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
        pageLength: 10,
        lengthMenu: [6, 10, 20, 50],
        order: [0, "desc"],
        processing: true,
        serverSide: true,
        "ajax": "get_state",
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
                url: "{{url('state_save')}}",
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
        "ajax": "delete_state_list",
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
            url: "state_delete",
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
                    url: "state_delete",
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