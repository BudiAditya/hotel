<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Room;

class RoomController extends Controller
{
    public function index()
    {
    	return view('front.rooms.index');
    }

    public function slug($slug)
    {
    	$room = Room::where('slug',$slug)->first();
    	$data['room'] = $room;
    	return view('front.rooms.slug',$data);
    }
}
