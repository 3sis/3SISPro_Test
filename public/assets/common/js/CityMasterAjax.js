$(document).ready(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $modalTitle = 'City'
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
        "ajax": "/get/city",
        "columns": [
            { data: "GMCTHCityId" },
            { data: "GMCTHDesc1" },
            { data: "fn_state.GMSMHDesc1" },
            { data: "fn_country.GMCMHDesc1" },
            { data: "GMCTHUser" },
            { data: "action", orderable: false, searchable: false },
            { data: "GMCTHDesc1", "visible": false },
            { data: "GMCTHDesc2", "visible": false },
            { data: "GMCTHUser", "visible": false },
            { data: "GMCTHLastCreated", "visible": false },
            { data: "id", "visible": false },
        ],

        "columnDefs": [
            { "width": "5%", "targets": 0 },
            { "width": "25%", "targets": 1 },
            { "width": "25%", "targets": 2 },
            { "width": "25%", "targets": 3 },
            { "width": "15%", "targets": 4 },
            { "width": "15%", "targets": 6 }
        ]
    });

});
$('#add_Data').click(function () {
    $('#id').val('');
    $('#GMCTHStateId').val('').trigger("change");
    $('#singleLevelDataEntryForm')[0].reset();
    // $('#form_output').html('');
    $('#action').val('Save');
    $('.btn_action').text('Add');
    $('#button_action').val('insert');
    $('.msg_error').empty();
    $('.btn_error').hide();
    $('#GMCTHCityId').prop('readonly',false);
    $('.modal-title').text('Add ' + $modalTitle);


    fnFormControlColorChange();

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
        "ajax": "/city/Delete/list",
        "columns": [
            { data: "GMCTHCityId" },
            { data: "GMCTHDesc1" },
            { data: "fn_state.GMSMHDesc1" },
            { data: "fn_country.GMCMHDesc1" },
            { data: "GMCTHUser" },
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
    var desc = $(this).closest("tr").find("td:eq(1)").text();
    $restoreMessage3SIS = fnConfirmationMsg('Restore', 'City', id,desc);

        Swal.fire({
                title: $restoreMessage3SIS,
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
                    url: "/city/Master/Delete",
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
    $('#id').val('');
    $('#GMCTHStateId').val('').trigger("change");
    $('#singleLevelDataEntryForm')[0].reset();
    $('#form_output').html('');

    $('.modal-title').text('Edit ' + $modalTitle);
    $('.btn_action').text('Update');
    $('.btn_error').hide();
    $('.msg_show').hide();
    $('.msg_error').empty();
    $('#button_action').val('update');
    $('#entryModalSmall').modal('show');
    $('#GMCTHCityId').prop('readonly',true);
     var id = $(this).attr('id');
     $.ajax({
        url: "/city/Master/Update",
        method: 'GET',
        data: { id: id },
        dataType: 'json',
        success: function (response) {
            if(response.status == 'success'){
                 console.log(response.data);
                $('#id').val(response.data.id);
                $('#GMCTHCityId').val(response.data.GMCTHCityId);
                $('#GMCTHDesc1').val(response.data.GMCTHDesc1);
                $('#GMCTHDesc2').val(response.data.GMCTHDesc2);
                $('#GMCTHStateId').val(response.data.GMCTHStateId).trigger('change');
                $('#GMCTHCountryId').val(response.data.GMCTHCountryId);
                $('#countryName').val(response.data.fn_country.GMCMHDesc1);
            }
            if(response.status == 'error'){
                $('.msg_error').append('<p>City Master not found!</p>');
            }
        }
    })
});
$('#singleLevelDataEntryForm').on('submit', function (event) {
    event.preventDefault();
    var action = $('#button_action').val();
    $('.msg_error').html('');

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
                    // console.log(response);
                    if(response.errors != ''){
                        // getErrorMsgOnErrorBtn();
                        $('.btn_error').show();
                        $.each( response.errors, function( key, value ) {
                            $('.msg_error').append('<p>'+value+'</p>');

                            $('span.' + key + '_error').text(value[0]);
                            $('#' + key).css('border-color', '#dc3545');
                        });
                    }
                    if(response.status == 'success'){
                        if (action == 'insert') {
                            $finalMessage3SIS = fnSingleLevelFinalSave('City', $('#GMCTHCityId').val(),$('#GMCTHDesc1').val(), 'Added');

                        }else{
                            $finalMessage3SIS = fnSuccessMsg('Edited', 'City', $('#GMCTHCityId').val(),$('#GMCTHDesc1').val());
                        }
                        $('#FinalSaveMessage').html($finalMessage3SIS);
                        fnReinstateFormControl('0');

                        if(action == 'update'){
                            Swal.fire({
                                icon: 'success',
                                title: $finalMessage3SIS,
                                allowOutsideClick:false,
                                timer:5000,
                            })
                            $('#entryModalSmall').modal('hide');
                        }
                        else {
                            $('#form_output').html($finalMessage3SIS);
                        }

                        $('.btn_error').hide();
                        $('#GMCTHStateId').val('').trigger("change");
                        $('#singleLevelDataEntryForm')[0].reset();
                        $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                    }
                    if(response.status == 'error'){
                        $('.msg_error').append('<p>City Master not save</p>');
                    }
                }
        })




    // }
});

$(document).on('click', '.delete', function () {
    var action = 'delete';
    var id = $(this).attr('id');
    // var currentRow=$(this).closest("tr");
    // alert(currentRow.find("td:eq(1)").text());
    var desc = $(this).closest("tr").find("td:eq(1)").text();
    $deleteMessage3SIS = fnConfirmationMsg('Delete', 'City', id,desc);
    $successMessage3SIS = fnSuccessMsg('Deleted', 'City', id,desc);

 Swal.fire({
        title: $deleteMessage3SIS,
        // text: "This City Id " + id,
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
            url: "/city/Master/Delete",
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
function getErrorMsgOnErrorBtn(){
    $('.msg_error').html('');
    if($('#GMCTHCityId').val() == '' || $('#GMCTHDesc1').val() == ''
        || $('#GMCTHDesc2').val() == '' || $('#GMCTHStateId').val() == ''){
        if($('#GMCTHCityId').val() == ''){
           $('.msg_error').append('<p>Please Enter City name !</p>');
        }
       if($('#GMCTHDesc1').val() == ''){
            $('.msg_error').append('<p>Please Enter City Description 1 !</p>');
       }
       if($('#GMCTHDesc2').val() == ''){
             $('.msg_error').append('<p>Please Enter City Description 2 !</p>');
       }
       if($('#GMCTHStateId').val() == ''){
            $('.msg_error').append('<p>Please Select State !</p>');
       }
    }
}
$('#GMCTHStateId').change(function () {
    let id = $(this).val();
    // alert(id);
    console.log(id);
    $.ajax({
        url: "/geographic/State",
        type: 'post',
        data: 'id=' + id,
        // data:'id=' + id + '&_token={{csrf_token()}}',

        // headers: {
        //     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        // },
        success: function (response) {
            $('#GMCTHCountryId').val(response.CountryId);
            $('#countryName').val(response.CountryDesc);
        }
    })
});
