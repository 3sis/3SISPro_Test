$(document).ready(function () {
    $modalTitle = 'State'
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
});
$('#add_Data').click(function () {
    $('#id').val('');
    $('#GMSMHCountryId').val('').trigger("change");
    $('#singleLevelDataEntryForm')[0].reset(); 
    $('#form_output').html('');     
    $('#action').val('Save');
    $('.btn_action').text('Add');
    $('#button_action').val('insert');
    $('.msg_error').empty();
    $('.btn_error').hide();
    $('#GMSMHStateId').prop('readonly',false);
    $('.modal-title').text('Add ' + $modalTitle);
    $('#entryModalSmall').modal('show');
});

$('.btn_error').click(function () {
    $('.modal-title').text('Add ' + $modalTitle);
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
    $('.modal-title').text('Restore ' + $modalTitle);
    $('#UndoModal').modal('show');
});

$(document).on('click', '.restore', function () {
    var action = 'undelete';
    var id = $(this).attr('id');
     swal({
      title: 'Are you sure?',
      text: "Restore this State Id " + id,
      type: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Restore',
      padding: '2em'
    }).then(function(result) {
        console.log(result)
        // {"dismiss": "cancel"}
        // {"value": true}
      if (result.value) {
        $.ajax({
            url: "/state/Master/Delete",
            mehtod: "get",
            data: { id: id,action:action },
            success: function (data) {
                console.log(data);
                $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                $('#UndoModalTable').DataTable().ajax.reload();
                swal(
                     'Restore!',
                     'Your data has been Restored.',
                     'success'
                    )
            }
        })
       
      }
    })
});

$(document).on('click', '.edit', function () {
    $('.modal-title').text('Edit ' + $modalTitle);
    $('.btn_action').text('Update');
    $('.btn_error').hide();
    $('.msg_show').hide();
    $('.msg_error').empty();
    $('#button_action').val('update');
    $('#entryModalSmall').modal('show');
    $('#GMSMHStateId').prop('readonly',true);
     var id = $(this).attr('id');
     $.ajax({
        url: "/state/Master/Update",
        method: 'GET',
        data: { id: id },
        dataType: 'json',
        success: function (response) {
            if(response.status == 'success'){
                 console.log(response.data);
                $('#id').val(response.data.id);
                $('#GMSMHStateId').val(response.data.GMSMHStateId);
                $('#GMSMHDesc1').val(response.data.GMSMHDesc1);
                $('#GMSMHDesc2').val(response.data.GMSMHDesc2);
                $('#GMSMHCountryId').val(response.data.GMSMHCountryId).trigger('change');
            }
            if(response.status == 'error'){
                $('.msg_error').append('<p>State Master not found!</p>');
            }
        }
    })
});
$('#singleLevelDataEntryForm').on('submit', function (event) {
    event.preventDefault();
    var action = $('#button_action').val();
    $('.msg_error').html('');
    if($('#GMSMHStateId').val() == '' || $('#GMSMHDesc1').val() == '' 
        || $('#GMSMHDesc2').val() == '' || $('#GMSMHCountryId').val() == ''){
        if($('#GMSMHStateId').val() == ''){
           $('.msg_error').append('<p>Please Enter State name !</p>');
        }
       if($('#GMSMHDesc1').val() == ''){
            $('.msg_error').append('<p>Please Enter State Description 1 !</p>');
       }
       if($('#GMSMHDesc2').val() == ''){
             $('.msg_error').append('<p>Please Enter State Description 2 !</p>');
       }
       if($('#GMSMHCountryId').val() == ''){
            $('.msg_error').append('<p>Please Select Country !</p>');
       }
        var error_count =  $(".msg_error").children().length;
        if(error_count > 0){
            $('.btn_error').show();
        }
       return false;
    }else{
                $.ajax({
                        url: $(this).attr('action'),
                        method: $(this).attr('method'),
                        data: new FormData(this),
                        processData: false,
                        dataType: "json",
                        contentType: false,
                        beforeSend: function () {
                            $(document).find('span.error-text').text('');
                        },
                        success: function (response) {
                            console.log(response);
                            if(response.errors != ''){
                                $('.btn_error').show();
                                $.each( response.errors, function( key, value ) {
                                  $('.msg_error').append('<p>'+value+'</p>');
                                });
                            }
                            if(response.status == 'success'){
                                if(action == 'update'){
                                 $('#entryModalSmall').modal('hide');
                                }
                                swal({
                                      title: 'Good job!',
                                      text: "You clicked the!",
                                      type: 'success',
                                      padding: '2em'
                                })
                                $('.btn_error').hide();
                                $('.msg_show').empty().append('<p>State Master saved successfully</p>');
                                $('#GMSMHCountryId').val('').trigger("change");
                                $('#singleLevelDataEntryForm')[0].reset();
                                $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                            }
                            if(response.status == 'error'){
                                $('.msg_error').append('<p>State Master not save</p>');
                            }
                        }
                    })
    }
});

$(document).on('click', '.delete', function () {
    var action = 'delete';
    var id = $(this).attr('id');
     swal({
      title: 'Are you sure?',
      text: "This State Id " + id,
      type: 'warning',
      showCancelButton: true,
      confirmButtonText: 'Delete',
      padding: '2em'
    }).then(function(result) {
        console.log(result)
        // {"dismiss": "cancel"}
        // {"value": true}
      if (result.value) {
        $.ajax({
            url: "/state/Master/Delete",
            mehtod: "get",
            data: { id: id ,action:action},
            success: function (data) {
                console.log(data);
                $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                swal(
                     'Deleted!',
                     'Your file has been deleted.',
                     'success'
                    )
            }
        })
       
      }
    })
});
$('#GMSMHCountryId').select2({
  dropdownParent: $('#entryModalSmall')
});