<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Fasilitas;

class FasilitasController extends Controller
{
    public function getJson()
    {
    	$json = Fasilitas::get();
    	return $json;
    }
}
