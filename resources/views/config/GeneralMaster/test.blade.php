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