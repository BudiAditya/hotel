<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','Front\FrontController@index');
Route::get('/checkin','Front\FrontController@index');
Route::get('/booking','Front\BookingController@index')->name('booking');
Route::get('/booking/thanks','Front\BookingController@thanks')->name('booking.thanks');
Route::get('/booking-room','Front\BookingController@bookingroom')->name('booking.room');
Route::post('/booking-room','Front\BookingController@bookingpost')->name('booking.post');
Route::get('/rooms','Front\RoomController@index');
Route::get('/rooms/{slug}','Front\RoomController@slug');
Route::get('/services','Front\ServicesController@index');
Route::get('/about','Front\AboutController@index');
Route::get('/blog','Front\BlogController@index')->name('blog.index');
Route::get('/blog-search','Front\BlogController@search')->name('blog.search');
Route::get('/blog/{slug}','Front\BlogController@slug');
Route::get('/contact','Front\ContactController@index');
Route::get('/contact/post','Front\ContactController@post')->name('contact.post');
Route::post('/subscribe','Front\SubscribeController@post')->name('subscribe.post');

//API
Route::get('/api/fasilitas','Admin\FasilitasController@getJson');
Route::get('/api/services','Admin\ServicesController@getJson');
Route::get('/api/room','Admin\RoomController@getJson');

//Admin Delete
Route::post('/admin/room_facilities/delete/{id}','Admin\RoomFacilitiesController@deleteEdit');
Route::post('/admin/booking_services/delete/{id}','Admin\BookingServicesController@deleteEdit');
