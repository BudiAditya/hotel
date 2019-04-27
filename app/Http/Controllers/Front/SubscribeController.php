<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Subscribe;

class SubscribeController extends Controller
{
    public function post(Request $request)
    {
    	$subscribe = new Subscribe;
    	$subscribe->email = $request->email;
    	$subscribe->save();
    	return redirect()->back()->withErrors('Email Has Been Submitted');
    }
}
