<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\RoomFacilities;

class RoomFacilitiesController extends Controller
{
    public function deleteEdit($id)
    {
    	RoomFacilities::where('id',$id)->delete();
    	$message = 'deleted success';
    	return $message;
    }
}
