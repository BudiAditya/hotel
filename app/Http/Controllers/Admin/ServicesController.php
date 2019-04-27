<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Services;

class ServicesController extends Controller
{
    public function getJson()
    {
    	$json = Services::get();
    	return $json;
    }
}
