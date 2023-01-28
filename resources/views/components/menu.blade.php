@foreach($children as $child)
@if($child->children->isNotEmpty())
  <li class="{{ Request::path() == $child->MNRoute ? 'active' : '' }}">
        <a href="#invoice{{$id}}" data-bs-toggle="collapse" aria-expanded="false" class="dropdown-toggle collapsed">{{$child->MNMenuTitle}}<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg> </a>
        <ul class="collapse list-unstyled sub-submenu" id="invoice{{$id}}" data-bs-parent="#apps"> 
            @php $id++;@endphp
            <x-menu :children="$child->children" :id="$id"/>
        </ul>
</li>
@else
   <li class="{{ Request::path() == $child->MNRoute ? 'active' : '' }}"> <a href="{{ url($child->MNRoute) }}">{{$child->MNMenuTitle}}</a></li>
@endif
@endforeach  