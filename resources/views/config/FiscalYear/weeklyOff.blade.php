@extends('layouts.app')
@section('content')
@section('css')
    @include('inc.style')
    @include('inc.flatpickr_css')
    @if (Request::path() == 'weeklyOff')
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
@if (Request::path() == 'weeklyOff')
    <div class="mt-1"
        style="padding: 10px;background-color: #101427;border-radius: 6px;position: sticky;top: 114px;z-index: 1;">
        <!-- <form id='AddForm' method="post" autocomplete="off"> -->
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
                    <a class="btn btn-success btn-icon" href="{{ url('weeklyOff/add') }}" title="Create">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                            fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                            stroke-linejoin="round" class="feather feather-plus">
                            <line x1="12" y1="5" x2="12" y2="19"></line>
                            <line x1="5" y1="12" x2="19" y2="12"></line>
                        </svg>
                    </a>
                    <a class="btn btn-light btn-icon" href="{{ url('weeklyOff_report/excel') }}" target="_blank"
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
                    <a class="btn btn-light btn-icon" href="{{ url('weeklyOff_report/pdf') }}" target="_blank"
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
                    <li class="nav-item" id="nav-home-tab"> <a class="nav-link"
                            href="#home">{{ $action == 'add' ? 'Create' : 'Edit' }} </a></li>
                    <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#home">Entry</a></li>
                    <li class="nav-item" id="nav-offDay-tab"><a class="nav-link" href="#offDay">Off Day</a></li>
                    @if (!empty($edit_data['id']))
                        <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#user_info">User Info</a>
                        </li>
                    @endif
                    <li class="nav-item" id="nav-home-tab"><a class="nav-link" href="#empty"></a> </li>
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
            <a href="{{ url('weeklyOff') }}" class="btn btn-info" title="Back"><svg
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

<!--weeklyOff List Table -->
@if (Request::path() == 'weeklyOff')
    <div class="table-responsive mt-2" id="add">
        <table id="landingPageBrowser3SIS" class="table dt-table-hover dataTable no-footer {{ theme('table') }}">
            <thead>
                <tr>
                    <th title="Calendar Id">CID</th>
                    <th title="Calendar Desc">CDesc</th>
                    <th title="Fiscal Year">FY</th>
                    <th>Start Data</th>
                    <th>End Date</th>
                    <th title=" Monday">Mon</th>
                    <th title=" Tuesday">Tue</th>
                    <th title=" Wednesday">Wed</th>
                    <th title=" Thursday">Thu</th>
                    <th title=" Friday">Fri</th>
                    <th title=" Saturday">Sat</th>
                    <th title=" Sunday">Sun</th>
                    <th>Action</th>

                    <th style="visibility: hidden;">User</th>
                    <th style="visibility: hidden;">Created</th>
                    <th style="visibility: hidden;">Updated</th>
                </tr>
            </thead>
        </table>
    </div>
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
                            @if (!empty($edit_data['id']))
                                <input type="hidden" name="id" id="id" value="{{ $edit_data['id'] }}">
                            @endif
                            @if ($action == 'add')
                                <input type="hidden" id="action" value="insert">
                            @else
                                <input type="hidden" id="action" value="update">
                            @endif
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Calendar Id<span class="text-danger">
                                        *</span> </label>
                                <select id='FYWOHCalendarId' name='FYWOHCalendarId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Calendar</option>
                                    @foreach ($calendar_list as $calendar)
                                        @if (!empty($edit_data['FYWOHCalendarId']) && $edit_data['FYWOHCalendarId'] == $calendar->FYCAHCalendarId)
                                            <option value='{{ $calendar->FYCAHCalendarId }}' selected>
                                                {{ $calendar->FYCAHDesc1 }}</option>
                                        @else
                                            <option value='{{ $calendar->FYCAHCalendarId }}'>
                                                {{ $calendar->FYCAHDesc1 }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="dropdown" class="form-label">Fiscal Year<span class="text-danger">
                                        *</span> </label>
                                <select id='FYWOHFiscalYearId' name='FYWOHFiscalYearId' class="form-select"
                                    style="width: 100%;border: 1px solid #68a6ec;">
                                    <option value=''>Select Fiscal Year</option>
                                    @foreach ($fiscalYear_list as $fy)
                                        @if (!empty($edit_data['FYWOHFiscalYearId']) && $edit_data['FYWOHFiscalYearId'] == $fy->FYFYHFiscalYearId)
                                            <option value='{{ $fy->FYFYHFiscalYearId }}' selected>
                                                {{ $fy->FYFYHFiscalYearId }}</option>
                                        @else
                                            <option value='{{ $fy->FYFYHFiscalYearId }}'>
                                                {{ $fy->FYFYHFiscalYearId }}</option>
                                        @endif
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">Start Date</label>
                                @if (!empty($edit_data['id']))
                                    <input type="text" name='FYFYHStartDate' id='FYFYHStartDate'
                                        class='form-control' placeholder="Start Date"
                                        style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ date('d-m-Y', strtotime($edit_data['FYFYHStartDate'])) }}" readonly>
                                @else
                                    <input id="FYFYHStartDate" name='FYFYHStartDate'
                                        class="form-control input_border" type="text"
                                        placeholder="Start Date.."readonly>
                                @endif
                            </div>
                            <div class="col-md-3">
                                <label for="inputPassword4" class="form-label">End Date</label>
                                @if (!empty($edit_data['id']))
                                    <input type="text" name='FYFYHEndDate' id='FYFYHEndDate' class='form-control'
                                        placeholder="End Date" style='border-color: rgb(102, 175, 233); outline: 0px'
                                        value="{{ date('d-m-Y', strtotime($edit_data['FYFYHEndDate'])) }}" readonly>
                                @else
                                    <input id="FYFYHEndDate" name='FYFYHEndDate' class="form-control input_border"
                                        type="text" placeholder="Start Date.."readonly>
                                @endif
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="row" id="offDay">
            <div id="flStackForm" class="col-lg-12 layout-spacing layout-top-spacing">
                <div class="statbox widget box box-shadow">
                    <div class="widget-header">
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-sm-12 col-12">
                                <h3>Week Off Day</h3>
                            </div>
                        </div>
                    </div>
                    <div class="widget-content widget-content-area">
                        <div class="row g-3">
                            <div class="table-responsive">

                                 @php
                                   $arr = null;
                                    if(!empty($edit_data->weekday)){
                                    $arr =  json_decode($edit_data->weekday,true);
                                     }
                                @endphp
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>DayId</th>
                                            <th>Desc</th>
                                            <th>All</th>
                                            <th>First</th>
                                            <th>Second</th>
                                            <th>Third</th>
                                            <th>Fourth</th>
                                            <th>Fifth</th>
                                           <!--  <th>Deleted</th>
                                            <th>Action</th>
                                            <th style="visibility: hidden;">User</th>
                                            <th style="visibility: hidden;">Unique Id</th> -->


                                            <?php

                                           // $arr = ['WeekDay' =>['sunday'=>["first"=>0,"second"=>1],'monday'=>[1=>0,2=>1]]];

                                           //  echo "<pre>";
                                           //  print_r($arr);
                                            ?>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Sunday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[sunday][all]" {{ !empty($arr['sunday']['all']) ? 'checked' : ''}} ></td>
                                            <td><input type="checkbox" name="WeekDay[sunday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[sunday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[sunday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[sunday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[sunday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>2</td>
                                            <td>Monday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[monday][all]" {{ !empty($arr['monday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[monday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[monday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[monday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[monday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[monday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>3</td>
                                            <td>Tuesday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[tuesday][all]" {{ !empty($arr['tuesday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[tuesday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[tuesday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[tuesday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[tuesday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[tuesday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>4</td>
                                            <td>Wednesday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[wednesday][all]" {{ !empty($arr['wednesday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[wednesday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[wednesday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[wednesday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[wednesday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[wednesday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>5</td>
                                            <td>Thursday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[thursday][all]" {{ !empty($arr['thursday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[thursday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[thursday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[thursday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[thursday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[thursday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>6</td>
                                            <td>Friday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[friday][all]" {{ !empty($arr['friday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[friday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[friday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[friday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[friday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[friday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                         <tr>
                                            <td>7</td>
                                            <td>Saturday</td>
                                            <td><input type="checkbox" value="all" name="WeekDay[saturday][all]" {{ !empty($arr['saturday']['all']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[saturday][first]" value="1" {{ !empty($arr['sunday']['first']) ? 'checked' : ''}}></td>
                                            <td><input type="checkbox" name="WeekDay[saturday][second]" value="1" {{ !empty($arr['sunday']['second']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[saturday][third]" value="1" {{ !empty($arr['sunday']['third']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[saturday][fourth]" value="1" {{ !empty($arr['sunday']['fourth']) ? 'checked' : ''}}></td> 
                                            <td><input type="checkbox" name="WeekDay[saturday][fifth]" value="1" {{ !empty($arr['sunday']['fifth']) ? 'checked' : ''}}></td> 
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
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
                                        <input type="text" name='FYWOHUser' id='FYWOHUser'
                                            class='form-control input_border'
                                            value="{{ old('FYWOHUser', $edit_data['FYWOHUser'] ?? '') }}" readonly>
                                    @else
                                        <input type="text" name='FYWOHUser' id='FYWOHUser'
                                            class='form-control input_border' value="{{ Auth::user()->name }}"
                                            readonly>
                                    @endif
                                </div>
                                <div class="col-md-4">
                                    <label for="Created" class="form-label">Created On</label>
                                    @if (!empty($edit_data['id']))
                                        <input type="text" name='FYWOHLastCreated' id='FYWOHLastCreated'
                                            class='form-control input_border'
                                            value="{{ date('d-m-Y', strtotime($edit_data['FYWOHLastCreated'])) }}"
                                            readonly>
                                    @else
                                        <input id="FYWOHLastCreated" name='FYWOHLastCreated'
                                            class="form-control flatpickr flatpickr-input active input_border"
                                            type="text" placeholder="Select Date.." readonly="readonly">
                                    @endif
                                </div>
                                <div class="col-md-4">
                                    <label for="Updated" class="form-label">Updated On</label>
                                    @if (!empty($edit_data['id']))
                                        <input id="FYWOHLastUpdated" name='FYWOHLastUpdated'
                                            class="form-control flatpickr flatpickr-input active input_border"
                                            type="text" placeholder="Select Date.." readonly="readonly"
                                            value="{{ date('d-m-Y', strtotime($edit_data['FYWOHLastUpdated'])) }}">
                                    @else
                                        <input id="FYWOHLastUpdated" name='FYWOHLastUpdated'
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
            "ajax": "get_weeklyOff",
            "columns": [
                // CopyChange
                {
                    data: "FYWOHCalendarId"
                },
                {
                    data: "fn_calendar.FYCAHDesc1"
                },
                {
                    data: "FYWOHFiscalYearId"
                },
                {
                    data: "fn_fy.FYFYHStartDate"
                },
                {
                    data: "fn_fy.FYFYHEndDate"
                },
                {
                    data: "FYWOHMonday"
                },
                {
                    data: "FYWOHTuesday"
                },
                {
                    data: "FYWOHWednesday"
                },
                {
                    data: "FYWOHThursday"
                },
                {
                    data: "FYWOHFriday"
                },
                {
                    data: "FYWOHSaturday"
                },
                {
                    data: "FYWOHSunday"
                },
                {
                    data: "action",
                    orderable: false,
                    searchable: false
                },
                {
                    data: "FYWOHUser",
                    "visible": false
                },
                {
                    data: "FYWOHLastUpdated",
                    "visible": false
                },
                {
                    data: "FYWOHLastCreated",
                    "visible": false
                },
            ],

            columnDefs: [{
                    "width": "5%",
                    "targets": 0
                },
                {
                    "width": "10%",
                    "targets": 1
                },
                {
                    "width": "5%",
                    "targets": 2
                },
                {
                    "width": "10%",
                    "targets": 3
                },
                {
                    "width": "10%",
                    "targets": 4
                },
                {
                    targets: 5,
                    width: "2%",
                    data: "FYWOHMonday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 6,
                    width: "2%",
                    data: "FYWOHTuesday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 7,
                    width: "2%",
                    data: "FYWOHWednesday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 8,
                    width: "2%",
                    data: "FYWOHThursday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 9,
                    width: "2%",
                    data: "FYWOHFriday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 10,
                    width: "2%",
                    data: "FYWOHSaturday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                },
                {
                    targets: 11,
                    width: "2%",
                    data: "FYWOHSunday",
                    render: function(data, td, cellData, rowData, row, col) {

                        if (data == 1) {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        } else {
                            return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
                            <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
                            <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
                        }
                    }
                }
            ],
        });

        $('#btn_error').hide();
    });
    $("#FYWOHFiscalYearId").change(function(){
        var fy = $(this).val();
        $.ajax({
            url: "{{ url('get_fydate') }}",
            type: 'get',
            data: 'year=' + fy,
            success: function(response) {
                $('#FYFYHStartDate').val(response.fyStartDate);
                $('#FYFYHEndDate').val(response.fyEndDate);
            }
        });
    });
    $('#btn_error').click(function() {
        $('#ErrorModal').modal('show');
    });
    // $('#html5-SubForm3SIS').DataTable( {
    //     "oLanguage": {
    //         "oPaginate": {
    //             "sPrevious": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" \
    //         fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" \
    //         class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5">\
    //         </polyline></svg>',
    //             "sNext": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" \
    //         viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" \
    //         stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line>\
    //         <polyline points="12 5 19 12 12 19"></polyline></svg>'
    //         },
    //         "sInfo": "Showing page PAGE of _PAGES_",
    //         "sSearch": '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
    //         "sSearchPlaceholder": "Search...",
    //         "sLengthMenu": "Results :  _MENU_",
    //     },
    //     stripeClasses: [],
    //     order: [0, "desc"],
    //     processing: true,
    //     serverSide: true,
    //     searching: false,
    //     paging: false,
    //     info: false,
    //     "ajax": "{{route('get_weeklyOffDetail')}}",
    //     "columns":[
    //         {data: "FYWODDayId"},
    //         {data: "FYWODDesc1"},
    //         {data: "FYWODAll"},
    //         {data: "FYWODFirst"},
    //         {data: "FYWODSecond"},
    //         {data: "FYWODThird"},
    //         {data: "FYWODFourth"},
    //         {data: "FYWODFifth"},
    //         {data: "FYWODMarkForDeletion"},
    //         {data: "action", orderable:false, searchable: false},
    //         {data: "FYWODUser", "visible": false},
    //         {data: "id", "visible": false},
    //     ],
    //     columnDefs: [
    //         {
    //             // Setting width of each column
    //             width: "5%", "targets": 0,
    //             width: "10%", "targets": 1,

    //             },
    //             {
    //                 targets: 2,
    //                 width: "10%",
    //                 data: "FYWODAll",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 3,
    //                 width: "10%",
    //                 data: "FYWODFirst",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 4,
    //                 width: "10%",
    //                 data: "FYWODSecond",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 5,
    //                 width: "10%",
    //                 data: "FYWODThird",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 6,
    //                 width: "10%",
    //                 data: "FYWODFourth",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 7,
    //                 width: "10%",
    //                 data: "FYWODFifth",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //                 targets: 7,
    //                 width: "10%",
    //                 data: "FYWODFifth",
    //                 render: function (data ,td, cellData, rowData, row, col) {

    //                     if(data==1){
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }else{
    //                         return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                         <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                         <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                     }
    //                 }
    //             },
    //             {
    //             targets: 8,
    //             data: "FYWODMarkForDeletion",
    //             // searchable: false,
    //             // orderable: false,
    //             render: function (data ,td, cellData, rowData, row, col) {

    //                 if(data==1){
    //                     return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                     <input type="checkbox" class="new-control-input chk-parent select-customers-info" checked>\
    //                     <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                 }else{
    //                     return '<label class="columnDefs new-control new-checkbox checkbox-primary">\
    //                     <input type="checkbox" class="new-control-input chk-parent select-customers-info">\
    //                     <span class="new-control-indicator"></span><span style="visibility:hidden">c</span></label>';
    //                 }
    //             }
    //         }
    //     ],
    // });
    $(document).on('click', '.columnDefs', function() {
        return false;
    });

    // $("#FYWOHCalendarId").on("click", function () {
    //     alert('test111');
    //     $('#SubForm3SIS').DataTable().ajax.reload();
    // })

     $("#AddForm").submit(function(e) {
        e.preventDefault();

       // console.log($("#AddForm").serialize());return false;
        $.ajax({
            url: "{{ url('weeklyOff_save') }}",
            method: 'post',
            data: new FormData(this),
            processData: false,
            dataType: "json",
            contentType: false,
            success: function(response) {
                console.log(response);
                alert('success');
            }
        })
    });
</script>
@endsection
