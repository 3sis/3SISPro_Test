<?php
use App\Models\t92;
use App\Models\theme_setting;

function menu(){
	return $menu = t92::tree();
}

function parent_menu_id($route){
	$data = t92::where('MNRoute', $route)->first();
	return $data ? $data['MNParentCode'] : '';
	
}

function breadcrumb($route){
	$data = t92::where('MNRoute', $route)->first();
	return $data ? $data['MNMenuTitle'] : 'Home';
	
}

function theme($type){
	$theme = json_decode(Auth::user()->theme);
    $theme = theme_setting::where('id', $theme->$type)->first();
    return $theme['theme'];
}
?>