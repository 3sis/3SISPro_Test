<?php
namespace app\Traits\CommonMasters\GeneralMaster;
use DataTables;
trait CommonDataTables {
	
	public function TableActionTrait($data){
		return DataTables::of($data)
            ->addColumn('action', function ($record) {
                return
                '<a href="javascript:void(0);" class="btn mr-1 btnEditRec3SIS bs-tooltip edit" id="' . $record->id . '">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                class="feather feather-edit-2 p-1 br-6 mb-1" style="color: black;">
                <path d="M17 3a2.828 2.828 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5L17 3z"></path></svg></a>

                <a href="javascript:void(0);" class="btn mr-1 btnDeleteRec3SIS bs-tooltip delete" id="' . $record->id . '">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none"
                stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"
                class="feather feather-trash p-1 br-6 mb-1" style="color: red;">
                <polyline points="3 6 5 6 21 6"></polyline>
                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg></a>';
            })
            ->rawColumns(['action'])
            ->make(true);
	}
    public function TableActionRestoreTrait($data){
        return DataTables::of($data)
            ->addColumn('action', function ($record) {
                return '<a href="#" class="btn mr-1 btnEditRec3SIS restore" id="' . $record->id . '">Restore
                        <i class="fas fa-trash-restore"></i>
                    </a>';
            })
            ->make(true);
    }
}
