@extends('layouts.app')
@section('content')
@section('css')
<!-- sweetalert2 -->

 <script src="https://designreset.com/cork/ltr/demo3/plugins/sweetalerts/promise-polyfill.js"></script>
<link href="https://designreset.com/cork/ltr/demo3/plugins/sweetalerts/sweetalert2.min.css" rel="stylesheet" type="text/css" />
<link href="https://designreset.com/cork/ltr/demo3/plugins/sweetalerts/sweetalert.css" rel="stylesheet" type="text/css" />
<link href="https://designreset.com/cork/ltr/demo3/assets/css/components/custom-sweetalert.css" rel="stylesheet" type="text/css" />
<!-- sweetalert2 -->

<style type="text/css">
    .select2-dropdown.increasedzindexclass {
  z-index: 999999 !important;
}
.msg_error > p{
    color: #f00 !important;
}
</style>
@endsection
<div class="layout-px-spacing">
    <div>
        <div class="col-xl-12 col-lg-12 col-sm-12  layout-spacing">
            <div class=" br-6" style="padding-top: 5px;">
                <div style='float:right; padding-right:30px'>
                    <button type='button' name='Undo' id='Undelete_Data' class='btn btnUnDeleteRec3SIS'>
                        <i class="fa fa-undo  m-1" style="font-size:20px"></i>
                    </button>
                    <button type='button' name='add' id='add_Data' class='btn btnAddRec3SIS'>
                        <i class="fa fa-plus-square m-1" style="font-size:20px"></i>
                    </button>
                </div>
                <div class="table-responsive" style="padding-top: 5px;">
                    <table id="landingPageBrowser3SIS" class="{{ $theme_Browser1_3SIS }}" style="width:100%">
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
                <div id='UndoModal' class='modal fade  register-modal' role='dialog'
                    aria-labelledby="registerModalLabel" aria-hidden="true" style='margin-top:40px'
                    data-backdrop="static">
                    <div class='modal-dialog modal-dialog-centered modal-lg'role="document">
                        <div class='modal-content {{ $theme_ContentModal2D_3SIS }}'>
                            <div class="modal-header" id="registerModalLabel">
                                <h4 class="modal-title" style="color:white"></h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24"
                                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                        class="feather feather-x text-danger">
                                        <line x1="18" y1="6" x2="6" y2="18">
                                        </line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg></button>
                            </div>
                            <div class='modal-body'>
                                <div class="container-fluid">
                                    <div class="table-responsive">
                                        <table id="UndoModalTable"
                                            class="{{ $theme_Browser2_3SIS }}" style="width:100%">
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
              <!--   <div id='dataTableModalSmall' class='modal fade  register-modal' role='dialog'
                    aria-labelledby="registerModalLabel" aria-hidden="true" style='margin-top:40px'
                    data-backdrop="static">
                    <div class='modal-dialog modal-dialog-centered modal-lg'role="document">
                        <div class='modal-content'>
                            <div class="modal-header" id="registerModalLabel">
                                <h4 class="modal-title"></h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24"
                                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                        class="feather feather-x text-danger">
                                        <line x1="18" y1="6" x2="6" y2="18">
                                        </line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg></button>
                            </div>
                            <div class='modal-body'>
                                <div class="container-fluid">
                                    <div class="table-responsive">
                                        <table id="html-extension3SIS" class="table table-hover non-hover"
                                            style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th title="Company Master">ID</th>
                                                    <th>Company Name</th>
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
                </div> -->

                <!-- end undelete modal -->



                <div id="entryModalSmall" class="modal fade UpdateModalBox3SIS" data-backdrop="static"
                    data-keyboard="false" role="dialog" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered 3SISPro-modal-dialog modal-xl" role="document">
                        <div class='modal-content {{ $theme_ContentModal1D_3SIS }}'>
                            <div class="modal-header" id="registerModalLabel">
                                <h4 class="modal-title text-light">Master</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24"
                                        height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                        stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                                        class="feather feather-x text-danger">
                                        <line x1="18" y1="6" x2="6" y2="18">
                                        </line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg></button>
                            </div>
                            <!--CopyChange-->
                            <form id='singleLevelDataEntryForm' autocomplete="off" method="post" action="{{url('/state/save')}}">
                                @csrf
                                <input type="hidden" name="id" id="id">
                                <div class="modal-body">
                                    <div id="toggleAccordion">
                                        <div class="card {{ $theme_Card1D_3SIS }}">
                                            <div class="card-header" style="background: black" id="headingOne1">
                                                <section class="mb-0 mt-0">
                                                    <div role="menu" class="" data-toggle="collapse"
                                                        data-target="#defaultAccordionOne" aria-expanded="true"
                                                        aria-controls="defaultAccordionOne">
                                                        State Master<div class="icons"><svg
                                                                xmlns="http://www.w3.org/2000/svg" width="24"
                                                                height="24" viewBox="0 0 24 24" fill="none"
                                                                stroke="currentColor" stroke-width="2"
                                                                stroke-linecap="round" stroke-linejoin="round"
                                                                class="feather feather-chevron-down">
                                                                <polyline points="6 9 12 15 18 9"></polyline>
                                                            </svg></div>
                                                    </div>
                                                </section>
                                            </div>
                                            <div id="defaultAccordionOne" class="collapse show"
                                                aria-labelledby="headingOne1" data-parent="#toggleAccordion"
                                                style="">
                                                <div class="card-body">
                                                    <div class="row mt-0">
                                                        <div class="col-md-4">
                                                            <div class='form-group'>
                                                                <label>State Id <b class="text-danger">*</b></label>
                                                                <input type="text" name='GMSMHStateId'
                                                                    id='GMSMHStateId'
                                                                    class='form-control few-options' maxlength="10"
                                                                    placeholder="Enter State Name" style='opacity:1'>
                                                            <span class="text-danger"></span>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class='form-group'>
                                                                <label>Description 1</label>
                                                                <textarea name='GMSMHDesc1' id='GMSMHDesc1' class='form-control few-options' maxlength="200" placeholder="Enter State Description 1" aria-label="With textarea" rows="30" style='border-color: rgb(102, 175, 233); outline: 0px'></textarea>

                                                             <span class="text-danger"></span>
                                                            </div>
                                                        </div>
                                                         <div class="col-md-4">
                                                            <div class='form-group'>
                                                                <label>Description 2</label>
                                                                <textarea name='GMSMHDesc2' id='GMSMHDesc2' class='form-control few-options' maxlength="200" placeholder="Enter State Description 2" aria-label="With textarea"
                                                                    style='border-color: rgb(102, 175, 233); outline: 0px'></textarea>
                                                            <span class="text-danger"></span>
                                                            </div>
                                                        </div>
                                                      
                                                    </div>
                                                    <div class="row mt-0">
                                                        <div class="col-md-4">
                                                            <div class='form-group'>
                                                                <label>Country<b class="text-danger">*</b></label>
                                                                <select id='GMSMHCountryId' name='GMSMHCountryId'
                                                                    style='width: 100%;'>
                                                                    <option value=''>Select Country 
                                                                    </option>
                                                                    @foreach($countries as $country)  
                                                                     <option value='{{$country->GMCMHCountryId}}'>{{$country->GMCMHDesc1}}
                                                                    </option>
                                                                    @endforeach
                                                                </select>
                                                             <!-- <span class="text-danger"></span> -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class='modal-footer'>
                                    <!--To display success messages -->

                                    <input type="hidden" name='button_action' id='button_action' value='insert'>

                                    <!-- <span id='form_output' class="mr-auto"></span> -->

                                   <!--  <input type="submit" name='submit' id='action' value='Add'
                                        class='btn btn-success mb-2'> -->

        <fieldset class="w-100 msg_show">
        </fieldset>

        <a href="javascript:void(0)" class="btn btn-danger float-right btn_error">Errors</a>
        <button type="submit" class="btn btn-secondary float-right btn_action">Add</button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>

                <div class="modal fade show" id="ErrorModal" tabindex="-1" aria-labelledby="exampleModalCenterTitle" aria-modal="true" role="dialog">
                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title1 text-danger" id="exampleModalCenterTitle">Errors</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- <h4 class="modal-heading mb-4 mt-2">State Master</h4> -->
                                                    <div class="w-100 msg_error">
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn" data-dismiss="modal"><i class="flaticon-cancel-12"></i> Close</button>
                                                    <!-- <button type="button" class="btn btn-primary">Save</button> -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                {{-- @include('commonViews3SIS.modalCommon3SIS') --}}
            </div>
        </div>

    </div>

</div>

@endsection
@section('js_code')
<script src={{ asset('assets/CommonJS_3sis/StateMaster/Ajax.js') }}></script>

<!-- sweetalert2 -->
    <script src="https://designreset.com/cork/ltr/demo3/plugins/sweetalerts/sweetalert2.min.js"></script>
    <script src="https://designreset.com/cork/ltr/demo3/plugins/sweetalerts/custom-sweetalert.js"></script>
<!-- sweetalert2 -->
@endsection