@extends('layouts.app')
@section('content')
@section('css')
    @include('inc.style')
    <link rel="stylesheet" type="text/css" href="{{asset('assets/css3SIS/scrollspy.css')}}">
    @include('inc.flatpickr_css')

    <meta name="csrf-token" content="{{ csrf_token() }}">

    @if (Request::path() == 'generalInfo')
        @include('inc.datatable')
    @endif
    <style>
        #landingPageBrowser3SIS_info {
            margin-top: 2px;
        }

        #input_border {
            border-color: rgb(102, 175, 233);
            outline: 0px
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

@if (Request::path() == 'generalInfo')
    <div class="mt-1"
        style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
            <div class="row justify-content-center">
                <div class="col-auto me-auto mt-2">
                </div>
                <div class="col-auto">
                    <a class="btn btn-danger btn-icon btnUnDeleteRec3SIS" href="javascript:void(0)" id='Undelete_Data'
                        class='' title="Restore">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-rotate-ccw">
                            <polyline points="1 4 1 10 7 10"></polyline>
                            <path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"></path>
                        </svg>
                    </a>
                    <a class="btn btn-success btn-icon" href="{{ url('generalInfo/add') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-plus">
                            <line x1="12" y1="5" x2="12" y2="19"></line>
                            <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg>
                    </a>
                    <a class="btn btn-light btn-icon" href="{{ url('generalInfo_report/excel') }}" target="_blank">
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
                    <a class="btn btn-light btn-icon" href="{{ url('generalInfo_report/pdf') }}" target="_blank">
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


<!-- Scroll Spy Navigation -->
@if ($action == 'add' || $action == 'edit')
    <nav id="navbar-example2" class="navbar sticky-top scrollspy_menu" style="top:100px;">
        <div class="col-auto me-auto mt-2" style="width:850px;">
            <form id='AddForm' method="post" autocomplete="off">
             <div class="container" id="list1-wrapper">
              <div class="wrapper">
              <div class="nav nav-tabs list" id="list1" role="tablist">
                <li class="nav-item" id="nav-home-tab"> <a class="nav-link" href="#general_info_link1">{{ $action == 'add' ? 'Create' : 'Edit' }} </a></li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#general_info_link1">General Info</a></li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#additional_info_link1">Additional Info</a></li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#office_info_link1">Office Info</a></li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#statutory_waged_info_link1">Statutory & waged</a> </li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#address_info_link1">address</a> </li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#banking_info_link1">Banking Info</a> </li>
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#resignation_info_link1">Resignation & LWP</a> </li>
                @if (!empty($edit_data['id']))
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#user_info_link1">User Info</a></li>
                @endif
                <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#empty1"></a> </li>
              </div>
              </div>
            </div>
        </div>
        <div class="col-auto me-1">
            <a href="#" class="btn btn-danger" id="btn_error"><svg xmlns="http://www.w3.org/2000/svg"
                    width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="feather feather-alert-circle">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="8" x2="12" y2="12"></line>
                    <line x1="12" y1="16" x2="12.01" y2="16"></line>
                </svg></a>
            <a href="{{ url('generalInfo') }}" class="btn btn-info"><svg xmlns="http://www.w3.org/2000/svg"
                    width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                    class="feather feather-arrow-left">
                    <line x1="19" y1="12" x2="5" y2="12"></line>
                    <polyline points="12 19 5 12 12 5"></polyline>
                </svg></a>
            <button id="save" class="btn btn-success">

                @if ($action == 'add')
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round" class="feather feather-save">
                        <path d="M19 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11l5 5v11a2 2 0 0 1-2 2z"></path>
                        <polyline points="17 21 17 13 7 13 7 21"></polyline>
                        <polyline points="7 3 7 8 15 8"></polyline>
                    </svg>
                @else
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                        fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round" class="feather feather-edit">
                        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                    </svg>
                @endif
            </button>
        </div>
    </nav>
@endif

<!--Employee List Table -->
@if (Request::path() == 'generalInfo')
    <div class="table-responsive mt-2" id="add">
        <table id="landingPageBrowser3SIS" class="table dt-table-hover dataTable no-footer {{ theme('table') }}">
            <thead>
                <tr>
                    <th title="Employee Id">ID</th>
                    <th>Employee Name</th>
                    <th title="Date of Birth">DOB</th>
                    <th title="Date of Joining">DOJ</th>
                    <th>Location</th>
                    <th>Action</th>
                    <th style="visibility: hidden;">Unique Id</th>
                </tr>
            </thead>
        </table>
    </div>
    <!-- Restore list undeletemodal -->
    <div id="UndoModal" class="modal fade" data-backdrop="static" data-keyboard="false" role="dialog"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered 3SISPro-modal-dialog" role="document"
            style="max-width:1000px!important;">
            <div class="modal-content {{ theme('card') }}">
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
                            <table id="UndoModalTable" class="no-footer {{ theme('table') }}" style="width:100%">
                                <thead>
                                    <tr>
                                        <th title="Employee Id">ID</th>
                                        <th>Employee Name</th>
                                        <th title="Date of Birth">DOB</th>
                                        <th title="Date of Joining">DOJ</th>
                                        <th>Location</th>
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
@endif

@if ($action == 'add' || $action == 'edit')
    <!-- Scroll Spy Main Content -->
    <main data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%"
        data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0">

        <div class="row" id="general_info_link1">
            <div id="flStackForm1" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12 error_msg">
                                 <h3>General Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            @csrf
                            @if (!empty($edit_data['id']))
                                <input type="hidden" name="id" id="id" value="{{ $edit_data['id'] }}">
                            @endif
                            @if ($action == 'add')
                                <input type="hidden" id="action" value="insert">
                            @else
                                <input type="hidden" id="action" value="update">
                            @endif
                            <div class="col-md-3">
                                <label for="name" class="form-label">Employee Id<span class="text-danger">
                                        *</span></label>
                                <input type="text" name='EMGIHEmployeeId' id='EMGIHEmployeeId'
                                    class='form-control threshold' maxlength="20" placeholder="Enter Employee Id"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHEmployeeId', $edit_data['EMGIHEmployeeId'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="name" class="form-label">First Name<span
                                        class="text-danger"> *</span></label>
                                <input type="text" name='EMGIHFirstName' id='EMGIHFirstName'
                                    class='form-control threshold' maxlength="20"
                                    placeholder="Enter First Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHFirstName', $edit_data['EMGIHFirstName'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="name" class="form-label">Middle Name</label>
                                <input type="text" name='EMGIHMiddleName' id='EMGIHMiddleName'
                                    class='form-control threshold' maxlength="20"
                                    placeholder="Enter Middle Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHMiddleName', $edit_data['EMGIHMiddleName'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="name" class="form-label">Last Name<span
                                        class="text-danger"> *</span></label>
                                <input type="text" name='EMGIHLastName' id='EMGIHLastName'
                                    class='form-control threshold' maxlength="20"
                                    placeholder="Enter Last Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHLastName', $edit_data['EMGIHLastName'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="name" class="form-label">Full Name</label>
                                <input type="text" name='EMGIHFullName' id='EMGIHFullName'
                                    class='form-control' placeholder="Full Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHFullName', $edit_data['EMGIHFullName'] ?? '') }}" readonly>
                            </div>

                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Salutation<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHSalutationId' name='EMGIHSalutationId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Salutation</option>
                                    @foreach ($salutation_list as $salutation)
                                        @if (!empty($edit_data['EMGIHSalutationId']) && $edit_data['EMGIHSalutationId'] == $salutation->GMSLHSalutationId)
                                            <option value='{{ $salutation->GMSLHSalutationId }}' selected>
                                                {{ $salutation->GMSLHDesc1 }}</option>
                                        @else
                                            <option value='{{ $salutation->GMSLHSalutationId }}'>
                                                {{ $salutation->GMSLHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Gender<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHGenderId' name='EMGIHGenderId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Gender</option>
                                    @foreach ($gender_list as $gender)
                                        @if (!empty($edit_data['EMGIHGenderId']) && $edit_data['EMGIHGenderId'] == $gender->GMGDHGenderId)
                                            <option value='{{ $gender->GMGDHGenderId }}' selected>
                                                {{ $gender->GMGDHDesc1 }}</option>
                                        @else
                                            <option value='{{ $gender->GMGDHGenderId }}'>
                                                {{ $gender->GMGDHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Location<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHLocationId' name='EMGIHLocationId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Location</option>
                                    @foreach ($location_list as $location)
                                        @if (!empty($edit_data['EMGIHLocationId']) && $edit_data['EMGIHLocationId'] == $location->GMLMHLocationId)
                                            <option value='{{ $location->GMLMHLocationId }}' selected>
                                                {{ $location->GMLMHDesc1 }}</option>
                                        @else
                                            <option value='{{ $location->GMLMHLocationId }}'>
                                                {{ $location->GMLMHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Employment Type<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHEmploymentTypeId' name='EMGIHEmploymentTypeId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Employment Type<</option>
                                    @foreach ($employmentType_list as $employmentType)
                                        @if (!empty($edit_data['EMGIHEmploymentTypeId']) && $edit_data['EMGIHEmploymentTypeId'] == $employmentType->ESTYHTypeId)
                                            <option value='{{ $employmentType->ESTYHTypeId }}' selected>
                                                {{ $employmentType->ESTYHDesc1 }}</option>
                                        @else
                                            <option value='{{ $employmentType->ESTYHTypeId }}'>
                                                {{ $employmentType->ESTYHDesc1 }}</option>
                                        @endif
                                    @endforeach

                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Grade Id</label>
                                <select id='EMGIHGradeId' name='EMGIHGradeId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Grade</option>
                                    @foreach ($grade_list as $grade)
                                        @if (!empty($edit_data['EMGIHGradeId']) && $edit_data['EMGIHGradeId'] == $grade->ESGRHGradeId)
                                            <option value='{{ $grade->ESGRHGradeId }}' selected>
                                                {{ $grade->ESGRHDesc1 }}</option>
                                        @else
                                            <option value='{{ $grade->ESGRHGradeId }}'>
                                                {{ $grade->ESGRHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Designation Id</label>
                                <select id='EMGIHDesignationId' name='EMGIHDesignationId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select designation</option>
                                    @foreach ($designation_list as $designation)
                                        @if (!empty($edit_data['EMGIHDesignationId']) && $edit_data['EMGIHDesignationId'] == $designation->ESDEHDesignationId)
                                            <option value='{{ $designation->ESDEHDesignationId }}' selected>
                                                {{ $designation->ESDEHDesc1 }}</option>
                                        @else
                                            <option value='{{ $designation->ESDEHDesignationId }}'>
                                                {{ $designation->ESDEHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Department Id</label>
                                <select id='EMGIHDepartmentId' name='EMGIHDepartmentId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Department</option>
                                    @foreach ($department_list as $department )
                                        @if (!empty($edit_data['EMGIHDepartmentId']) && $edit_data['EMGIHDepartmentId'] == $salutation->ESDPHDepartmentId)
                                            <option value='{{ $department->ESDPHDepartmentId }}' selected>
                                                {{ $department->ESDPHDesc1 }}</option>
                                        @else
                                            <option value='{{ $department->ESDPHDepartmentId }}'>
                                                {{ $department->ESDPHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Calendar Id<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHCalendarId' name='EMGIHCalendarId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Calendar</option>
                                    @foreach ($calendar_list as $calendar)
                                        @if (!empty($edit_data['EMGIHCalendarId']) && $edit_data['EMGIHCalendarId'] == $calendar->FYCAHCalendarId)
                                            <option value='{{ $calendar ->FYCAHCalendarId }}' selected>
                                                {{ $calendar->FYCAHDesc1 }}</option>
                                        @else
                                            <option value='{{ $calendar->FYCAHCalendarId }}'>
                                                {{ $calendar->FYCAHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="Updated" class="form-label">Date Of Birth</label>
                                 @if(!empty($edit_data['id']))
                                  <input id="EMGIHDateOfBirth" name='EMGIHDateOfBirth' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfBirth']))}}">
                                 @else
                                  <input id="EMGIHDateOfBirth" name='EMGIHDateOfBirth' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date..">
                                @endif
                            </div>
                            <div class="col-md-3">
                                <label for="Updated" class="form-label">Date Of Joining</label>
                                 @if(!empty($edit_data['id']))
                                  <input id="EMGIHDateOfJoining" name='EMGIHDateOfJoining' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfJoining']))}}">
                                 @else
                                  <input id="EMGIHDateOfJoining" name='EMGIHDateOfJoining' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date..">
                                @endif
                            </div>
                            <div class="col-md-3">
                                <label for="Updated" class="form-label">Date Of Confirmation</label>
                                 @if(!empty($edit_data['id']))
                                  <input id="EMGIHDateOfConfirmation" name='EMGIHDateOfConfirmation' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfConfirmation']))}}">
                                 @else
                                  <input id="EMGIHDateOfConfirmation" name='EMGIHDateOfConfirmation' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Date..">
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- additional_info Start -->
        <div class="row" id="additional_info_link1">
            <div id="flStackForm2" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Additional Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Nationality<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHNationalityId' name='EMGIHNationalityId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Nationality</option>
                                    @foreach ($nationality_list as $nationality)
                                        @if (!empty($edit_data['EMGIHNationalityId']) && $edit_data['EMGIHNationalityId'] == $nationality->GMNAHNationalityId)
                                            <option value='{{ $nationality->GMNAHNationalityId }}' selected>
                                                {{ $nationality->GMNAHDesc1 }}</option>
                                        @else
                                            <option value='{{ $nationality->GMNAHNationalityId }}'>
                                                {{ $nationality->GMNAHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Religion</label>
                                <select id='EMGIHReligionId' name='EMGIHReligionId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Religion</option>
                                    @foreach ($religionMaster_list as $religion)
                                        @if (!empty($edit_data['EMGIHReligionId']) && $edit_data['EMGIHReligionId'] == $religion->GMRLHReligionId)
                                            <option value='{{ $religion->GMRLHReligionId }}' selected>
                                                {{ $religion->GMRLHDesc1 }}</option>
                                        @else
                                            <option value='{{ $religion->GMRLHReligionId }}'>
                                                {{ $religion->GMRLHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Race/Cast</label>
                                <select id='EMGIHRaceCastId' name='EMGIHRaceCastId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Race/Cast</option>
                                    @foreach ($raceGroup_list as $raceGroup)
                                        @if (!empty($edit_data['EMGIHRaceCastId']) && $edit_data['EMGIHRaceCastId'] == $raceGroup->GMRAHRaceId)
                                            <option value='{{ $gender->GMRAHRaceId }}' selected>
                                                {{ $raceGroup->GMRAHDesc1 }}</option>
                                        @else
                                            <option value='{{ $raceGroup->GMRAHRaceId }}'>
                                                {{ $raceGroup->GMRAHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label for="bank" class="form-label">PAN No</label>
                                <input type="text" name="EMGIHPANNo" id="EMGIHPANNo"
                                    class='form-control threshold' maxlength="15" placeholder="Enter PAN No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHPANNo', $edit_data['EMGIHPANNo'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Blood Group</label>
                                <select id='EMGIHBloodGroupId' name='EMGIHBloodGroupId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Blood Group</option>
                                    @foreach ($gender_list as $gender)
                                        @if (!empty($edit_data['EMGIHBloodGroupId']) && $edit_data['EMGIHBloodGroupId'] == $gender->GMBGHBloodGroupId)
                                            <option value='{{ $gender->GMBGHBloodGroupId }}' selected>
                                                {{ $gender->GMBGHDesc1 }}</option>
                                        @else
                                            <option value='{{ $gender->GMBGHBloodGroupId }}'>
                                                {{ $gender->GMBGHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Physical Status</label>
                                <select id='EMGIHPhysicalStatusId' name='EMGIHPhysicalStatusId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Physical Status</option>
                                    @foreach ($physicalStatus_list as $physicalStatus)
                                        @if (!empty($edit_data['EMGIHPhysicalStatusId']) && $edit_data['EMGIHPhysicalStatusId'] == $physicalStatus->GMPSHPhysicalStatusId)
                                            <option value='{{ $physicalStatus->GMPSHPhysicalStatusId }}' selected>
                                                {{ $physicalStatus->GMPSHDesc1 }}</option>
                                        @else
                                            <option value='{{ $physicalStatus->GMPSHPhysicalStatusId }}'>
                                                {{ $physicalStatus->GMPSHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Leave Group</span> </label>
                                {{-- <select id='EMGIHLeaveGroupId' name='EMGIHLeaveGroupId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Leave Group</option>
                                    @foreach ($leaveGroup_list as $leaveGroup)
                                        @if (!empty($edit_data['EMGIHLeaveGroupId']) && $edit_data['EMGIHLeaveGroupId'] == $leaveGroup->GMGDHGenderId)
                                            <option value='{{ $leaveGroup->GMGDHGenderId }}' selected>
                                                {{ $leaveGroup->GMGDHDesc1 }}</option>
                                        @else
                                            <option value='{{ $leaveGroup->GMGDHGenderId }}'>
                                                {{ $leaveGroup->GMGDHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select> --}}
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">Aadhar No</label>
                                    <input type="text" name='EMGIHAadharNo' id='EMGIHAadharNo'
                                        class='form-control threshold' maxlength="6" placeholder="Enter Aadhar No"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('EMGIHAadharNo', $edit_data['EMGIHAadharNo'] ?? '') }}">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Marital Status</label>
                                <select id='EMGIHMaritalStatusId' name='EMGIHMaritalStatusId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Marital Status</option>
                                    @foreach ($maritalStatus_list as $maritalStatus)
                                        @if (!empty($edit_data['EMGIHMaritalStatusId']) && $edit_data['EMGIHMaritalStatusId'] == $maritalStatus->GMMSHMaritalStatusId)
                                            <option value='{{ $maritalStatus->GMMSHMaritalStatusId }}' selected>
                                                {{ $maritalStatus->GMMSHDesc1 }}</option>
                                        @else
                                            <option value='{{ $maritalStatus->GMMSHMaritalStatusId }}'>
                                                {{ $maritalStatus->GMMSHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="Updated" class="form-label">Date Of Marriage</label>
                                 @if(!empty($edit_data['id']))
                                  <input id="EMGIHDateOfMarriage" name='EMGIHDateOfMarriage' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Marriage Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfMarriage']))}}">
                                 @else
                                  <input id="EMGIHDateOfMarriage" name='EMGIHDateOfMarriage' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Marriage Date..">
                                @endif
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">Spouse Name</label>
                                    <input type="text" name='EMGIHSpouseName' id='EMGIHSpouseName'
                                        class='form-control threshold' maxlength="100" placeholder="Enter Spouse Name"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('EMGIHSpouseName', $edit_data['EMGIHSpouseName'] ?? '') }}">
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">Driving License No</label>
                                    <input type="text" name='EMGIHDrivingLicenseNo' id='EMGIHDrivingLicenseNo'
                                        class='form-control threshold' maxlength="100" placeholder="Enter Driving License No"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('EMGIHDrivingLicenseNo', $edit_data['EMGIHDrivingLicenseNo'] ?? '') }}">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- additional_info End -->
        <!-- office_info Start -->
        <div class="row" id="office_info_link1">
            <div id="flStackForm3" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Office Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-6">
                                    <label for="email" class="form-label">Office Email</label>
                                    <input type="text" name="EMGIHOfficeEmail" id="EMGIHOfficeEmail"
                                        class='form-control threshold' maxlength="100" placeholder="Enter Email Id"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('EMGIHOfficeEmail', $edit_data['EMGIHOfficeEmail'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                    <label for="ifsc" class="form-label">Personal Email</label>
                                    <input type="text" name="EMGIHPersonalEmail" id="EMGIHPersonalEmail"
                                        class='form-control threshold' maxlength="20" placeholder="Enter Email"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('EMGIHPersonalEmail', $edit_data['EMGIHPersonalEmail'] ?? '') }}">
                            </div>
                            <div class="col-md-2">
                                <label for="email" class="form-label">Office Extension</label>
                                <input type="text" name="EMGIHOfficeExtension" id="EMGIHOfficeExtension"
                                    class='form-control threshold' maxlength="10" placeholder="Enter Extension"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHOfficeExtension', $edit_data['EMGIHOfficeExtension'] ?? '') }}">
                            </div>
                            <div class="col-md-2">
                                <label for="email" class="form-label">Land Line No</label>
                                <input type="text" name="EMGIHOfficeLandLineNo" id="EMGIHOfficeLandLineNo"
                                    class='form-control threshold' maxlength="15" placeholder="Enter Land Line No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHOfficeLandLineNo', $edit_data['EMGIHOfficeLandLineNo'] ?? '') }}">
                            </div>
                            <div class="col-md-2">
                                <label for="email" class="form-label">Office Mobile No</label>
                                <input type="text" name="EMGIHOfficeMobileNo" id="EMGIHOfficeMobileNo"
                                    class='form-control threshold' maxlength="15" placeholder="Enter Mobile No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHOfficeMobileNo', $edit_data['EMGIHOfficeMobileNo'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="ifsc" class="form-label">Personal Phone No</label>
                                <input type="text" name="EMGIHPersonalPhoneNo" id="EMGIHPersonalPhoneNo"
                                    class='form-control threshold' maxlength="20" placeholder="Enter Phone No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHPersonalPhoneNo', $edit_data['EMGIHPersonalPhoneNo'] ?? '') }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- office_info End -->
        <!-- statutory_waged_info Start -->
        <div class="row" id="statutory_waged_info_link1">
            <div id="flStackForm4" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Statutory and waged</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">

                            <div class="col-md-2">

                                <div class="form-check form-check-primary form-check-inline">
                                    @if(!empty($edit_data['EMGIHOTApplicable']))
                                    <input class="form-check-input" type="checkbox" name='EMGIHOTApplicable' id='EMGIHOTApplicable' value="{{$edit_data['EMGIHOTApplicable']}}" checked>
                                    @else
                                    <input class="form-check-input" type="checkbox" name='EMGIHOTApplicable' id='EMGIHOTApplicable' value="{{old('EMGIHOTApplicable',$edit_data['EMGIHOTApplicable'] ?? '') }}">
                                    @endif
                                    <label class="form-check-label" for="form-check-default">OT Applicable</label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <label>OT Basis</label>
                                <select id='EMGIHOTBasisId' name='EMGIHOTBasisId'
                                    class="form-select" style="width: 100%;border: 1px solid #68a6ec;">
                                    @foreach ($wadge as $OTBasis)
                                        @if (!empty($edit_data['EMGIHOTBasisId']) && $edit_data['EMGIHOTBasisId'] == $OTBasis)
                                            <option value='{{ $OTBasis }}' selected>
                                                {{ $OTBasis }}</option>
                                        @else
                                            <option value='{{ $OTBasis }}'>
                                                {{ $OTBasis }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check form-check-primary form-check-inline">
                                    @if(!empty($edit_data['EMGIHPFApplicable']))
                                    <input class="form-check-input" type="checkbox" name='EMGIHPFApplicable' id='EMGIHPFApplicable' value="{{$edit_data['EMGIHPFApplicable']}}" checked>
                                    @else
                                    <input class="form-check-input" type="checkbox" name='EMGIHPFApplicable' id='EMGIHPFApplicable' value="{{old('EMGIHPFApplicable',$edit_data['EMGIHPFApplicable'] ?? '') }}">
                                    @endif
                                    <label class="form-check-label" for="form-check-default">PF Applicable</label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label for="bank" class="form-label">PF Threshold</label>
                                <input type="number" name="EMGIHPFThreshold" id="EMGIHPFThreshold"
                                    class='form-control floatNumberField' placeholder="PF Threshold"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHPFThreshold', $edit_data['EMGIHPFThreshold'] ?? '0.00') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="bank" class="form-label">PF Acct No</label>
                                <input type="text" name="EMGIHPFAcctNo" id="EMGIHPFAcctNo"
                                    class='form-control' placeholder="PF A/C No."
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHPFAcctNo', $edit_data['EMGIHPFAcctNo'] ?? '') }}">
                            </div>
                            <div class="col-md-2">
                                <div class="form-check form-check-primary form-check-inline">
                                    @if(!empty($edit_data['EMGIHIsDailyWages']))
                                    <input class="form-check-input" type="checkbox" name='EMGIHIsDailyWages' id='EMGIHIsDailyWages' value="{{$edit_data['EMGIHIsDailyWages']}}" checked>
                                    @else
                                    <input class="form-check-input" type="checkbox" name='EMGIHIsDailyWages' id='EMGIHIsDailyWages' value="{{old('EMGIHIsDailyWages',$edit_data['EMGIHIsDailyWages'] ?? '') }}">
                                    @endif
                                    <label class="form-check-label" for="form-check-default">Daily Wages</label>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <label for="dropdown" class="form-label">Wage Basis </label>
                                <select id='EMGIHDailyWagesId' name='EMGIHDailyWagesId'
                                    class="form-select" style="width: 100%;border: 1px solid #68a6ec;">
                                    @foreach ($wadge as $DailyWages)
                                        @if (!empty($edit_data['EMGIHDailyWagesId']) && $edit_data['EMGIHDailyWagesId'] == $DailyWages)
                                            <option value='{{ $OTBasis }}' selected>
                                                {{ $DailyWages }}</option>
                                        @else
                                            <option value='{{ $DailyWages }}'>
                                                {{ $DailyWages }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-2">
                                <div class="form-check form-check-primary form-check-inline">
                                    @if(!empty($edit_data['EMGIHPFAgreedByComp']))
                                    <input class="form-check-input" type="checkbox" name='EMGIHPFAgreedByComp' id='EMGIHPFAgreedByComp' value="{{$edit_data['EMGIHPFAgreedByComp']}}" checked>
                                    @else
                                    <input class="form-check-input" type="checkbox" name='EMGIHPFAgreedByComp' id='EMGIHPFAgreedByComp' value="{{old('EMGIHPFAgreedByComp',$edit_data['EMGIHPFAgreedByComp'] ?? '') }}">
                                    @endif
                                    <label class="form-check-label" for="form-check-default">Agreed By Comp</label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label for="bank" class="form-label">Comp Limit</label>
                                <input type="number" name="EMGIHPFCompLimit" id="EMGIHPFCompLimit"
                                    class='form-control floatNumberField' placeholder="Comp Limit"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHPFCompLimit', $edit_data['EMGIHPFCompLimit'] ?? '0.00') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Regime Id<span class="text-danger">
                                    *</span> </label>
                                <select id='EMGIHRegimeId' name='EMGIHRegimeId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Marital Status</option>
                                    @foreach ($maritalStatus_list as $Regime)
                                        @if (!empty($edit_data['EMGIHRegimeId']) && $edit_data['EMGIHRegimeId'] == $Regime->GMMSHMaritalStatusId)
                                            <option value='{{ $Regime->GMMSHMaritalStatusId }}' selected>
                                                {{ $Regime->GMMSHDesc1 }}</option>
                                        @else
                                            <option value='{{ $Regime->GMMSHMaritalStatusId }}'>
                                                {{ $Regime->GMMSHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- statutory_waged_info End -->
         <!-- address_info Start -->
         <div class="row" id="address_info_link1">
            <div id="flStackForm4" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Address Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-5">
                                <div class="row mt-0">
                                    <div class="col-12">
                                        <label for="address1" class="form-label">Present Address<span class="text-danger">
                                                *</span></label>
                                        <input type="text" name='EMGIHPresentAddress1' id='EMGIHPresentAddress1'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 1"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPresentAddress1', $edit_data['EMGIHPresentAddress1'] ?? '') }}">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name='EMGIHPresentAddress2' id='EMGIHPresentAddress2'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 2"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPresentAddress2', $edit_data['EMGIHPresentAddress2'] ?? '') }}">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name='EMGIHPresentAddress3' id='EMGIHPresentAddress3'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 3"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPresentAddress3', $edit_data['EMGIHPresentAddress3'] ?? '') }}">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputCity" class="form-label">City <span class="text-danger"> *</span>
                                        </label>
                                        <select id='EMGIHPresentCityId' name='EMGIHPresentCityId' class="form-select"
                                            style="width: 100%;border: 1px solid #68a6ec;">
                                            <option value=''>Select City</option>
                                            @foreach ($city_list as $city)
                                                @if (!empty($edit_data['EMGIHPresentCityId']) && $edit_data['EMGIHPresentCityId'] == $city->GMCTHCityId)
                                                    <option value='{{ $city->GMCTHCityId }}' selected>
                                                        {{ $city->GMCTHDesc1 }}</option>
                                                @else
                                                    <option value='{{ $city->GMCTHCityId }}'>
                                                        {{ $city->GMCTHDesc1 }}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">State </label>
                                            <input type="hidden" name="EMGIHPresentStateId" id="EMGIHPresentStateId">
                                            <input type="text" name='PresentStateName' id='PresentStateName' class='form-control'
                                                readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">Contry</label>
                                            <input type="hidden" name="EMGIHPresentCountryId" id="EMGIHPresentCountryId">
                                            <input type="text" name='PresentCountryName' id='PresentCountryName' class='form-control'
                                                readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">Pin Code</label>
                                            <input type="text" name='EMGIHPresentPinCode' id='EMGIHPresentPinCode'
                                                class='form-control threshold' maxlength="6" placeholder="Enter Pin Code"
                                                style='border-color: rgb(102, 175, 233); outline: 0px'
                                                value="{{ old('EMGIHPresentPinCode', $edit_data['EMGIHPresentPinCode'] ?? '') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="n-chk col-md-12">
                                    <div class="form-check form-check-primary form-check-inline">

                                        @if(!empty($edit_data['EMGIHSameAsPresentAdd']))
                                        <input class="form-check-input" type="checkbox" name='EMGIHSameAsPresentAdd' id='EMGIHSameAsPresentAdd' value="{{$edit_data['EMGIHSameAsPresentAdd']}}" checked>
                                        @else
                                        <input class="form-check-input" type="checkbox" name='EMGIHSameAsPresentAdd' id='EMGIHSameAsPresentAdd' value="{{old('EMGIHSameAsPresentAdd',$edit_data['EMGIHSameAsPresentAdd'] ?? '') }}">
                                        @endif
                                        <label class="form-check-label" for="form-check-default">
                                            Same As Present
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <!-- Permanent Address-->
                            <div class="col-md-5">
                                <div class="row mt-0">
                                    <div class="col-12">
                                        <label for="address1" class="form-label">Permanent Address<span class="text-danger">
                                                *</span></label>
                                        <input type="text" name='EMGIHPermanentAddress1' id='EMGIHPermanentAddress1'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 1"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPermanentAddress1', $edit_data['EMGIHPermanentAddress1'] ?? '') }}">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name='EMGIHPermanentAddress2' id='EMGIHPermanentAddress2'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 2"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPermanentAddress2', $edit_data['EMGIHPermanentAddress2'] ?? '') }}">
                                    </div>
                                    <div class="col-12">
                                        <input type="text" name='EMGIHPermanentAddress3' id='EMGIHPermanentAddress3'
                                            class='form-control threshold' maxlength="100" placeholder="Enter Address 3"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHPermanentAddress3', $edit_data['EMGIHPermanentAddress3'] ?? '') }}">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="inputCity" class="form-label">City <span class="text-danger"> *</span>
                                        </label>
                                        <select id='EMGIHPermanentCityId' name='EMGIHPermanentCityId' class="form-select"
                                            style="width: 100%;border: 1px solid #68a6ec;">
                                            <option value=''>Select City</option>
                                            @foreach ($city_list as $city)
                                                @if (!empty($edit_data['EMGIHPermanentCityId']) && $edit_data['EMGIHPermanentCityId'] == $city->GMCTHCityId)
                                                    <option value='{{ $city->GMCTHCityId }}' selected>
                                                        {{ $city->GMCTHDesc1 }}</option>
                                                @else
                                                    <option value='{{ $city->GMCTHCityId }}'>
                                                        {{ $city->GMCTHDesc1 }}</option>
                                                @endif
                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">State</label>
                                            <input type="hidden" name="EMGIHPermanentStateId" id="EMGIHPermanentStateId">
                                            <input type="text" name='PermanentStateName' id='PermanentStateName' class='form-control'
                                                readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">Contry</label>
                                            <input type="hidden" name="EMGIHPermanentCountryId" id="EMGIHPermanentCountryId">
                                            <input type="text" name='PermanentCountryName' id='PermanentCountryName' class='form-control'
                                                readonly>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class='form-group'>
                                            <label class="form-label">Pin Code</label>
                                            <input type="text" name='EMGIHPermanentPinCode' id='EMGIHPermanentPinCode'
                                                class='form-control threshold' maxlength="6" placeholder="Enter Pin Code"
                                                style='border-color: rgb(102, 175, 233); outline: 0px'
                                                value="{{ old('EMGIHPermanentPinCode', $edit_data['EMGIHPermanentPinCode'] ?? '') }}">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- address_info End -->
         <!-- banking_info Start -->
         <div class="row" id="banking_info_link1">
            <div id="flStackForm4" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Banking Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label for="branch" class="form-label">Branch<span class="text-danger">
                                        *</span> </label>
                                <select id='EMGIHBranchId' name='EMGIHBranchId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Branch</option>
                                    @foreach ($branch_list as $branch)
                                        @if (!empty($edit_data['EMGIHBranchId']) && $edit_data['EMGIHBranchId'] == $branch->BMBRHBranchId)
                                            <option value='{{ $branch->BMBRHBranchId }}' selected>
                                                {{ $branch->BMBRHDesc1 }}</option>
                                        @else
                                            <option value='{{ $branch->BMBRHBranchId }}'>
                                                {{ $branch->BMBRHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="bank" class="form-label">Bank</label>
                                <input type="hidden" name="EMGIHBankId" id="EMGIHBankId">
                                <input type="text" name='bankName' id='bankName' class='form-control'
                                    readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="ifsc" class="form-label">IFSC</label>
                                <input type="text" name='EMGIHIFSCId' id='EMGIHIFSCId'
                                    class='form-control' readonly>
                            </div>
                            <div class="col-md-6">
                                <label for="ifsc" class="form-label">A/C No.</label>
                                <input type="text" name="EMGIHBankAccountNo" id="EMGIHBankAccountNo"
                                    class='form-control threshold' maxlength="20" placeholder="Enter A/C No."
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('EMGIHBankAccountNo', $edit_data['EMGIHBankAccountNo'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="accountType" class="form-label">Account Type<span class="text-danger">
                                        *</span> </label>
                                <select id='EMGIHAccountTypeId' name='EMGIHAccountTypeId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Account Type</option>
                                    @foreach ($acctType_list as $acctType)
                                        @if (!empty($edit_data['EMGIHAccountTypeId']) && $edit_data['EMGIHAccountTypeId'] == $acctType->BMATHAcctId)
                                            <option value='{{ $acctType->BMATHAcctId }}' selected>
                                                {{ $acctType->BMATHDesc1 }}</option>
                                        @else
                                            <option value='{{ $acctType->BMATHAcctId }}'>
                                                {{ $acctType->BMATHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="branch" class="form-label">Payment Mode<span class="text-danger">
                                        *</span> </label>
                                <select id='EMGIHPaymentModeId' name='EMGIHPaymentModeId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Payment Mode</option>
                                    @foreach ($paymentMode_list as $paymentMode)
                                        @if (!empty($edit_data['EMGIHPaymentModeId']) && $edit_data['EMGIHPaymentModeId'] == $paymentMode->BMPMHPaymentModeId)
                                            <option value='{{ $paymentMode->BMPMHPaymentModeId }}' selected>
                                                {{ $paymentMode->BMPMHDesc1 }}</option>
                                        @else
                                            <option value='{{ $paymentMode->BMPMHPaymentModeId }}'>
                                                {{ $paymentMode->BMPMHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- banking_info End -->
         <!-- resignation_info Start -->
         <div class="row" id="resignation_info_link1">
            <div id="flStackForm4" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Resignation and LWP</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-9">
                                <div class="row mt-0">
                                    <div class="col-md-3 n-chk mt-4">
                                        <div class="form-check form-check-primary form-check-inline">
                                         @if(!empty($edit_data['EMGIHIsResignation']))
                                          <input class="form-check-input" type="checkbox" name='EMGIHIsResignation' id='EMGIHIsResignation' value="{{$edit_data['EMGIHIsResignation']}}" checked>
                                         @else
                                          <input class="form-check-input" type="checkbox" name='EMGIHIsResignation' id='EMGIHIsResignation' value="{{old('EMGIHIsResignation',$edit_data['EMGIHIsResignation'] ?? '') }}">
                                        @endif
                                            <label class="form-check-label" for="form-check-default">
                                                Is Resignation
                                            </label>
                                        </div>
                                            {{-- <span class=" text-danger" style='float:right;'></span>
                                            <label class="new-control new-checkbox new-checkbox-text checkbox-success">
                                                <input type="checkbox" class="new-control" name='EMGIHIsResignation' id='EMGIHIsResignation'>
                                                <span class="new-control-indicator"></span><span class="new-chk-content">Is Resignation</span>
                                            </label>
                                            --}}
                                    </div>
                                    <div class="col-md-3">
                                        <label for="Updated" class="form-label">Letter Submission</label>
                                        @if(!empty($edit_data['id']))
                                        <input id="EMGIHDateOfLetterSubmission" name='EMGIHDateOfLetterSubmission' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Submission Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfLetterSubmission']))}}">
                                        @else
                                        <input id="EMGIHDateOfLetterSubmission" name='EMGIHDateOfLetterSubmission' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Submission Date..">
                                        @endif
                                    </div>
                                    <div class="col-md-3">
                                        <label for="Updated" class="form-label">Resignation</label>
                                        @if(!empty($edit_data['id']))
                                        <input id="EMGIHDateOfResignation" name='EMGIHDateOfResignation' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Resignation Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfResignation']))}}">
                                        @else
                                        <input id="EMGIHDateOfResignation" name='EMGIHDateOfResignation' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Resignation Date..">
                                        @endif
                                    </div>
                                    <div class="col-md-3">
                                        <label for="Updated" class="form-label">Leaving</label>
                                        @if(!empty($edit_data['id']))
                                        <input id="EMGIHDateOfLeaving" name='EMGIHDateOfLeaving' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Leaving Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHDateOfLeaving']))}}">
                                        @else
                                        <input id="EMGIHDateOfLeaving" name='EMGIHDateOfLeaving' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Leaving Date..">
                                        @endif
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ifsc" class="form-label">Reason</label>
                                        <input type="text" name="EMGIHReason" id="EMGIHReason"
                                            class='form-control threshold' maxlength="20" placeholder="Enter Reason"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHReason', $edit_data['EMGIHReason'] ?? '') }}">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ifsc" class="form-label">Remarks For FnF</label>
                                        <input type="text" name="EMGIHRemarksForFnF" id="EMGIHRemarksForFnF"
                                            class='form-control threshold' maxlength="20" placeholder="Enter Remarks"
                                            style='border-color: rgb(102, 175, 233); outline: 0px'
                                            value="{{ old('EMGIHRemarksForFnF', $edit_data['EMGIHRemarksForFnF'] ?? '') }}">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="row mt-0">
                                    <div class="n-chk col-md-12">
                                        <div class="form-check form-check-primary form-check-inline">
                                        @if(!empty($edit_data['EMGIHLeaveWithoutPayIndicator']))
                                          <input class="form-check-input" type="checkbox" name='EMGIHLeaveWithoutPayIndicator' id='EMGIHLeaveWithoutPayIndicator' value="{{$edit_data['EMGIHLeaveWithoutPayIndicator']}}" checked>
                                         @else
                                          <input class="form-check-input" type="checkbox" name='EMGIHLeaveWithoutPayIndicator' id='EMGIHLeaveWithoutPayIndicator' value="{{old('EMGIHLeaveWithoutPayIndicator',$edit_data['EMGIHLeaveWithoutPayIndicator'] ?? '') }}">
                                        @endif
                                            <label class="form-check-label" for="form-check-default">
                                                Leave Without Pay Indicator
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mt-0">
                                    <div class="col-md-12 mt-2  ">
                                        <label for="Updated" class="form-label">Leave Without Pay From</label>
                                        @if(!empty($edit_data['id']))
                                        <input id="EMGIHLeaveWithoutPayFrom" name='EMGIHLeaveWithoutPayFrom' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Without Pay Date.." value="{{ date('d-m-Y',strtotime($edit_data['EMGIHLeaveWithoutPayFrom']))}}">
                                        @else
                                        <input id="EMGIHLeaveWithoutPayFrom" name='EMGIHLeaveWithoutPayFrom' class="form-control flatpickr flatpickr-input active input_border" type="text" placeholder="Select Without Pay Date..">
                                        @endif
                                    </div>
                                </div>
                        </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- resignation_info End -->

        @if (!empty($edit_data['id']))
        <!-- User Info Start -->
        <div class="row" id="user_info_link1">
            <div id="flStackForm5" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>User Info</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                       <div class="table-responsive">
                                        <table class="table table-bordered">
                                           <thead>
                                                <tr>
                                                    <th scope="col">User</th>
                                                    <th scope="col">Created_at</th>
                                                    <th class="text-center" scope="col">Update_at</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <div class="media-body align-self-center">
                                                            <h6>Admin</h6>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <p class="mb-0 text-info">12-03-2023</p>
                                                    </td>
                                                    <td class="text-center">
                                                        <span class="text-info">12-03-2023</span>
                                                    </td>
                                            </tbody>
                                        </table>
                                    </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- User_info End -->
        @endif

        <div class="row" id="empty1" style="height: 300px;">
        </div>
        </div>
    </main>

    <!-- Error Model -->
    <div class="modal fade" id="ErrorModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
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
</form>

@endif

@endsection
@section('js_code')
@include('inc.js_file')
@include('inc.flatpickr_js')

<script type="text/javascript">
    $(document).ready(function() {
        var PresentCityId = $('#EMGIHPresentCityId').val();
        if (PresentCityId != '') {
            getPresentCityDetail(PresentCityId);
        }
        var PermanentCityId = $('#EMGIHPermanentCityId').val();
        if (PermanentCityId != '') {
            getPermanentCityDetail(PermanentCityId);
        }
        var branchId1 = $('#EMGIHBranchId').val();
        if (branchId1 != '') {
            getBank1Details(branchId1);
        }
        var branchId2 = $('#EMGIHBranchId2').val();
        if (branchId2 != '') {
            getBank2Details(branchId2);
        }
        $( "#EMGIHCurrencyId" ).select2();
        $( "#EMGIHPresentCityId" ).select2();
        $( "#EMGIHPermanentCityId" ).select2();
        $( "#EMGIHBranchId" ).select2();
        $( "#EMGIHPaymentModeId" ).select2();
        $( "#EMGIHAccountTypeId" ).select2();
        $( "#EMGIHLocationId" ).select2();
        $( "#EMGIHSalutationId" ).select2();
        $( "#EMGIHGenderId" ).select2();
        $( "#EMGIHEmploymentTypeId" ).select2();
        $( "#EMGIHGradeId" ).select2();
        $( "#EMGIHDesignationId" ).select2();
        $( "#EMGIHDepartmentId" ).select2();
        $( "#EMGIHCalendarId" ).select2();
        $( "#EMGIHNationalityId" ).select2();
        $( "#EMGIHReligionId" ).select2();
        $( "#EMGIHRaceCastId" ).select2();
        $( "#EMGIHBloodGroupId" ).select2();
        $( "#EMGIHPhysicalStatusId" ).select2();
        $( "#EMGIHMaritalStatusId" ).select2();
        $( "#EMGIHPaymentModeId" ).select2();
        $( "#EMGIHRegimeId" ).select2();
        $( "#EMGIHGroup" ).select2();

        maritalStatus();
        sameAsPresentAddress();
        isResignation();
        isLWP();
        isOTApplicable();
        isPFApplicable();
        isAgreedByComp();
        isDailyWages();

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
            "ajax": "get_generalInfo",
            "columns": [{
                    data: "EMGIHEmployeeId"
                },
                {
                    data: "EMGIHFullName"
                },
                {
                    data: "EMGIHDateOfBirth"
                },
                {
                    data: "EMGIHDateOfJoining"
                },
                {
                    data: "fn_city.GMCTHDesc1"
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
                    "width": "15%",
                    "targets": 2
                },
                {
                    "width": "25%",
                    "targets": 3
                },
                {
                    "width": "15%",
                    "targets": 4
                },
                {
                    "width": "15%",
                    "targets": 4
                }
            ]
        });

        $('#btn_error').hide();
    });

    $("#AddForm").submit(function(e) {
        // alert('test');
        e.preventDefault();
        $('#EMGIHEmployeeId,#EMGIHFullName,#select2-EMGIHCityId-container').removeClass(
            'border border-danger');

        if ($('#EMGIHEmployeeId').val() == '') {
            $('#EMGIHEmployeeId').addClass('border border-danger');
        }
        if ($('#EMGIHFullName').val() == '') {
            $('#EMGIHFullName').addClass('border border-danger');

        }
        // if($('#EMGIHDesc2').val() == ''){
        // $('#EMGIHDesc2').addClass('border border-danger');
        // }
        if ($('#EMGIHCityId').val() == '') {
            $('#select2-EMGIHCityId-container').addClass('border border-danger');
        }
        $('.msg_error').html('');
        if ($('#EMGIHEmployeeId').val() == '' || $('#EMGIHFullName').val() == '' ||
            $('#EMGIHCityId').val() == '') {
            if ($('#EMGIHEmployeeId').val() == '') {
                $('.msg_error').append('<p>Please Enter Employee Id !</p>');
            }
            if ($('#EMGIHFullName').val() == '') {
                $('.msg_error').append('<p>Please Enter Employee Name !</p>');
            }

            if ($('#EMGIHCityId').val() == '') {
                $('.msg_error').append('<p>Please Select City !</p>');
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
                url: "{{ url('generalInfo_save') }}",
                method: 'post',
                data: new FormData(this),
                processData: false,
                dataType: "json",
                contentType: false,
                beforeSend: function() {
                    $('#btn_error').hide();
                    updateCheckBoxValue();
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
                            $finalMessage3SIS = fnSingleLevelFinalSave('generalInfo', $(
                                    '#EMGIHEmployeeId')
                                .val(), $('#EMGIHFullName').val(), 'Added');
                            $('.error_msg').html($finalMessage3SIS);
                            $('#EMGIHCityId').val('').trigger("change");
                            $('#AddForm')[0].reset();
                        }
                        if (action == 'update') {

                            Swal.fire({
                                icon: 'success',
                                title: 'Employee update successfully',
                                allowOutsideClick: false,
                                timer: 5000,
                            })
                            window.location = "{{ url('generalInfo') }}";

                        }
                    }
                    if (response.status == 'error') {
                        $('.error_msg').append('<p>Employee Master not save</p>');
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
            // pagingType   : "simple_numbers",
            stripeClasses: [],
            pageLength: 6,
            lengthMenu: [6, 10, 20, 50],
            order: [
                [1, "desc"]
            ],
            processing: true,
            serverSide: true,
            destroy: true,
            "ajax": "delete_generalInfo_list",
            "columns": [{
                    data: "EMGIHEmployeeId"
                },
                {
                    data: "EMGIHFullName"
                },
                {
                    data: "EMGIHDateOfBirth"
                },
                {
                    data: "EMGIHDateOfJoining"
                },
                {
                    data: "fn_city.GMCTHDesc1"
                },
                {
                    data: "EMGIHUser"
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
        $('.modal-title').text('Restore Employee');
        $('#UndoModal').modal('show');
    });

    $(document).on('click', '.delete', function() {
        var action = 'delete';
        var id = $(this).attr('id');
        var desc = $(this).closest("tr").find("td:eq(1)").text();
        $deleteMessage3SIS = fnConfirmationMsg('Delete', 'Employee', id, desc);
        $successMessage3SIS = fnSuccessMsg('Deleted', 'Employee', id, desc);

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
                    url: "generalInfo_delete",
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
        $restoreMessage3SIS = fnConfirmationMsg('Restore', 'Employee', id, desc);
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
                    url: "generalInfo_delete",
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
    $('#EMGIHPresentCityId').change(function() {
        var id = $(this).val();
        getPresentCityDetail(id);
    });
    $('#EMGIHPermanentCityId').change(function() {
        var id = $(this).val();
        getPermanentCityDetail(id);
    });
    $('#EMGIHBranchId').change(function() {
        var id = $(this).val();
        getBank1Details(id);
    });
    $('#EMGIHBranchId2').change(function() {
        var id = $(this).val();
        getBank2Details(id);
    });
    $("#EMGIHFirstName").change(function(){

        constructFullName();
    });
    $("#EMGIHMiddleName").change(function(){

        constructFullName();
    });
    $("#EMGIHLastName").change(function(){

        constructFullName();
    });
    $("#EMGIHMaritalStatusId").change(function(){
        maritalStatus();
    });
    // When SameAsPresentAdd is Checked, bring all to addres1 to address2
    $("#EMGIHSameAsPresentAdd").on("click", function(){
        sameAsPresentAddress();
    });
    $("#EMGIHIsResignation").on("click", function(){
        isResignation();
    });
    $("#EMGIHLeaveWithoutPayIndicator").on("click", function(){
        isLWP();
    });
    $("#EMGIHOTApplicable").on("click", function(){
        isOTApplicable();
    });
    $("#EMGIHPFApplicable").on("click", function(){
        isPFApplicable();
    });
    $("#EMGIHPFAgreedByComp").on("click", function(){
        isAgreedByComp();
    });
    $("#EMGIHIsDailyWages").on("click", function(){
        isDailyWages();
    });

    function getPresentCityDetail(id) {
        $.ajax({
            url: "{{ url('get_city_desc') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#EMGIHPresentStateId').val(response.StateId);
                $('#PresentStateName').val(response.StateDesc);
                $('#EMGIHPresentCountryId').val(response.CountryId);
                $('#PresentCountryName').val(response.CountryDesc);
            }
        })
    }
    function getPermanentCityDetail(id) {
        $.ajax({
            url: "{{ url('get_city_desc') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#EMGIHPermanentStateId').val(response.StateId);
                $('#PermanentStateName').val(response.StateDesc);
                $('#EMGIHPermanentCountryId').val(response.CountryId);
                $('#PermanentCountryName').val(response.CountryDesc);
            }
        })
    }
    function getBank1Details(id) {
        $.ajax({
            url: "{{ url('get_branch_details') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#EMGIHBankId').val(response.BankId);
                $('#bankName').val(response.BankName);
                $('#EMGIHIFSCId').val(response.ifsc);
            }
        })
    }
    function getBank2Details(id) {
        $.ajax({
            url: "{{ url('get_branch_details') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#EMGIHBankId2').val(response.BankId);
                $('#bankName2').val(response.BankName);
                $('#EMGIHIFSId2').val(response.ifsc);
            }
        })
    }
    function constructFullName (){
        var FullName=$("#EMGIHFirstName").val() + " " +
                        $("#EMGIHMiddleName").val() + " " +
                        $("#EMGIHLastName").val();
        $('#EMGIHFullName').val(FullName);
    }
    function maritalStatus() {
        if($('#EMGIHMaritalStatusId').val()== '1000') {
            $("#EMGIHSpouseName").attr("readonly", false);
            $("#EMGIHDateOfMarriage").attr("disabled", false);
        }else {
            $("#EMGIHSpouseName").attr("readonly", true);
            $("#EMGIHDateOfMarriage").attr("disabled", true);
        }
    }
    function sameAsPresentAddress() {
        if($('#EMGIHSameAsPresentAdd').prop('checked')==true) {
            $('#EMGIHPermanentAddress1').val($("#EMGIHPresentAddress1").val());
            $('#EMGIHPermanentAddress2').val($("#EMGIHPresentAddress2").val());
            $('#EMGIHPermanentAddress3').val($("#EMGIHPresentAddress3").val());
            $('#EMGIHPermanentCityId').val($("#EMGIHPresentCityId").val()).change();

            $('#EMGIHPermanentStateId').val($("#EMGIHPresentStateId").val());
            $('#PermanentStateName').val($("#PresentStateName").val());

            $('#EMGIHPermanentCountryId').val($("#EMGIHPresentCountryId").val());
            $('#PermanentCountryName').val($("#PresentCountryName").val());

            $('#EMGIHPermanentPinCode').val($("#EMGIHPresentPinCode").val());

            $("#EMGIHPermanentAddress1").attr("readonly", true);
            $("#EMGIHPermanentAddress2").attr("readonly", true);
            $("#EMGIHPermanentAddress3").attr("readonly", true);
            $("#EMGIHPermanentCityId").attr("disabled", true);
            $("#EMGIHPermanentPinCode").attr("readonly", true);
        }else {
            $("#EMGIHPermanentAddress1").val('');
            $("#EMGIHPermanentAddress2").val('');
            $("#EMGIHPermanentAddress3").val('');
            $("#EMGIHPermanentCityId").val('').change();
            $("#EMGIHPermanentStateId").val('');
            $("#PermanentStateName").val('');
            $("#EMGIHPermanentCountryId").val('');
            $("#PermanentCountryName").val('');
            $("#EMGIHPermanentPinCode").val('');
            $("#EMGIHPermanentCityId").attr("disabled", false);

        }
    }
    function isResignation() {
        if($('#EMGIHIsResignation').prop('checked')==true) {
            $("#EMGIHDateOfLetterSubmission").attr("disabled", false);
            $("#EMGIHDateOfResignation").attr("disabled", false);
            $("#EMGIHDateOfLeaving").attr("disabled", false);
            $("#EMGIHReason").attr("readonly", false);
            $("#EMGIHRemarksForFnF").attr("readonly", false);
        }else {
            $("#EMGIHDateOfLetterSubmission").attr("disabled", true);
            $("#EMGIHDateOfResignation").attr("disabled", true);
            $("#EMGIHDateOfLeaving").attr("disabled", true);
            $("#EMGIHReason").attr("readonly", true);
            $("#EMGIHRemarksForFnF").attr("readonly", true);
        }
    }
    function isLWP() {
        if($('#EMGIHLeaveWithoutPayIndicator').prop('checked')==true) {
            $("#EMGIHLeaveWithoutPayFrom").attr("disabled", false);
        }else {
            $("#EMGIHLeaveWithoutPayFrom").attr("disabled", true);
        }
    }
    function isOTApplicable() {
        if($('#EMGIHOTApplicable').prop('checked')==true) {
            $("#EMGIHOTBasisId").attr("disabled", false);
        }else {
            $("#EMGIHOTBasisId").attr("disabled", true);
        }
    }
    function isPFApplicable() {
        if($('#EMGIHPFApplicable').prop('checked')==true) {
            $("#EMGIHPFThreshold").attr("readonly", false);
        }else {
            $("#EMGIHPFThreshold").attr("readonly", true);
        }
    }
    function isAgreedByComp() {
        if($('#EMGIHPFAgreedByComp').prop('checked')==true) {
            $("#EMGIHPFCompLimit").attr("readonly", false);
            $("#EMGIHPFAcctNo").attr("readonly", false);
        }else {
            $("#EMGIHPFCompLimit").attr("readonly", true);
            $("#EMGIHPFAcctNo").attr("readonly", true);
        }
    }
    function isDailyWages() {
        if($('#EMGIHIsDailyWages').prop('checked')==true) {
            $("#EMGIHDailyWagesId").attr("disabled", false);
        }else {
            $("#EMGIHDailyWagesId").attr("disabled", true);
        }
    }
    function updateCheckBoxValue() {
        if($('#EMGIHIsResignation').prop('checked')==true) {
            $('#EMGIHIsResignation').val(1);
        }else {
            $('#EMGIHIsResignation').val(0);
        }
        if($('#EMGIHIsDailyWages').prop('checked')==true) {
            $('#EMGIHIsDailyWages').val(1);
        }else {
            $('#EMGIHIsDailyWages').val(0);
        }
        if($('#EMGIHPFApplicable').prop('checked')==true) {
            $('#EMGIHPFApplicable').val(1);
        }else {
            $('#EMGIHPFApplicable').val(0);
        }
        if($('#EMGIHPFAgreedByComp').prop('checked')==true) {
            $('#EMGIHPFAgreedByComp').val(1);
        }else {
            $('#EMGIHPFAgreedByComp').val(0);
        }
        if($('#EMGIHOTApplicable').prop('checked')==true) {
            $('#EMGIHOTApplicable').val(1);
        }else {
            $('#EMGIHOTApplicable').val(0);
        }
        if($('#EMGIHSameAsPresentAdd').prop('checked')==true) {
            $('#EMGIHSameAsPresentAdd').val(1);
        }else {
            $('#EMGIHSameAsPresentAdd').val(0);
        }
        if($('#EMGIHLeaveWithoutPayIndicator').prop('checked')==true) {
            $('#EMGIHLeaveWithoutPayIndicator').val(1);
        }else {
            $('#EMGIHLeaveWithoutPayIndicator').val(0);
        }
    }



    //Date picker
// console.log($('#id').val());
if($('#EMGIHDateOfBirth').val() != undefined){
    $('#EMGIHDateOfBirth').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfJoining').val() != undefined){
    $('#EMGIHDateOfJoining').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfConfirmation').val() != undefined){
    $('#EMGIHDateOfConfirmation').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfMarriage').val() != undefined){
    $('#EMGIHDateOfMarriage').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfLetterSubmission').val() != undefined){
    $('#EMGIHDateOfLetterSubmission').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfResignation').val() != undefined){
    $('#EMGIHDateOfResignation').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHDateOfLeaving').val() != undefined){
    $('#EMGIHDateOfLeaving').flatpickr({
    dateFormat: "d-m-Y"
    });
}
if($('#EMGIHLeaveWithoutPayFrom').val() != undefined){
    $('#EMGIHLeaveWithoutPayFrom').flatpickr({
    dateFormat: "d-m-Y"
    });
}
</script>
@endsection
