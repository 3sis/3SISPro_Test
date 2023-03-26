@extends('layouts.app')
@section('content')
@section('css')
    @include('inc.style')
    @include('inc.flatpickr_css')

    <meta name="csrf-token" content="{{ csrf_token() }}">

    @if (Request::path() == 'company')
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

@if (Request::path() == 'company')
    <div class="mt-1"
        style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
        {{-- <form id='AddForm' method="post" autocomplete="off"> --}}
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
                    <a class="btn btn-success btn-icon" href="{{ url('company/add') }}">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-plus">
                            <line x1="12" y1="5" x2="12" y2="19"></line>
                            <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg>
                    </a>
                    <a class="btn btn-light btn-icon" href="{{ url('company_report/excel') }}" target="_blank">
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
                    <a class="btn btn-light btn-icon" href="{{ url('company_report/pdf') }}" target="_blank">
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
                    <li class="nav-item">
                        <a class="nav-link" href="#address">Address</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#banking">Banking</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#statutory">Statutory</a>
                    </li>
                    @if (!empty($edit_data['id']))
                    <li class="nav-item">
                        <a class="nav-link" href="#user_info">User Info</a>
                    </li>
                    @endif
                </ul>

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
            <a href="{{ url('company') }}" class="btn btn-info"><svg xmlns="http://www.w3.org/2000/svg"
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

<!--company List Table -->
@if (Request::path() == 'company')
    <div class="table-responsive mt-2" id="add">
        <table id="landingPageBrowser3SIS" class="table dt-table-hover dataTable no-footer {{ theme('table') }}">
            <thead>
                <tr>
                    <th title="Company Id">ID</th>
                    <th>Company Name</th>
                    <th>Nick Name</th>
                    <th>Tag Line</th>
                    <th>User</th>
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
                                        <th title="Company Id">ID</th>
                                        <th>Company Name</th>
                                        <th>Nick Name</th>
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
@endif

@if ($action == 'add' || $action == 'edit')
    <!-- Scroll Spy Main Content -->
    <main data-bs-spy="scroll" data-bs-target="#navbar-example2" data-bs-root-margin="0px 0px -40%"
        data-bs-smooth-scroll="true" class="scrollspy-example" tabindex="0"
        style=" position: relative; top: 4px;">

        <div class="row" id="add">
            <div id="flStackForm1" class="col-lg-12 layout-spacing layout-top-spacing">
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
                            @if (!empty($edit_data['id']))
                                <input type="hidden" name="id" id="id" value="{{ $edit_data['id'] }}">
                            @endif
                            @if ($action == 'add')
                                <input type="hidden" id="action" value="insert">
                            @else
                                <input type="hidden" id="action" value="update">
                            @endif
                            <div class="col-md-3">
                                <label for="inputEmail4" class="form-label">Company Id<span class="text-danger">
                                        *</span></label>
                                <input type="text" name='GMCOHCompanyId' id='GMCOHCompanyId'
                                    class='form-control threshold' maxlength="20" placeholder="Enter Company Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHCompanyId', $edit_data['GMCOHCompanyId'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Description 1<span
                                        class="text-danger"> *</span></label>
                                <input type="text" name='GMCOHDesc1' id='GMCOHDesc1'
                                    class='form-control threshold' maxlength="20"
                                    placeholder="Enter Company Description 1"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHDesc1', $edit_data['GMCOHDesc1'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Nick Name</label>
                                <input type="text" name='GMCOHNickName' id='GMCOHNickName'
                                    class='form-control threshold' maxlength="20" placeholder="Nick Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHNickName', $edit_data['GMCOHNickName'] ?? '') }}">
                            </div>
                            <div class="col-6">
                                <label for="inputAddress" class="form-label">Description 2</label>
                                <textarea name='GMCOHDesc2' id='GMCOHDesc2' class='form-control textarea' maxlength="200"
                                    placeholder="Enter Company Description 2" style='border-color: rgb(102, 175, 233); outline: 0px'>{{ old('GMCOHDesc2', $edit_data['GMCOHDesc2'] ?? '') }}</textarea>
                            </div>
                            <div class="col-md-6">
                                <label for="inputPassword4" class="form-label">Tag Line</label>
                                <input type="text" name='GMCOHTagLine' id='GMCOHTagLine' class='form-control'
                                    placeholder="Tag Line" style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHTagLine', $edit_data['GMCOHTagLine'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputCurrency" class="form-label">Currency<span class="text-danger">
                                        *</span> </label>
                                <select id='GMCOHCurrencyId' name='GMCOHCurrencyId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Currency</option>
                                    @foreach ($currency_list as $currency)
                                        @if (!empty($edit_data['GMCOHCurrencyId']) && $edit_data['GMCOHCurrencyId'] == $currency->GMCRHCurrencyId)
                                            <option value='{{ $currency->GMCRHCurrencyId }}' selected>
                                                {{ $currency->GMCRHDesc1 }}</option>
                                        @else
                                            <option value='{{ $currency->GMCRHCurrencyId }}'>
                                                {{ $currency->GMCRHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label>Quantity Decimals</label>
                                    <select id='GMCOHDecimalPositionQty' name='GMCOHDecimalPositionQty'
                                        class="form-select" style="width: 100%;border: 1px solid #68a6ec;">
                                        @foreach ($qtylist as $Decimal)
                                            @if (!empty($edit_data['GMCOHDecimalPositionQty']) && $edit_data['GMCOHDecimalPositionQty'] == $Decimal)
                                                <option value='{{ $Decimal }}' selected>
                                                    {{ $Decimal }}</option>
                                            @else
                                                <option value='{{ $Decimal }}'>
                                                    {{ $Decimal }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label>Value Decimals</label>
                                    <select id='GMCOHDecimalPositionValue' name='GMCOHDecimalPositionValue'
                                        class="form-select" style="width: 100%;border: 1px solid #68a6ec;">
                                        <option value=''>Select Qty</option>
                                        @foreach ($qtylist as $qty)
                                            @if (!empty($edit_data['GMCOHDecimalPositionValue']) && $edit_data['GMCOHDecimalPositionValue'] == $qty)
                                                <option value='{{ $qty }}' selected>
                                                    {{ $qty }}</option>
                                            @else
                                                <option value='{{ $qty }}'>
                                                    {{ $qty }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Bi Desc</label>
                                <input type="text" name='GMCOHBiDesc' id='GMCOHBiDesc'
                                    class='form-control threshold' maxlength="20" placeholder="Bi Desc"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHBiDesc', $edit_data['GMCOHBiDesc'] ?? '') }}">
                            </div>

                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Land Line</label>
                                <input type="text" name='GMCOHLandLine' id='GMCOHLandLine' class='form-control '
                                    placeholder="Land Line" style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHLandLine', $edit_data['GMCOHLandLine'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Mobile No</label>
                                <input type="text" name='GMCOHMobileNo' id='GMCOHMobileNo' class='form-control '
                                    placeholder="Mobile No" style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHMobileNo', $edit_data['GMCOHMobileNo'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Email</label>
                                <input type="text" name='GMCOHEmail' id='GMCOHEmail' class='form-control '
                                    placeholder="Email" style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHEmail', $edit_data['GMCOHEmail'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Website</label>
                                <input type="text" name='GMCOHWebsite' id='GMCOHWebsite' class='form-control'
                                    placeholder="Website" style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHWebsite', $edit_data['GMCOHWebsite'] ?? '') }}">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Address Start -->
        <div class="row" id="address">
            <div id="flStackForm2" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Address</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-12">
                                <label for="address1" class="form-label">Address<span class="text-danger">
                                        *</span></label>
                                <input type="text" name='GMCOHAddress1' id='GMCOHAddress1'
                                    class='form-control threshold' maxlength="100" placeholder="Enter Address 1"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHAddress1', $edit_data['GMCOHAddress1'] ?? '') }}">
                            </div>
                            <div class="col-12">
                                <input type="text" name='GMCOHAddress2' id='GMCOHAddress2'
                                    class='form-control threshold' maxlength="100" placeholder="Enter Address 2"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHAddress2', $edit_data['GMCOHAddress2'] ?? '') }}">
                            </div>
                            <div class="col-12">
                                <input type="text" name='GMCOHAddress3' id='GMCOHAddress3'
                                    class='form-control threshold' maxlength="100" placeholder="Enter Address 3"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHAddress3', $edit_data['GMCOHAddress3'] ?? '') }}">
                            </div>
                            <div class="col-md-3">
                                <label for="inputCity" class="form-label">City <span class="text-danger"> *</span>
                                </label>
                                <select id='GMCOHCityId' name='GMCOHCityId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select City</option>
                                    @foreach ($city_list as $city)
                                        @if (!empty($edit_data['GMCOHCityId']) && $edit_data['GMCOHCityId'] == $city->GMCTHCityId)
                                            <option value='{{ $city->GMCTHCityId }}' selected>
                                                {{ $city->GMCTHDesc1 }}</option>
                                        @else
                                            <option value='{{ $city->GMCTHCityId }}'>
                                                {{ $city->GMCTHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">State</label>
                                    <input type="hidden" name="GMCOHStateId" id="GMCOHStateId">
                                    <input type="text" name='stateName' id='stateName' class='form-control'
                                        readonly>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">Contry</label>
                                    <input type="hidden" name="GMCOHCountryId" id="GMCOHCountryId">
                                    <input type="text" name='countryName' id='countryName' class='form-control'
                                        readonly>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class='form-group'>
                                    <label class="form-label">Pin Code</label>
                                    <input type="text" name='GMCOHPinCode' id='GMCOHPinCode'
                                        class='form-control threshold' maxlength="6" placeholder="Enter Pin Code"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('GMCOHPinCode', $edit_data['GMCOHPinCode'] ?? '') }}">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Address End -->
        <!-- Banking Start -->
        <div class="row" id="banking">
            <div id="flStackForm3" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Banking</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="col-md-6">

                                <div class="col-md-12">
                                    <label style='color:#77ff07'>Bank1</label>
                                </div>
                                <div class="col-md-12">
                                    <label for="branch" class="form-label">Branch 1<span class="text-danger">
                                            *</span> </label>
                                    <select id='GMCOHBranchId1' name='GMCOHBranchId1' class="form-select"
                                        style="width: 100%;border: 1px solid #68a6ec;">
                                        <option value=''>Select Branch</option>
                                        @foreach ($branch_list as $branch)
                                            @if (!empty($edit_data['GMCOHBranchId1']) && $edit_data['GMCOHBranchId1'] == $branch->BMBRHBranchId)
                                                <option value='{{ $branch->BMBRHBranchId }}' selected>
                                                    {{ $branch->BMBRHDesc1 }}</option>
                                            @else
                                                <option value='{{ $branch->BMBRHBranchId }}'>
                                                    {{ $branch->BMBRHDesc1 }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="row mt-0">

                                    <div class="col-md-6">
                                        <label for="bank" class="form-label">Bank</label>
                                        <input type="hidden" name="GMCOHBankId1" id="GMCOHBankId1">
                                        <input type="text" name='bankName1' id='bankName1' class='form-control'
                                            readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ifsc" class="form-label">IFSC</label>
                                        <input type="text" name='GMCOHIFSId1' id='GMCOHIFSId1'
                                            class='form-control' readonly>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label for="bank" class="form-label">A/C Name</label>
                                    <input type="text" name="GMCOHBankAcName1" id="GMCOHBankAcName1"
                                        class='form-control threshold' maxlength="100" placeholder="Enter A/C Name 1"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('GMCOHBankAcName1', $edit_data['GMCOHBankAcName1'] ?? '') }}">
                                </div>
                                <div class="col-md-12">
                                    <label for="ifsc" class="form-label">A/C No.</label>
                                    <input type="text" name="GMCOHBankAccNo1" id="GMCOHBankAccNo1"
                                        class='form-control threshold' maxlength="20" placeholder="Enter A/C No. 1"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('GMCOHBankAccNo1', $edit_data['GMCOHBankAccNo1'] ?? '') }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="col-md-12">
                                    <label style='color:#77ff07'>Bank2</label>
                                </div>
                                <div class="col-md-12">
                                    <label for="branch" class="form-label">Branch 2<span class="text-danger">
                                            *</span> </label>
                                    <select id='GMCOHBranchId2' name='GMCOHBranchId2' class="form-select"
                                        style="width: 100%;border: 1px solid #68a6ec;">
                                        <option value=''>Select Branch</option>
                                        @foreach ($branch_list as $branch)
                                            @if (!empty($edit_data['GMCOHBranchId2']) && $edit_data['GMCOHBranchId2'] == $branch->BMBRHBranchId)
                                                <option value='{{ $branch->BMBRHBranchId }}' selected>
                                                    {{ $branch->BMBRHDesc1 }}</option>
                                            @else
                                                <option value='{{ $branch->BMBRHBranchId }}'>
                                                    {{ $branch->BMBRHDesc1 }}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <div class="row mt-0">
                                    <div class="col-md-6">
                                        <label for="bank" class="form-label">Bank</label>
                                        <input type="hidden" name="GMCOHBankId2" id="GMCOHBankId2">
                                        <input type="text" name='bankName2' id='bankName2' class='form-control'
                                            readonly>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="ifsc" class="form-label">IFSC</label>
                                        <input type="text" name='GMCOHIFSId2' id='GMCOHIFSId2'
                                            class='form-control' readonly>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label for="bank" class="form-label">A/C Name</label>
                                    <input type="text" name="GMCOHBankAcName2" id="GMCOHBankAcName2"
                                        class='form-control threshold' maxlength="100" placeholder="Enter A/C Name 2"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('GMCOHBankAcName2', $edit_data['GMCOHBankAcName2'] ?? '') }}">
                                </div>
                                <div class="col-md-12">
                                    <label for="ifsc" class="form-label">A/C No.</label>
                                    <input type="text" name="GMCOHBankAccNo2" id="GMCOHBankAccNo2"
                                        class='form-control threshold' maxlength="20" placeholder="Enter A/C No. 2"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ old('GMCOHBankAccNo2', $edit_data['GMCOHBankAccNo2'] ?? '') }}">
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Banking End -->
        <!-- Statutory Start -->
        <div class="row" id="statutory">
            <div id="flStackForm4" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Statutory</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">

                            <div class="col-md-6">
                                <label for="bank" class="form-label">GST</label>
                                <input type="text" name="GMCOHGSTNo" id="GMCOHGSTNo"
                                    class='form-control' placeholder="GST No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHGSTNo', $edit_data['GMCOHGSTNo'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="bank" class="form-label">PAN No.</label>
                                <input type="text" name="GMCOHPANNo" id="GMCOHPANNo"
                                    class='form-control' placeholder="PAN No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHPANNo', $edit_data['GMCOHPANNo'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="bank" class="form-label">CIN No.</label>
                                <input type="text" name="GMCOHCINNo" id="GMCOHCINNo"
                                    class='form-control' placeholder="CIN No"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHCINNo', $edit_data['GMCOHCINNo'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="bank" class="form-label">EST. Date</label>
                                @if (!empty($edit_data['id']))
                                    <input type="text" name="GMCOHESTDate" id="GMCOHESTDate"
                                        class='form-control flatpickr flatpickr-input active input_border'
                                        placeholder="EST. Date"
                                        value="{{ date('d-m-Y', strtotime($edit_data['GMCOHESTDate'])) }}">
                                @else
                                    <input id="GMCOHESTDate" name='GMCOHESTDate'
                                        class="form-control flatpickr flatpickr-input active input_border"
                                        type="text" placeholder="EST. Date" >
                                @endif
                            </div>

                            <div class="col-md-6">
                                <label for="bank" class="form-label">Folder Name</label>
                                <input type="text" name="GMCOHFolderName" id="GMCOHFolderName"
                                    class='form-control' placeholder="Folder Name"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHFolderName', $edit_data['GMCOHFolderName'] ?? '') }}">
                            </div>
                            <div class="col-md-6">
                                <label for="bank" class="form-label">Company Logo</label>
                                <input type="text" name="GMCOHImageFileName" id="GMCOHImageFileName"
                                    class='form-control' placeholder="Company Logo"
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHImageFileName', $edit_data['GMCOHImageFileName'] ?? '') }}">
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- Statutory End -->
        <!-- User Info Start -->
        @if (!empty($edit_data['id']))
        <div class="row" id="user_info">
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
                        <div class="row g-3">
                            <div class="col-md-4">
                                <label for="user" class="form-label">User</label>
                                <input type="text" name='GMCOHUser' id='GMCOHUser' class='form-control '
                                    style='border-color: rgb(102, 175, 233); outline: 0px'
                                    value="{{ old('GMCOHUser', $edit_data['GMCOHUser'] ?? '') }}" readonly>
                            </div>
                            <div class="col-md-4">
                                <label for="Created" class="form-label">Created On</label>
                                @if (!empty($edit_data['id']))
                                    <input type="text" name='GMCOHLastCreated' id='GMCOHLastCreated'
                                        class='form-control input_border'
                                        value="{{ date('d-m-Y', strtotime($edit_data['GMCOHLastCreated'])) }}"
                                        readonly>
                                @else
                                    <input id="GMCOHLastCreated" name='GMCOHLastCreated'
                                        class="form-control flatpickr flatpickr-input active input_border"
                                        type="text" placeholder="Select Date.." readonly="readonly">
                                @endif
                            </div>
                            <div class="col-md-4">
                                <label for="Updated" class="form-label">Updated On</label>
                                @if (!empty($edit_data['id']))
                                    <input id="GMCOHLastUpdated" name='GMCOHLastUpdated'
                                        class="form-control flatpickr flatpickr-input active input_border"
                                        type="text" placeholder="Select Date.." readonly="readonly"
                                        value="{{ date('d-m-Y', strtotime($edit_data['GMCOHLastUpdated'])) }}">
                                @else
                                    <input id="GMCOHLastUpdated" name='GMCOHLastUpdated'
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
</form>

@endif

@endsection
@section('js_code')
@include('inc.js_file')
@include('inc.flatpickr_js')

{{-- <!-- <script src={{ asset('assets/common/js/CompanyMasterAjax.js') }}></script> --> --}}
<script type="text/javascript">
    $(document).ready(function() {
        var cityId = $('#GMCOHCityId').val();
        if (cityId != '') {
            getCityDetail(cityId);
        }
        var branchId1 = $('#GMCOHBranchId1').val();
        if (branchId1 != '') {
            getBank1Details(branchId1);
        }
        var branchId2 = $('#GMCOHBranchId2').val();
        if (branchId2 != '') {
            getBank2Details(branchId2);
        }
        $( "#GMCOHCurrencyId" ).select2();
        $( "#GMCOHCityId" ).select2();
        $( "#GMCOHBranchId1" ).select2();
        $( "#GMCOHBranchId2" ).select2();

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
            "ajax": "get_company",
            "columns": [{
                    data: "GMCOHCompanyId"
                },
                {
                    data: "GMCOHDesc1"
                },
                {
                    data: "GMCOHNickName"
                },
                {
                    data: "GMCOHTagLine"
                },
                {
                    data: "GMCOHUser"
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
        alert('test');
        e.preventDefault();
        $('#GMCOHCompanyId,#GMCOHDesc1,#select2-GMCOHCityId-container').removeClass(
            'border border-danger');

        if ($('#GMCOHCompanyId').val() == '') {
            $('#GMCOHCompanyId').addClass('border border-danger');
        }
        if ($('#GMCOHDesc1').val() == '') {
            $('#GMCOHDesc1').addClass('border border-danger');

        }
        // if($('#GMCOHDesc2').val() == ''){
        // $('#GMCOHDesc2').addClass('border border-danger');
        // }
        if ($('#GMCOHCityId').val() == '') {
            $('#select2-GMCOHCityId-container').addClass('border border-danger');
        }
        $('.msg_error').html('');
        if ($('#GMCOHCompanyId').val() == '' || $('#GMCOHDesc1').val() == '' ||
            $('#GMCOHCityId').val() == '') {
            if ($('#GMCOHCompanyId').val() == '') {
                $('.msg_error').append('<p>Please Enter Company name !</p>');
            }
            if ($('#GMCOHDesc1').val() == '') {
                $('.msg_error').append('<p>Please Enter Company Description 1 !</p>');
            }
            // if($('#GMCOHDesc2').val() == ''){
            //       $('.msg_error').append('<p>Please Enter Company Description 2 !</p>');
            // }
            if ($('#GMCOHCityId').val() == '') {
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
                url: "{{ url('company_save') }}",
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
                            $finalMessage3SIS = fnSingleLevelFinalSave('company', $(
                                    '#GMCOHCompanyId')
                                .val(), $('#GMCOHDesc1').val(), 'Added');
                            $('.error_msg').html($finalMessage3SIS);
                            $('#GMCOHCityId').val('').trigger("change");
                            $('#AddForm')[0].reset();
                        }
                        if (action == 'update') {

                            Swal.fire({
                                icon: 'success',
                                title: 'company update successfully',
                                allowOutsideClick: false,
                                timer: 5000,
                            })
                            window.location = "{{ url('company') }}";

                        }
                    }
                    if (response.status == 'error') {
                        $('.error_msg').append('<p>Company Master not save</p>');
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
            "ajax": "delete_company_list",
            "columns": [{
                    data: "GMCOHCompanyId"
                },
                {
                    data: "GMCOHDesc1"
                },
                {
                    data: "fn_city.GMCTHDesc1"
                },
                {
                    data: "GMCOHUser"
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
        $('.modal-title').text('Restore Company');
        $('#UndoModal').modal('show');
    });

    $(document).on('click', '.delete', function() {
        var action = 'delete';
        var id = $(this).attr('id');
        var desc = $(this).closest("tr").find("td:eq(1)").text();
        $deleteMessage3SIS = fnConfirmationMsg('Delete', 'Company', id, desc);
        $successMessage3SIS = fnSuccessMsg('Deleted', 'Company', id, desc);

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
                    url: "company_delete",
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
        $restoreMessage3SIS = fnConfirmationMsg('Restore', 'Company', id, desc);
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
                    url: "company_delete",
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
    $('#GMCOHCityId').change(function() {
        var id = $(this).val();
        getCityDetail(id);
    });
    $('#GMCOHBranchId1').change(function() {
        var id = $(this).val();
        getBank1Details(id);
    });
    $('#GMCOHBranchId2').change(function() {
        var id = $(this).val();
        getBank2Details(id);
    });

    function getCityDetail(id) {
        $.ajax({
            url: "{{ url('get_city_desc1') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#GMCOHStateId').val(response.StateId);
                $('#stateName').val(response.StateDesc);
                $('#GMCOHCountryId').val(response.CountryId);
                $('#countryName').val(response.CountryDesc);
            }
        })
    }

    function getBank1Details(id) {
        $.ajax({
            url: "{{ url('get_branch_details') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#GMCOHBankId1').val(response.BankId);
                $('#bankName1').val(response.BankName);
                $('#GMCOHIFSId1').val(response.ifsc);
            }
        })
    }

    function getBank2Details(id) {
        $.ajax({
            url: "{{ url('get_branch_details') }}",
            type: 'get',
            data: 'id=' + id,
            success: function(response) {
                $('#GMCOHBankId2').val(response.BankId);
                $('#bankName2').val(response.BankName);
                $('#GMCOHIFSId2').val(response.ifsc);
            }
        })
    }
    //Date picker
console.log($('#id').val());
if($('#id').val() != undefined){
    $('#GMCOHESTDate').flatpickr({
    dateFormat: "d-m-Y"
});
}else{
    $('#GMCOHESTDate').flatpickr({
    defaultDate: new Date(),
    dateFormat: "d-m-Y"
});
}
</script>
@endsection
