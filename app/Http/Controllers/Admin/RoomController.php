<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Room;

class RoomController extends Controller
{
    public function getJson(Request $request)
    {
	    $json = Room::where('id',$request->id)->get();
	    return $json;
    }
}
