<?php
use App\Models\t92;

function menu(){
	return $menu = t92::tree();
}

function parent_menu_id($route){
	$data = t92::where('MNRoute', $route)->first();
	return $data ? $data['MNParentCode'] : '';
	
}
?>