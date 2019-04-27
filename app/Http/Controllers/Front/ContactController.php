<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Contact;

class ContactController extends Controller
{
    public function index()
    {
    	return view('front.contact.index');
    }

    public function post(Request $request)
    {
    	$contact = new Contact;
		$contact->name = $request->name;
		$contact->email = $request->email;
		$contact->subject = $request->subject;
		$contact->message = $request->message;
		$contact->save();

		return redirect()->back()->withErrors('Data Has Been Submitted');
    }
}
