 <!--  BEGIN SIDEBAR  -->
        <div class="sidebar-wrapper sidebar-theme">
            <nav id="sidebar">
                <div class="navbar-nav theme-brand flex-row  text-center">
                    <div class="nav-logo">
                        <div class="nav-item theme-logo">
                            <a href="{{url('home')}}">
                                <img src="{{asset('assets/img/logo2.svg')}}" class="navbar-logo" alt="logo">
                            </a>
                        </div>
                        <div class="nav-item theme-text">
                            <a href="{{url('home')}}" class="nav-link"> CORK </a>
                        </div>
                    </div>
                    <div class="nav-item sidebar-toggle">
                        <div class="btn-toggle sidebarCollapse">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevrons-left"><polyline points="11 17 6 12 11 7"></polyline><polyline points="18 17 13 12 18 7"></polyline></svg>
                        </div>
                    </div>
                </div>
                <div class="shadow-bottom"></div>
                <ul class="list-unstyled menu-categories" id="accordionExample">
                    @foreach(menu() as $data)
                    <li class="menu {{ parent_menu_id(Request::path()) == $data->MNChildCode ? 'active' : 'active' }}">

                    @if(parent_menu_id(Request::path()) == $data->MNChildCode)    
                    <a href="#dashboard{{$data->id}}" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle collapsed">
                    @else
                    <a href="#dashboard{{$data->id}}" data-bs-toggle="collapse" aria-expanded="true" class="dropdown-toggle">
                    @endif       
                     <div class="">
                        @if($data->id == 1)
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                        @else<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-cpu"><rect x="4" y="4" width="16" height="16" rx="2" ry="2"></rect><rect x="9" y="9" width="6" height="6"></rect><line x1="9" y1="1" x2="9" y2="4"></line><line x1="15" y1="1" x2="15" y2="4"></line><line x1="9" y1="20" x2="9" y2="23"></line><line x1="15" y1="20" x2="15" y2="23"></line><line x1="20" y1="9" x2="23" y2="9"></line><line x1="20" y1="14" x2="23" y2="14"></line><line x1="1" y1="9" x2="4" y2="9"></line><line x1="1" y1="14" x2="4" y2="14"></line></svg>
                        @endif
                        <span>{{$data->MNMenuTitle}}</span>
                            </div>
                            <div>
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                            </div>
                        </a>
                        @if(parent_menu_id(Request::path()) == $data->MNChildCode)    
                        <ul class="collapse submenu list-unstyled show" id="dashboard{{$data->id}}" data-bs-parent="#accordionExample">
                        @else
                       <ul class="collapse submenu list-unstyled" id="dashboard{{$data->id}}" data-bs-parent="#accordionExample" style="">
                       @endif    
                             <x-menu :children="$data->children" :id="1"/>
                        </ul>
                    </li>
                    @endforeach
                </ul>
            </nav>
        </div>
        <!--  END SIDEBAR  -->