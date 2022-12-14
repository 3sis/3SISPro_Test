@extends('layouts.app')
@section('content')
@section('css')
    <!-- sweetalert2 -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link rel="stylesheet" href="https://designreset.com/cork/html/src/plugins/src/sweetalerts2/sweetalerts2.css">
    <link href="https://designreset.com/cork/html/src/plugins/css/light/sweetalerts2/custom-sweetalert.css" rel="stylesheet"
        type="text/css" />
    <link href="https://designreset.com/cork/html/src/plugins/css/dark/sweetalerts2/custom-sweetalert.css" rel="stylesheet"
        type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- sweetalert2 -->
    <!-- BEGIN PAGE LEVEL CUSTOM STYLES -->
    <link rel="stylesheet" type="text/css"
        href="https://designreset.com/cork/html/src/plugins/src/table/datatable/datatables.css">
    <link rel="stylesheet" type="text/css"
        href="https://designreset.com/cork/html/src/plugins/css/light/table/datatable/dt-global_style.css">
    <link rel="stylesheet" type="text/css"
        href="https://designreset.com/cork/html/src/plugins/css/light/table/datatable/custom_dt_custom.css">
    <link rel="stylesheet" type="text/css"
        href="https://designreset.com/cork/html/src/plugins/css/dark/table/datatable/dt-global_style.css">
    <link rel="stylesheet" type="text/css"
        href="https://designreset.com/cork/html/src/plugins/css/dark/table/datatable/custom_dt_custom.css">
    <!-- END PAGE LEVEL CUSTOM STYLES -->


    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css"> --}}
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-5-theme/1.3.0/select2-bootstrap-5-theme.rtl.min.css"> -->


{{-- try new select2 theme --}}

<!-- Styles -->
<!-- Styles -->
{{-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2-bootstrap-5-theme@1.3.0/dist/select2-bootstrap-5-theme.min.css" />
<!-- Or for RTL support -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/select2-bootstrap-5-theme@1.3.0/dist/select2-bootstrap-5-theme.rtl.min.css" />

<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.full.min.js"></script>pt> --}}




    <style type="text/css">
        .select2-dropdown.increasedzindexclass {
            z-index: 999999 !important;
        }

        .msg_error>p {
            color: #F5821F !important;
        }
    </style>
@endsection
<div class="row layout-top-spacing">
    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 layout-spacing">
        <div class=" br-6" style="padding-top: 5px;">
            <div style='float:right; padding-right:30px'>
                <button type='button' name='Undo' id='Undelete_Data' class='btnUnDeleteRec3SIS' title="Restore">
                    <i class="fa fa-undo  m-1" style="font-size:20px"></i>
                </button>
                <button type='button' name='add' id='add_Data' class='btnAddRec3SIS' title="Add State">
                    <i class="fa fa-plus-square m-1" style="font-size:20px"></i>
                </button>
                <!--   <button class="btn btn-success  mb-2 me-4">
               <i class="fa fa-undo  m-1" style="font-size:20px"></i>
               <span class="btn-text-inner">Undo</span>
               </button>

               <button class="btn btn-primary  mb-2 me-4">
               <i class="fa fa-plus-square m-1" style="font-size:20px"></i>
               <span class="btn-text-inner">Add</span>
               </button> -->
            </div>
            <div class="table-responsive">
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
            <!-- Model Form -->
            <div id="entryModalSmall" class="modal fade UpdateModalBox3SIS" data-backdrop="static"
                data-keyboard="false" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered 3SISPro-modal-dialog" role="document"
                    style="max-width:1000px!important;">
                    <div class='modal-content {{ $theme_ContentModal1D_3SIS }}'>
                        <div class="modal-header" id="registerModalLabel">
                            <h5 class="modal-title text-light" id="exampleModalCenterTitle">Master</h5>
                            <button type="button" data-bs-dismiss="modal" aria-label="Close">
                                <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24"
                                    height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                    stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                    class="feather feather-x">
                                    <line x1="18" y1="6" x2="6" y2="18"></line>
                                    <line x1="6" y1="6" x2="18" y2="18"></line>
                                </svg>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div id="toggleAccordion" class="accordion">
                                <div class="card {{ $theme_Card1D_3SIS }}">
                                    <div class="card-header" style="background: black" id="headingThree1">
                                        <section class="mb-0 mt-0">
                                            <div role="menu" class="collapsed" data-bs-toggle="collapse"
                                                data-bs-target="#defaultAccordionOne" aria-expanded="true"
                                                aria-controls="defaultAccordionOne">
                                                State Master
                                            </div>
                                        </section>
                                    </div>
                                    <div id="defaultAccordionOne" class="collapse show" aria-labelledby="..."
                                        data-bs-parent="#toggleAccordion">
                                        <div class="card-body">
                                            <form id='singleLevelDataEntryForm' autocomplete="off" method="post"
                                                action="{{ url('/state/save') }}">
                                                @csrf
                                                <input type="hidden" name="id" id="id">
                                                <div class="row mb-4">
                                                    <div class="col-md-4">
                                                        <div class='form-group'>
                                                            <label class="form-label">State Id <b
                                                                    class="text-danger">*</b></label>
                                                            <input type="text" name='GMSMHStateId'
                                                                id='GMSMHStateId' class='form-control few-options'
                                                                maxlength="10" placeholder="Enter State Name"
                                                                style='opacity:1'>
                                                            {{-- <span class="error-text GMSMHStateId_error text-danger"
                                                                    style='float:right;'></span> --}}
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class='form-group'>
                                                            <label class="form-label">Description 1 <b
                                                                class="text-danger">*</b></label>
                                                            <input type="text" name='GMSMHDesc1' id='GMSMHDesc1' class='form-control few-options' placeholder="Enter State Description 1"
                                                                style='border-color: rgb(102, 175, 233); outline: 0px'>
                                                                {{-- <span class="error-text GMSMHDesc1_error text-danger"
                                                                style='float:right;'></span> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mt-0">
                                                    <div class="col-md-12">
                                                        <div class='form-group'>
                                                            <label class="form-label">Description 2</label>
                                                            <textarea name='GMSMHDesc2' id='GMSMHDesc2' class='form-control few-options' placeholder="Enter State Description 2"
                                                                style='border-color: rgb(102, 175, 233); outline: 0px'></textarea>
                                                                {{-- <span class="error-text GGMSMHDesc2_error text-danger"
                                                                style='float:right;'></span> --}}
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row mt-0">
                                                    <div class="col-md-4">
                                                        <div class='form-group'>
                                                            <label class="form-label">Country <b
                                                                class="text-danger">*</b></label>
                                                            {{-- <span class="error-text GMSMHCountryId_error text-danger"
                                                                style='float:right;'></span> --}}

                                                            <select id='GMSMHCountryId' name='GMSMHCountryId'
                                                                class="form-select" style='width: 100%;' >
                                                                <option value=''>Select Country
                                                                </option>
                                                                @foreach ($countries as $country)
                                                                    <option value='{{ $country->GMCMHCountryId }}'>
                                                                        {{ $country->GMCMHDesc1 }}
                                                                    </option>
                                                                @endforeach
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            {{-- <span id='form_output' style='float:left; padding-left:0px'></span> --}}
                            {{-- <span id='form_output' class="mr-auto" ></span> --}}
                            <span id='form_output' class="mr-auto" style='float:right; padding-right:750px'></span>
                            {{-- <span id='form_output' class="mr-auto" style="outline:0"></span> --}}
                            <input type="hidden" name='button_action' id='button_action' value='insert'>
                            <fieldset class="w-100 msg_show">
                            </fieldset>
                            <a href="javascript:void(0)" class="btn btn-danger float-right btn_error">Errors</a>
                            <button type="submit" class="btn btn-secondary float-right btn_action">Add</button>
                        </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- END Model Form -->
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
            @include('commonViews3SIS.modalCommon3SIS')
        </div>
    </div>
</div>
@endsection
@section('js_code')
<script src={{ asset('assets/common/js/StateMasterAjax.js') }}></script>
<!-- sweetalert2 -->
<script src="https://designreset.com/cork/html/src/plugins/src/sweetalerts2/sweetalerts2.min.js"></script>
<script src="https://designreset.com/cork/html/src/plugins/src/sweetalerts2/custom-sweetalert.js"></script>
<!-- sweetalert2 -->
<script src="https://designreset.com/cork/html/src/assets/js/custom.js"></script>
<script src="https://designreset.com/cork/html/src/plugins/src/table/datatable/datatables.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/i18n/he.min.js"></script>
@endsection
