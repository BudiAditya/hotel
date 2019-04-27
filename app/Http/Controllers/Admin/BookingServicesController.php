<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\BookingService;

class BookingServicesController extends Controller
{
    public function deleteEdit($id)
    {
    	BookingService::where('id',$id)->delete();
    	$message = 'deleted success';
    	return $message;
    }
}
