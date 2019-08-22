<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Room;
use App\Models\Services;
use App\Models\Booking;
use App\Models\BookingService;

class BookingController extends Controller
{
    public function index(Request $request)
    {
    	$rooms = Room::where(function($q) use ($request) {
    		$q->where('start_date', '<=', $request->checkin_date);
    		$q->where('end_date', '>=', $request->checkout_date);
	    	$q->where('max_adult','>=',$request->adult);
	    	$q->where('max_children','>=',$request->children);
    	})->get();
    	$data['rooms'] = $rooms;
    	return view('front.booking.index',$data);
    }

    public function bookingroom(Request $request)
    {
        $data['data'] = $request->all();
        $services = Services::orderBy('created_at','desc')->get();
        $data['services']=$services;
        return view('front.booking.rooms',$data);
    }

    public function bookingpost(Request $request)
    {
        $latest = Booking::latest()->first();
        $booking = new Booking;
        $booking->booking_no = $request->id_room.$request->number_of_guest.date("Ym").$latest->id+1;
        $booking->id_room = $request->id_room;
        $booking->name = $request->name;
        $booking->email = $request->email;
        $booking->phone_no = $request->phone_no;
        $booking->alamat = $request->alamat;
        $booking->qty = $request->qty;
        $booking->province = $request->province;
        $booking->city = $request->city;
        $booking->check_in = $request->checkin_date;
        $booking->check_out = $request->checkout_date;
        $booking->number_of_guest = $request->number_of_guest;
        $booking->subtotal = $request->subtotal;
        $booking->services_price = $request->services_prices;
        $booking->grand_total = $request->grandtotal;
        $booking->special_request = $request->special_request;
        $booking->save();
        
        $latest2 = Booking::latest()->first();
        if(!empty($request->services)){
            foreach ($request->services as $i => $service) {
                $bs = new BookingService;
                $bs->id_booking = $latest2->id;
                $bs->id_services = $request->services[$i];
                $bs->save();
            }
        }

        return redirect(route('booking.thanks'));
    }

    public function thanks(Request $request)
    {
        return view('front.booking.thanks');
    }
}
