@extends('layouts.app')
@section('content')
@section('css')
    @include('inc.style')
    @include('inc.flatpickr_css')
    @if (Request::path() == 'adHocIncome')
        @include('inc.datatable')
    @endif
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>

    <style>
        #landingPageBrowser3SIS_info {
            margin-top: 2px;
        }

        .input_border {
            border-color: rgb(102, 175, 233) !important;
            outline: 0px !important;
        }

        .section {
            width: 100%;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        .section:nth-child(odd) {
            background: rgb(157, 118, 248);
        }

        .section:nth-child(even) {
            background: rgb(70, 27, 187);
        }
    </style>
@endsection
<form id='AddForm' method="post" autocomplete="off">

    <meta name="csrf-token" content="{{ csrf_token() }}">
    @if (Request::path() == 'adHocIncome')
        <div class="mt-1"
            style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
            <div class="row justify-content-center">
                <div class="col-auto me-auto mt-2">
                </div>
                <div class="col-auto">
                    <button id="save" class="btn btn-success">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-save">
                            <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                            <polyline points="17 21 17 13 7 13 7 21"></polyline>
                            <polyline points="7 3 7 8 15 8"></polyline>
                        </svg>
                    </button>

                    <a href="#" class="btn btn-danger" id="btn_error" title="Error"><svg
                            xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-alert-circle">
                            <circle cx="12" cy="12" r="10"></circle>
                            <line x1="12" y1="8" x2="12" y2="12"></line>
                            <line x1="12" y1="16" x2="12.01" y2="16"></line>
                        </svg></a>

                    <a class="btn btn-light btn-icon" href="{{ url('adHocIncome_report/excel') }}" target="_blank"
                        title="Excel">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="48px" height="48px">
                            <path fill="#169154" d="M29,6H15.744C14.781,6,14,6.781,14,7.744v7.259h15V6z" />
                            <path fill="#18482a" d="M14,33.054v7.202C14,41.219,14.781,42,15.743,42H29v-8.946H14z" />
                            <path fill="#0c8045" d="M14 15.003H29V24.005000000000003H14z" />
                            <path fill="#17472a" d="M14 24.005H29V33.055H14z" />
                            <g>
                                <path fill="#29c27f" d="M42.256,6H29v9.003h15V7.744C44,6.781,43.219,6,42.256,6z" />
                                <path fill="#27663f"
                                    d="M29,33.054V42h13.257C43.219,42,44,41.219,44,40.257v-7.202H29z" />
                                <path fill="#19ac65" d="M29 15.003H44V24.005000000000003H29z" />
                                <path fill="#129652" d="M29 24.005H44V33.055H29z" />
                            </g>
                            <path fill="#0c7238"
                                d="M22.319,34H5.681C4.753,34,4,33.247,4,32.319V15.681C4,14.753,4.753,14,5.681,14h16.638 C23.247,14,24,14.753,24,15.681v16.638C24,33.247,23.247,34,22.319,34z" />
                            <path fill="#fff"
                                d="M9.807 19L12.193 19 14.129 22.754 16.175 19 18.404 19 15.333 24 18.474 29 16.123 29 14.013 25.07 11.912 29 9.526 29 12.719 23.982z" />
                        </svg>
                    </a>
                    <a class="btn btn-light btn-icon" href="{{ url('adHocIncome_report/pdf') }}" target="_blank"
                        title="Pdf">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 48 48" width="48px" height="48px">
                            <path fill="#e53935"
                                d="M38,42H10c-2.209,0-4-1.791-4-4V10c0-2.209,1.791-4,4-4h28c2.209,0,4,1.791,4,4v28 C42,40.209,40.209,42,38,42z" />
                            <path fill="#fff"
                                d="M34.841,26.799c-1.692-1.757-6.314-1.041-7.42-0.911c-1.627-1.562-2.734-3.45-3.124-4.101 c0.586-1.757,0.976-3.515,1.041-5.402c0-1.627-0.651-3.385-2.473-3.385c-0.651,0-1.237,0.391-1.562,0.911 c-0.781,1.367-0.456,4.101,0.781,6.899c-0.716,2.018-1.367,3.97-3.189,7.42c-1.888,0.781-5.858,2.604-6.183,4.556 c-0.13,0.586,0.065,1.172,0.521,1.627C13.688,34.805,14.273,35,14.859,35c2.408,0,4.751-3.32,6.379-6.118 c1.367-0.456,3.515-1.107,5.663-1.497c2.538,2.213,4.751,2.538,5.923,2.538c1.562,0,2.148-0.651,2.343-1.237 C35.492,28.036,35.297,27.32,34.841,26.799z M33.214,27.905c-0.065,0.456-0.651,0.911-1.692,0.651 c-1.237-0.325-2.343-0.911-3.32-1.692c0.846-0.13,2.734-0.325,4.101-0.065C32.824,26.929,33.344,27.254,33.214,27.905z M22.344,14.497c0.13-0.195,0.325-0.325,0.521-0.325c0.586,0,0.716,0.716,0.716,1.302c-0.065,1.367-0.325,2.734-0.781,4.036 C21.824,16.905,22.019,15.083,22.344,14.497z M22.214,27.124c0.521-1.041,1.237-2.864,1.497-3.645 c0.586,0.976,1.562,2.148,2.083,2.669C25.794,26.213,23.776,26.604,22.214,27.124z M18.374,29.728 c-1.497,2.473-3.059,4.036-3.905,4.036c-0.13,0-0.26-0.065-0.391-0.13c-0.195-0.13-0.26-0.325-0.195-0.586 C14.078,32.136,15.77,30.899,18.374,29.728z" />
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    @endif




    <!--adHocIncome List Table -->
    @if (Request::path() == 'adHocIncome')
        {{-- <div class="table-responsive mt-2" id="add"> --}}

        <div class="row g-3">

            <div class="col-md-4">
                <label for="dropdown" class="form-label">Employee Id<span class="text-danger">
                        *</span> </label>
                <select id='EMGIHEmployeeId' name='EMGIHEmployeeId' class="form-select"
                    style="width: 100%;border: 1px solid #68a6ec;">
                    <option value=''>Select Employee</option>
                    @foreach ($employee_list as $employee)
                        <option value='{{ $employee->EMGIHEmployeeId }}'>
                            {{ $employee->EMGIHFullName }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-md-3">
                <label for="Location" class="form-label">Location</label>
                <input type="hidden" name='EMGIHLocationId' id='EMGIHLocationId' class='form-control'>
                <input type="text" name='locationDesc' id='locationDesc' class='form-control'
                    placeholder="Location" style='border-color: rgb(102, 175, 233); outline: 0px' readonly>
            </div>
            <div class="col-md-3">
                <label for="Location" class="form-label">Active Period</label>
                <input type="number" name='ActivePeriod' id='ActivePeriod' class='form-control'
                    placeholder="Active Period" value={{ $ActivePeriod }}
                    style='border-color: rgb(102, 175, 233); outline: 0px' readonly>
            </div>
        </div>
        <div class="row" id="AdHocIncome">
            <div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-auto me-auto mt-2">
                                <h3>Ad-Hoc Income</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <table class="table table-bordered" id="detail_table">
                            <tr>

                                <th>Income Id</th>
                                {{-- <th title="From Date">From Date</th> --}}
                                {{-- <th title="To Date">To Date</th> --}}
                                <th>Gross Amount</th>
                                <th>Gross Payment</th>
                                {{-- <th title="Balance Amount">B_Amt</th> --}}
                                <th>Action</th>
                            </tr>

                            {{-- @if ($action == 'add') --}}
                            <input type="hidden" value="add" name="action" />
                            <tr>
                                <td><select name='adHocIncome[0][income_id]' class="form-select"
                                        style="width: 100%;border: 1px solid #68a6ec;">
                                        <option value=''>Select Income Type</option>
                                        @foreach ($income_list as $income)
                                            <option value='{{ $income->PMITHIncomeId }}'>
                                                {{ $income->PMITHDesc1 }}</option>
                                        @endforeach
                                    </select></td>

                                {{-- <td><input type="date" name="adHocIncome[0][from_date]" id="from_date"
                                        placeholder="Enter From Date" class="form-control" /></td>
                                <td><input type="date" name="adHocIncome[0][to_date]"
                                        placeholder="Enter To Date" class="form-control" value="2023-06-30" /> --}}
                                {{-- </td> --}}
                                <td><input type="number" name="adHocIncome[0][gross_amt]"
                                        placeholder="Enter Gross Amt" class="form-control" /></td>
                                <td><input type="number" name="adHocIncome[0][gross_payment]"
                                        placeholder="Enter Gross Payment" class="form-control" /></td>

                                <td><button type="button" name="add" id="add-btn" class="btn btn-success">Add
                                        More</button></td>
                            </tr>
                            {{-- @endif --}}

                            {{-- @if ($action == 'edit')
                            <input type="hidden" value="edit" name="action" />
                            @foreach ($adHocIncome_list as $key => $value)
                                <tr>
                                    <input type="hidden" value="{{ $value['id'] }}"
                                        name="adHocIncome[{{ $value['id'] }}][id]" class="form-control" />
                                    <td><input type="date"
                                            value="{{ date('Y-m-d', strtotime($value['LALBDStartDateEMI'])) }}"
                                            name="adHocIncome[{{ $value['id'] }}][from_date]"
                                            placeholder="Enter From Date" class="form-control" />
                                    <td><input type="date"
                                            value="{{ date('Y-m-d', strtotime($value['LALBDEndDateEMI'])) }}"
                                            name="adHocIncome[{{ $value['id'] }}][to_date]"
                                            placeholder="Enter To Date" class="form-control" />
                                    <td><input type="number" value="{{ $value['LALBDEMIAmount'] }}"
                                            name="adHocIncome[{{ $value['id'] }}][gross_amt]"
                                            placeholder="Enter Gross Amt" class="form-control" /></td>
                                    <td><input type="number" value="{{ $value['LALBDPaidAmount'] }}"
                                            name="adHocIncome[{{ $value['id'] }}][gross_payment]"
                                            placeholder="Enter Gross Payment" class="form-control" /></td>

                                    @if ($key == 0)
                                        <td><button type="button" name="add" id="add-btn"
                                                class="btn btn-success">Add More</button></td>
                                    @else
                                        <td><button type="button"
                                                class="btn btn-danger remove-tr">Remove</button></td>
                                    @endif
                                </tr>
                            @endforeach
                        @endif --}}
                        </table>
                    </div>
                </div>
            </div>
        </div>
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
    @endif
</form>

@endsection
@section('js_code')
@include('inc.js_file')
@include('inc.flatpickr_js')
<script type="text/javascript">
    $(document).ready(function() {
        $('#EMGIHEmployeeId').select2();
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }

        });



        $('#btn_error').hide();
    });
    $("#AddForm").submit(function(e) {
        alert('test');
        var action = $('#action').val();
        e.preventDefault();
        $('.msg_error').html('');
        $('#select2-EMGIHEmployeeId-container')
            .removeClass(
                'border border-danger');
        if ($('#EMGIHEmployeeId').val() == '') {
            $('#select2-EMGIHEmployeeId-container').addClass('border border-danger');
            $('.msg_error').append('<p>Please Select Employee Id !</p>');

        }

        var error_count = $(".msg_error").children().length;
        // console.log(error_count);
        if (error_count > 0) {
            $('#btn_error').show().animate({
                left: '-250px'
            }).animate({
                left: '1px'
            });
            return false;
        } else {
            $.ajax({
                url: "{{ url('adHocIncome_save') }}",
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

                        Swal.fire({
                            icon: 'success',
                            title: 'Ad-Hoc Income updated successfully',
                            allowOutsideClick: false,
                            timer: 5000,
                        })
                        window.location = "{{ url('adHocIncome') }}";

                    }
                    if (response.status == 'error') {
                        $('.error_msg').append('<p>Ad-Hoc Income Master not save</p>');
                    }
                }
            })
        }
    });
    $("#EMGIHEmployeeId").change(function() {
        var id = $(this).val();
        getLocation(id)
    });

    $('#EMGIHEmployeeId').on('change', function(e) {
        $.ajax({
            url: "{{ url('get_adhoc_income') }}",
            type: 'post',
            data: 'id=' + $(this).val(),
            success: function(response) {

            }
        });

    });

    $('#btn_error').click(function() {
        $('#ErrorModal').modal('show');
    });

    function getLocation(id) {
        $.ajax({
            url: "{{ url('get_location_desc1') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#EMGIHLocationId').val(response.locationId);
                $('#locationDesc').val(response.locationDesc);
            }
        });
    }



    var i = 0;
    $(document).on('click', '#add-btn', function() {
        ++i;
        $("#detail_table").append(
            '<tr><td><select name="adHocIncome[' +
            i +
            '][income_id]" class="form-select">  <option value="">Select Income Type</option>@foreach ($income_list as $income) <option value="{{ $income->PMITHIncomeId }}"> {{ $income->PMITHDesc1 }}</option>@endforeach </select></td><td><input type="number" name="adHocIncome[' +
            i +
            '][gross_amt]" placeholder="Enter Gross Amt" class="form-control" /></td><td><input type="number" name="adHocIncome[' +
            i +
            '][gross_payment]" placeholder="Enter Gross Payment" class="form-control" /></td><td><button type="button" class="btn btn-danger remove-tr">Remove</button></td></tr>'
        );
    });



    $(document).on('click', '.remove-tr', function() {
        $(this).parents('tr').remove();
    });
    if ($('#LALBHStartDateEMI').val() != undefined) {
        $('#LALBHStartDateEMI').flatpickr({
            dateFormat: "d-m-Y"
        });
        if ($('#LALBHEndDateEMI').val() != undefined) {
            $('#LALBHEndDateEMI').flatpickr({
                dateFormat: "d-m-Y"
            });
        }
    }
</script>
@endsection
