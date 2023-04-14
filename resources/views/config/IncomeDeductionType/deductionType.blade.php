@extends('layouts.app')
@section('content')
@section('css')
    @include('inc.style')
    @include('inc.flatpickr_css')
    @if (Request::path() == 'deductionType')
        @include('inc.datatable')
    @endif
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
@if (Request::path() == 'deductionType')
    <div class="mt-1"
        style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
        <form id='AddForm' method="post" autocomplete="off">
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
                    <a class="btn btn-success btn-icon" href="{{ url('deductionType/add') }}" title="Create">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-plus">
                            <line x1="12" y1="5" x2="12" y2="19"></line>
                            <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg>
                    </a>
                    <a class="btn btn-light btn-icon" href="{{ url('deductionType_report/excel') }}" target="_blank"
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
                    <a class="btn btn-light btn-icon" href="{{ url('deductionType_report/pdf') }}" target="_blank"
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


<!-- Scroll Spy Navigation -->
@if ($action == 'add' || $action == 'edit')
    <nav id="navbar-example2" class="navbar sticky-top bg-dark" style="top: 110px;">
        <div class="col-auto me-auto mt-2">
            <form id='AddForm' method="post" autocomplete="off">
                <ul class="nav nav-pills mb-2 ms-1">
                    <li class="nav-item">
                        <a class="nav-link" href="#add">{{ $action == 'add' ? 'Create' : 'Edit' }} </a>
                    </li>
                    @if ($edit_data['PMDTHIsIncomeDependent']== '1')
                        <li class="nav-item" id="nav-selectIncome-tab"><a class="nav-link" href="#selectIncome">Select Income</a></li>
                    @endif
                    @if (!empty($edit_data['id']))
                        <li class="nav-item">
                            <a class="nav-link" href="#user_info">User Info</a>
                        </li>
                    @endif
                </ul>
        </div>
        <div class="col-auto me-1">
            <a href="#" class="btn btn-danger" id="btn_error" title="Error"><svg
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                    stroke-linejoin="round" class="feather feather-alert-circle">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="12" y1="8" x2="12" y2="12"></line>
                    <line x1="12" y1="16" x2="12.01" y2="16"></line>
                </svg></a>
            <a href="{{ url('deductionType') }}" class="btn btn-info" title="Back"><svg
                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                    fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                    stroke-linejoin="round" class="feather feather-arrow-left">
                    <line x1="19" y1="12" x2="5" y2="12"></line>
                    <polyline points="12 19 5 12 12 5"></polyline>
                </svg></a>
            <button id="save" class="btn btn-success" title="{{ $action == 'add' ? 'Save' : 'Update' }}">

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

<!--deductionType List Table -->
@if (Request::path() == 'deductionType')
    <div class="table-responsive mt-2" id="add">
        <table id="landingPageBrowser3SIS" class="table dt-table-hover dataTable no-footer {{ theme('table') }}">
            <thead>
                <tr>
                    <th title="Deduction Type Id">ID</th>
                    <th>Deduction Type</th>
                    <th>Rule</th>
                    <th>Ded. Cycle</th>
                    <th title="Printing Sequence">P.Seq.</th>
                    <th>Rounding</th>
                    {{-- <th title="Income Dependent Deduction">IDD</th> --}}
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
                                        <th title="Deduction Type Id">ID</th>
                                        <th>Deduction Type</th>
                                        <th>Desc1</th>
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
        data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0"
        style=" position: relative; top: 4px;">

        <div class="row" id="add">
            <!-- <section  id="about" class="section"> -->
            <div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12 error_msg">
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            @csrf
                            <input type="hidden" name="PMDTHDeductionIdK" id="PMDTHDeductionIdK">
                            <input type="hidden" name="PMDTHDedStrategyDesc" id="PMDTHDedStrategyDesc">

                            @if (!empty($edit_data['id']))
                                <input type="hidden" name="id" id="id" value="{{ $edit_data['id'] }}">
                            @endif
                            @if ($action == 'add')
                                <input type="hidden" id="action" value="insert">
                            @else
                                <input type="hidden" id="action" value="update">
                            @endif
                            <div class="col-md-3">
                                <label for="inputEmail4" class="form-label">Deduction id<b
                                        class="text-danger">*</b></label>
                                <input type="text" name='PMDTHDeductionId' id='PMDTHDeductionId'
                                    class='form-control threshold' maxlength="20" placeholder="Enter Deduction id"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('PMDTHDeductionId', $edit_data['PMDTHDeductionId'] ?? '') }}">
                            </div>
                            <div class="col-md-4">
                                <label for="inputPassword4" class="form-label">Description 1<b
                                        class="text-danger">*</b></label>
                                <input type="text" name='PMDTHDesc1' id='PMDTHDesc1'
                                    class='form-control threshold' maxlength="20"
                                    placeholder="Enter Deduction Description 1"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('PMDTHDesc1', $edit_data['PMDTHDesc1'] ?? '') }}">
                            </div>
                            <div class="col-md-5">
                                <label for="inputAddress" class="form-label">Description 2</label>
                                <textarea name='PMDTHDesc2' id='PMDTHDesc2' class='form-control textarea' maxlength="200"
                                    placeholder="Enter Deduction Description 2" style='border-color: rgb(102, 175, 233); outline: 0px'>{{ old('PMDTHDesc2', $edit_data['PMDTHDesc2'] ?? '') }}</textarea>
                            </div>

                            <div class="col-md-2">
                                <label for="inputSelect" class="form-label">Gender Specific<b
                                        class="text-danger">*</b></label>

                                <select name="PMDTHApplicableFor" id="PMDTHApplicableFor" class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    @if ($edit_data['PMDTHApplicableFor'] == 'P')
                                        <option value="C" selected>Common</option>
                                    @else
                                        <option value="C">Common</option>
                                    @endif
                                    @if ($edit_data['PMDTHApplicableFor'] == 'M')
                                        <option value="I" selected>Individual</option>
                                    @else
                                        <option value="I">Individual</option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-2">
                                <label for="inputSelect" class="form-label">Deduction Strategy<b
                                        class="text-danger">*</b></label>

                                <select name="PMDTHDedStrategy" id="PMDTHDedStrategy" class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    @if ($edit_data['PMDTHDedStrategy'] == 'P')
                                        <option value="C" selected>Cumulative</option>
                                    @else
                                        <option value="C">Cumulative</option>
                                    @endif
                                    @if ($edit_data['PMDTHDedStrategy'] == 'M')
                                        <option value="P" selected>This Period Only</option>
                                    @else
                                        <option value="P">This Period Only</option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="inputRounding" class="form-label">Rounding <span class="text-danger">
                                        *</span>
                                </label>
                                <select id='PMDTHRoundingStrategy' name='PMDTHRoundingStrategy' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>--Select Rounding--</option>
                                    @foreach ($round_list as $Rounding)
                                        @if (!empty($edit_data['PMDTHRoundingStrategy']) && $edit_data['PMDTHRoundingStrategy'] == $Rounding->RSRSHRoundingId)
                                            <option value='{{ $Rounding->RSRSHRoundingId }}' selected>
                                                {{ $Rounding->RSRSHDesc1 }}</option>
                                        @else
                                            <option value='{{ $Rounding->RSRSHRoundingId }}'>
                                                {{ $Rounding->RSRSHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="inputRounding" class="form-label">Rule Id <span class="text-danger">
                                        *</span>
                                </label>
                                <select id='PMDTHRuleId' name='PMDTHRuleId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>--Select Rule Id--</option>
                                    @foreach ($rule_list as $ruleDefinition)
                                        @if (!empty($edit_data['PMDTHRuleId']) && $edit_data['PMDTHRuleId'] == $ruleDefinition->PMRDHRuleId)
                                            <option value='{{ $ruleDefinition->PMRDHRuleId }}' selected>
                                                {{ $ruleDefinition->PMRDHDesc1 }}</option>
                                        @else
                                            <option value='{{ $ruleDefinition->PMRDHRuleId }}'>
                                                {{ $ruleDefinition->PMRDHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-2">
                                <label for="bank" class="form-label">Printing Seq.</label>
                                <input type="number" name="PMDTHPrintingSeq" id="PMDTHPrintingSeq"
                                    class='form-control floatNumberField' placeholder="PF Threshold"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('PMDTHPrintingSeq', $edit_data['PMDTHPrintingSeq'] ?? '0') }}">
                            </div>
                            <div class="col-md-3">
                                <div class="n-chk col-md-12">
                                    <div class="form-check form-check-primary form-check-inline">
                                        @if (!empty($edit_data['PMDTHIsTaxExempted']))
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsTaxExempted'
                                                id='PMDTHIsTaxExempted'
                                                value="{{ $edit_data['PMDTHIsTaxExempted'] }}" checked>
                                        @else
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsTaxExempted'
                                                id='PMDTHIsTaxExempted'
                                                value="{{ old('PMDTHIsTaxExempted', $edit_data['PMDTHIsTaxExempted'] ?? '') }}">
                                        @endif
                                        <label class="form-check-label" for="form-check-default">
                                            Is Tax Exempted
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="n-chk col-md-12">
                                    <div class="form-check form-check-primary form-check-inline">
                                        @if (!empty($edit_data['PMDTHIsThisLoanLine']))
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsThisLoanLine'
                                                id='PMDTHIsThisLoanLine'
                                                value="{{ $edit_data['PMDTHIsThisLoanLine'] }}" checked>
                                        @else
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsThisLoanLine'
                                                id='PMDTHIsThisLoanLine'
                                                value="{{ old('PMDTHIsThisLoanLine', $edit_data['PMDTHIsThisLoanLine'] ?? '') }}">
                                        @endif
                                        <label class="form-check-label" for="form-check-default">
                                            Is Loan Line
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="n-chk col-md-12">
                                    <div class="form-check form-check-primary form-check-inline">
                                        @if (!empty($edit_data['PMDTHShowInTaxList']))
                                            <input class="form-check-input" type="checkbox" name='PMDTHShowInTaxList'
                                                id='PMDTHShowInTaxList'
                                                value="{{ $edit_data['PMDTHShowInTaxList'] }}" checked>
                                        @else
                                            <input class="form-check-input" type="checkbox" name='PMDTHShowInTaxList'
                                                id='PMDTHShowInTaxList'
                                                value="{{ old('PMDTHShowInTaxList', $edit_data['PMDTHShowInTaxList'] ?? '') }}">
                                        @endif
                                        <label class="form-check-label" for="form-check-default">
                                            Consider in IT
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="n-chk col-md-12">
                                    <div class="form-check form-check-primary form-check-inline">
                                        @if (!empty($edit_data['PMDTHIsIncomeDependent']))
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsIncomeDependent'
                                                id='PMDTHIsIncomeDependent'
                                                value="{{ $edit_data['PMDTHIsIncomeDependent'] }}" checked>
                                        @else
                                            <input class="form-check-input" type="checkbox" name='PMDTHIsIncomeDependent'
                                                id='PMDTHIsIncomeDependent'
                                                value="{{ old('PMDTHIsIncomeDependent', $edit_data['PMDTHIsIncomeDependent'] ?? '') }}">
                                        @endif
                                        <label class="form-check-label" for="form-check-default">
                                            Income Dependent
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <label for="inputSelect" class="form-label">Payment Cycle<b
                                        class="text-danger">*</b></label>

                                <select name="PMDTHDeductionCycle" id="PMDTHDeductionCycle" class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    @if ($edit_data['PMDTHDeductionCycle'] == 'P')
                                        <option value="P" selected>Periodic</option>
                                    @else
                                        <option value="P">Periodic</option>
                                    @endif
                                    @if ($edit_data['PMDTHDeductionCycle'] == 'M')
                                        <option value="M" selected>Monthly</option>
                                    @else
                                        <option value="M">Monthly</option>
                                    @endif
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label for="inputRounding" class="form-label">Period<span class="text-danger">
                                    *</span>
                                </label>
                                <select multiple="multiple" id='periodid' name='periodid[]' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>-- Select Period --</option>
                                    @foreach ($period_list as $period)
                                        @if (!empty($edit_data['periodid']) && $edit_data['periodid'] == $period->FYPMHPeriodId)
                                            <option value='{{ $period->FYPMHPeriodId }}' selected>
                                                {{ $period->FYPMHMonth }}</option>
                                        @else
                                            <option value='{{ $period->FYPMHPeriodId }}'>
                                                {{ $period->FYPMHMonth }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>

                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Select Income -->
        @if ($edit_data['PMDTHIsIncomeDependent']== '1')
            <div class="row" id="selectIncome">
                <div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-header">
                            <div class="row">
                                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                    <h3>Select Income</h3>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div class="row g-3">
                                <div class="table-responsive">
                                    <table id="incomeTypeSubTable" class="no-footer {{ theme('table') }}" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Line#</th>
                                                 <th>Income Id</th>
                                                <th>Description</th>
                                                <th>Select</th>
                                                <th>Percent</th>
                                                <th>Action</th>
                                                <th style="visibility: hidden;">User</th>
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
        @endif
        <!-- Select Income End -->
        <!-- User Info Start -->
        @if (!empty($edit_data['id']))
            <div class="row" id="user_info">
                <div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
                    <div class="statbox widget box box-shadow">
                        <div class="widget-header">
                            <div class="row">
                                <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                    <h3>User Info</h3>
                                </div>
                            </div>
                        </div>
                        <div class="widget-content widget-content-area">
                            <div class="row g-3">
                                <div class="col-md-4">
                                    <label for="user" class="form-label">User</label>
                                    @if (!empty($edit_data['id']))
                                        <input type="text" name='PMDTHUser' id='PMDTHUser'
                                            class='form-control input_border'
                                            value="{{ old('PMDTHUser', $edit_data['PMDTHUser'] ?? '') }}" readonly>
                                    @else
                                        <input type="text" name='PMDTHUser' id='PMDTHUser'
                                            class='form-control input_border' value="{{ Auth::user()->name }}"
                                            readonly>
                                    @endif
                                </div>
                                <div class="col-md-4">
                                    <label for="Created" class="form-label">Created On</label>
                                    @if (!empty($edit_data['id']))
                                        <input type="text" name='PMDTHLastCreated' id='PMDTHLastCreated'
                                            class='form-control input_border'
                                            value="{{ date('d-m-Y', strtotime($edit_data['PMDTHLastCreated'])) }}"
                                            readonly>
                                    @else
                                        <input id="PMDTHLastCreated" name='PMDTHLastCreated'
                                            class="form-control flatpickr flatpickr-input active input_border"
                                            type="text" placeholder="Select Date.." readonly="readonly">
                                    @endif
                                </div>
                                <div class="col-md-4">
                                    <label for="Updated" class="form-label">Updated On</label>
                                    @if (!empty($edit_data['id']))
                                        <input id="PMDTHLastUpdated" name='PMDTHLastUpdated'
                                            class="form-control flatpickr flatpickr-input active input_border"
                                            type="text" placeholder="Select Date.." readonly="readonly"
                                            value="{{ date('d-m-Y', strtotime($edit_data['PMDTHLastUpdated'])) }}">
                                    @else
                                        <input id="PMDTHLastUpdated" name='PMDTHLastUpdated'
                                            class="form-control flatpickr flatpickr-input active input_border"
                                            type="text" placeholder="Select Date.." readonly="readonly">
                                    @endif
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        @endif
        <!-- User_info End -->
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
@endif
@endsection
@section('js_code')
@include('inc.js_file')
@include('inc.flatpickr_js')
<script type="text/javascript">
    $(document).ready(function() {
        var id = $('#PMDTHDeductionId').val();
        if (id != undefined && id != '') {
            console.log("id" + id);
        }
        $('#PMDTHDeductionCycle').select2();
        $('#PMDTHRoundingStrategy').select2();
        $('#periodid').select2();
        $('#PMDTHRuleId').select2();
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
            "ajax": "get_deductionType",
            "columns": [{
                    data: "PMDTHDeductionId"
                },
                {
                    data: "PMDTHDesc1"
                },
                {
                    data: "fn_rule.PMRDHDesc1"
                },
                {
                    data: "PMDTHDeductionCycle"
                },
                {
                    data: "PMDTHPrintingSeq"
                },
                {
                    data: "fn_rounding.RSRSHDesc1"
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
                    "width": "10%",
                    "targets": 2
                },
                {
                    "width": "5%",
                    "targets": 3
                },
                {
                    "width": "5%",
                    "targets": 4
                },
                {
                    "width": "10%",
                    "targets": 5
                },
                {
                    "width": "10%",
                    "targets": 6
                }
            ]
        });


        fnLoadSubForm();
        $('#btn_error').hide();
    });

    $("#AddForm").submit(function(e) {
        updateCheckBoxValue();

        e.preventDefault();
        $('#PMDTHDeductionId,#PMDTHDesc1,#select2-PMDTHDeductionCycle-container,#select2-PMDTHRoundingStrategy-container,#select2-PMDTHRuleId-container')
            .removeClass(
                'border border-danger');

        if ($('#PMDTHDeductionId').val() == '') {
            $('#PMDTHDeductionId').addClass('border border-danger');
        }
        if ($('#PMDTHDesc1').val() == '') {
            $('#PMDTHDesc1').addClass('border border-danger');
        }
        if ($('#PMDTHDeductionCycle').val() == '') {
            $('#select2-PMDTHDeductionCycle-container').addClass('border border-danger');
        }
        if ($('#PMDTHRoundingStrategy').val() == '') {
            $('#select2-PMDTHRoundingStrategy-container').addClass('border border-danger');
        }
        if ($('#PMDTHRuleId').val() == '') {
            $('#select2-PMDTHRuleId-container').addClass('border border-danger');
        }
        $('.msg_error').html('');
        var action = $('#action').val();
        console.log('action: ' + action);
        $.ajax({
            url: "{{ url('deductionType_save') }}",
            method: 'post',
            data: new FormData(this),
            processData: false,
            dataType: "json",
            contentType: false,
            beforeSend: function() {
                $('#btn_error').hide();
                // updateCheckBoxValue();
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
                        $finalMessage3SIS = fnSingleLevelFinalSave('Deduction Type', $(
                                '#PMDTHDeductionId')
                            .val(), $('#PMDTHDesc1').val(), 'Added');
                        $('.error_msg').html($finalMessage3SIS);
                        $('#AddForm')[0].reset();
                    }
                    if (action == 'update') {

                        Swal.fire({
                            icon: 'success',
                            title: 'Deduction id updated successfully',
                            allowOutsideClick: false,
                            timer: 5000,
                        })
                        window.location = "{{ url('deductionType') }}";

                    }
                }
                if (response.status == 'error') {
                    $('.error_msg').append('<p>Deduction Type Master not save</p>');
                }
            }
        })
    });
    $('#btn_error').click(function() {
        $('#ErrorModal').modal('show');
    });
    function fnLoadSubForm(){

        $('#incomeTypeSubTable').DataTable({

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
            "ajax": "{{route('get_incomeSubForm')}}",
            "columns": [{data: "id"},
                {data: "PMDTDIncomeId"},
                {data: "fn_income.PMITHDesc1"},
                {data: "PMDTDIsSelect"},
                {data: "PMDTDDedPercent"},
                {data: "action", orderable:false, searchable: false},
                {data: "PMDTDUser", "visible": false},
                {data: "id", "visible": false},
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
                    "width": "10%",
                    "targets": 2
                },
                {
                    "width": "5%",
                    "targets": 3,
                    data:   "PMDTDIsSelect",
                    render: function (data ,td, cellData, rowData, row, col) {
                            if(data==1){
                                return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                                <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                                <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                            }else{
                                return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                                <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                                <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                            }
                    }
                },
                {
                    "width": "5%",
                    "targets": 4
                },
                {
                    "width": "10%",
                    "targets": 5
                }
            ]
        });
        // Income Type Selection browser Ends
    }
    $('#Undelete_Data').click(function() {
        $('#UndoModalTable').DataTable({
            // pagingType   : "simple_numbers",
            stripeClasses: [],
            pageLength: 6,
            lengthMenu: [6, 10, 20, 50],
            order: [
                [0, "desc"]
            ],
            processing: true,
            serverSide: true,
            destroy: true,
            "ajax": "delete_deductionType_list",
            "columns": [{
                    data: "PMDTHDeductionId"
                },
                {
                    data: "PMDTHDesc1"
                },
                {
                    data: "fn_rule.PMRDHDesc1"
                },
                {
                    data: "PMDTHUser"
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
        $('.modal-title').text('Restore Deduction Type');
        $('#UndoModal').modal('show');
    });

    $(document).on('click', '.delete', function() {
        var action = 'delete';
        var id = $(this).attr('id');
        var desc = $(this).closest("tr").find("td:eq(1)").text();
        $deleteMessage3SIS = fnConfirmationMsg('Delete', 'Deduction Type', id, desc);
        $successMessage3SIS = fnSuccessMsg('Deleted', 'Deduction Type', id, desc);

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
                    url: "deductionType_delete",
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
        $restoreMessage3SIS = fnConfirmationMsg('Restore', 'Deduction Type', id, desc);
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
                    url: "deductionType_delete",
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
    $('#PMDTHDeductionId').change(function() {
        $('#PMDTHDeductionIdK').val('D'.concat($('#PMDTHDeductionId').val()));
        alert($('#PMDTHDeductionIdK').val());
    })
    $("#PMDTHIsIncomeDependent").on("click", function () {
        alert('test111');

            showHideSelectIncomeTab();
            fnLoadSubForm();
        })
    function updateCheckBoxValue() {
        if ($('#PMDTHIsTaxExempted').prop('checked') == true) {
            $('#PMDTHIsTaxExempted').val(1);
        } else {
            $('#PMDTHIsTaxExempted').val(0);
        }
        if ($('#PMDTHIsThisLoanLine').prop('checked') == true) {
            $('#PMDTHIsThisLoanLine').val(1);
        } else {
            $('#PMDTHIsThisLoanLine').val(0);
        }
        if ($('#PMDTHShowInTaxList').prop('checked') == true) {
            $('#PMDTHShowInTaxList').val(1);
        } else {
            $('#PMDTHShowInTaxList').val(0);
        }
        if ($('#PMDTHIsIncomeDependent').prop('checked') == true) {
            $('#PMDTHIsIncomeDependent').val(1);
        } else {
            $('#PMDTHIsIncomeDependent').val(0);
        }
    }
    function showHideSelectIncomeTab(){
        if($('#PMDTHIsIncomeDependent').prop('checked')==true) {
            $("#nav-selectIncome-tab").show();
            $("#selectIncome").show();
        }else {
            $("#nav-selectIncome-tab").hide();
            $("#selectIncome").hide();
        }
    }
    //Date picker
    console.log($('#id').val());
    if ($('#id').val() != undefined) {
        $('#PMDTHLastCreated,#PMDTHLastUpdated').flatpickr({
            dateFormat: "d-m-Y"
        });
    } else {
        $('#PMDTHLastCreated,#PMDTHLastUpdated').flatpickr({
            defaultDate: new Date(),
            dateFormat: "d-m-Y"
        });
    }
</script>
@endsection
