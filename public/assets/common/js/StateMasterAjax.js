 $(document).ready(function() {
        // $.ajaxSetup({
        //     headers: {
        //         'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        //      }
        // });
        $('#landingPageBrowser3SIS').DataTable({
            buttons: {
                buttons: [{
                        extend: 'excel',
                        className: 'btn'
                    },
                    {
                        extend: 'print',
                        className: 'btn'
                    }
                ]
            },
            "oLanguage": {
                "oPaginate": {
                    "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" \
                fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" \
                class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5">\
                </polyline></svg>',
                    "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" \
                viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" \
                stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line>\
                <polyline points="12 5 19 12 12 19"></polyline></svg>'
                },
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
            "columns": [{
                    data: "GMSMHStateId"
                },
                {
                    data: "GMSMHDesc1"
                },
                {
                    data: "fn_country.GMCMHDesc1"
                },
                {
                    data: "GMSMHUser"
                },
                {
                    data: "action",
                    orderable: false,
                    searchable: false
                },
                {
                    data: "GMSMHDesc1",
                    "visible": false
                },
                {
                    data: "GMSMHDesc2",
                    "visible": false
                },
                {
                    data: "GMSMHUser",
                    "visible": false
                },
                {
                    data: "GMSMHLastCreated",
                    "visible": false
                },
                {
                    data: "id",
                    "visible": false
                },
            ],

            "columnDefs": [{
                    "width": "5%",
                    "targets": 0
                },
                {
                    "width": "25%",
                    "targets": 1
                },
                {
                    "width": "25%",
                    "targets": 2
                },
                {
                    "width": "25%",
                    "targets": 3
                },
                {
                    "width": "15%",
                    "targets": 4
                }
            ]
        });

        $('#GMSMHCountryId').select2({
            // theme: "bootstrap-5"
        });

        $('#btn_error').hide();
    });

    $("#AddForm").submit(function(e) {
        e.preventDefault();
        $('#GMSMHStateId,#GMSMHDesc1,#select2-GMSMHCountryId-container').removeClass(
            'border border-danger');

        if ($('#GMSMHStateId').val() == '') {
            $('#GMSMHStateId').addClass('border border-danger');
        }
        if ($('#GMSMHDesc1').val() == '') {
            $('#GMSMHDesc1').addClass('border border-danger');

        }
        // if($('#GMSMHDesc2').val() == ''){
        // $('#GMSMHDesc2').addClass('border border-danger');
        // }
        if ($('#GMSMHCountryId').val() == '') {
            $('#select2-GMSMHCountryId-container').addClass('border border-danger');
        }
        $('.msg_error').html('');
        if ($('#GMSMHStateId').val() == '' || $('#GMSMHDesc1').val() == '' ||
            $('#GMSMHCountryId').val() == '') {
            if ($('#GMSMHStateId').val() == '') {
                $('.msg_error').append('<p>Please Enter State name !</p>');
            }
            if ($('#GMSMHDesc1').val() == '') {
                $('.msg_error').append('<p>Please Enter State Description 1 !</p>');
            }
            // if($('#GMSMHDesc2').val() == ''){
            //       $('.msg_error').append('<p>Please Enter State Description 2 !</p>');
            // }
            if ($('#GMSMHCountryId').val() == '') {
                $('.msg_error').append('<p>Please Select Country !</p>');
            }
            var error_count = $(".msg_error").children().length;
            console.log(error_count);
            if (error_count > 0) {
                $('#btn_error').show().animate({
                    left: '-250px'
                }).animate({
                    left: '1px'
                });
            }
            return false;
        } else {
            var action = $('#action').val();
            console.log('action: ' + action);
            $.ajax({
                url: "{{ url('state_save') }}",
                method: 'post',
                data: new FormData(this),
                processData: false,
                dataType: "json",
                contentType: false,
                beforeSend: function() {
                    $('#btn_error').hide();
                },
                success: function(response) {
                    console.log(response);
                    if (response.status == 'error') {
                        $('#btn_error').show().animate({
                            left: '-250px'
                        }).animate({
                            left: '1px'
                        });
                        $.each(response.errors, function(key, value) {
                            $('.msg_error').append('<p>' + value + '</p>');
                        });
                    }
                    if (response.status == 'success') {
                        if (action == 'insert') {
                            $finalMessage3SIS = fnSingleLevelFinalSave('State', $('#GMSMHStateId')
                                .val(), $('#GMSMHDesc1').val(), 'Added');
                            $('.error_msg').html($finalMessage3SIS);
                            $('#GMSMHCountryId').val('').trigger("change");
                            $('#AddForm')[0].reset();
                        }
                        if (action == 'update') {

                            Swal.fire({
                                icon: 'success',
                                title: 'State update successfully',
                                allowOutsideClick: false,
                                timer: 5000,
                            })
                        }
                    }
                    if (response.status == 'error') {
                        $('.error_msg').append('<p>State Master not save</p>');
                    }
                }
            })
        }
    });
    $('#btn_error').click(function() {
        $('#ErrorModal').modal('show');
    });

    $('#Undelete_Data').click(function() {
        $('#UndoModalTable').DataTable({
            stripeClasses: [],
            pageLength: 6,
            lengthMenu: [6, 10, 20, 50],
            order: [
                [1, "desc"]
            ],
            processing: true,
            serverSide: true,
            destroy: true,
            "ajax": "delete_state_list",
            "columns": [{
                    data: "GMSMHStateId"
                },
                {
                    data: "GMSMHDesc1"
                },
                {
                    data: "fn_country.GMCMHDesc1"
                },
                {
                    data: "GMSMHUser"
                },
                {
                    data: "action",
                    orderable: false,
                    searchable: false
                },
                {
                    data: "id",
                    "visible": false
                },
            ]
        });
        $('.modal-title').text('Restore State');
        $('#UndoModal').modal('show');
    });

    $(document).on('click', '.delete', function() {
        var action = 'delete';
        var id = $(this).attr('id');
        var desc = $(this).closest("tr").find("td:eq(1)").text();
        $deleteMessage3SIS = fnConfirmationMsg('Delete', 'State', id, desc);
        $successMessage3SIS = fnSuccessMsg('Deleted', 'State', id, desc);

        Swal.fire({
            title: $deleteMessage3SIS,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'delete!',
            allowOutsideClick: false,
        }).then((result) => {
            console.log(result)
            if (result.isConfirmed) {
                $.ajax({
                    url: "state_delete",
                    mehtod: "get",
                    data: {
                        id: id,
                        action: action
                    },
                    success: function(data) {
                        console.log(data);
                        $('#landingPageBrowser3SIS').DataTable().ajax.reload();
                        Swal.fire({
                            icon: 'success',
                            title: $successMessage3SIS,
                            allowOutsideClick: false,
                            timer: 5000,
                        })
                    }
                })
            }
        })
    });

    $(document).on('click', '.restore', function() {
        var action = 'undelete';
        var id = $(this).attr('id');
        var desc = $(this).closest("tr").find("td:eq(1)").text();
        $restoreMessage3SIS = fnConfirmationMsg('Restore', 'State', id, desc);
        Swal.fire({
            title: $restoreMessage3SIS,
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Restore!',
            allowOutsideClick: false,
        }).then((result) => {
            console.log(result)
            if (result.isConfirmed) {
                $.ajax({
                    url: "state_delete",
                    mehtod: "get",
                    data: {
                        id: id,
                        action: action
                    },
                    success: function(data) {
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