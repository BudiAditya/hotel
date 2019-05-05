@extends('crudbooster::admin_template')
@section('content')
<div class="row">
	<div class="col-md-3">
		<div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-user"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Users</span>
                <span class="info-box-number">{{$total_user}}</span>
            </div><!-- /.info-box-content -->
        </div>
    </div>
    <div class="col-md-3">
		<div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-home"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Total Room</span>
                <span class="info-box-number">{{$total_room}}</span>
            </div><!-- /.info-box-content -->
        </div>
    </div>
    <div class="col-md-3">
		<div class="info-box">
            <span class="info-box-icon bg-green"><i class="fa fa-thumbs-up"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Total Services</span>
                <span class="info-box-number">{{$total_services}}</span>
            </div><!-- /.info-box-content -->
        </div>
    </div>
    <div class="col-md-3">
		<div class="info-box">
            <span class="info-box-icon bg-yellow"><i class="fa fa-calendar"></i></span>
            <div class="info-box-content">
                <span class="info-box-text">Total Booking</span>
                <span class="info-box-number">{{$total_booking}}</span>
            </div><!-- /.info-box-content -->
        </div>
    </div>
</div>
<div class="row" style="padding: 20px">
	<div class="box">
		<h2 style="margin: 20px">Latest Booking</h2>
		<div class="box-body table-responsive no-padding" style="margin: 20px">
			<table class="table">
				<thead>
					<th>{{ucwords('id')}}</th>
					<th>{{ucwords('booking no')}}</th>
					<th>{{ucwords('room')}}</th>
					<th>{{ucwords('check in')}}</th>
					<th>{{ucwords('check out')}}</th>
					<th>{{ucwords('qty')}}</th>
					<th>{{ucwords('number of guest')}}</th>
					<th>{{ucwords('name')}}</th>
					<th>{{ucwords('email')}}</th>
					<th>{{ucwords('phone no')}}</th>
					<th>{{ucwords('alamat')}}</th>
					<th>{{ucwords('grand total')}}</th>
				</thead>
				<tbody>
					@foreach($bookings as $i => $booking)
					<tr>
						<td>{{$i+1}}</td>
						<td>{{$booking->booking_no}}</td>
						<td>{{$booking->room_title}}</td>
						<td>{{$booking->check_in}}</td>
						<td>{{$booking->check_out}}</td>
						<td>{{$booking->qty}}</td>
						<td>{{$booking->number_of_guest}}</td>
						<td>{{$booking->name}}</td>
						<td>{{$booking->email}}</td>
						<td>{{$booking->phone_no}}</td>
						<td>{{$booking->alamat}}</td>
						<td><b>{{$booking->grand_total}}</b></td>
					</tr>
					@endforeach
				</tbody>
			</table>
		</div>
	</div>
</div>
@endsection