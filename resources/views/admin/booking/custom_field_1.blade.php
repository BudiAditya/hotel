@if(Request::segment(3) == 'add')
<div class="col-md-12">
	<button type="button" onclick="tambah()" class="btn btn-success">Tambah</button>
	<button type="button" onclick="hapus()" class="btn btn-danger">Hapus</button>
</div> 
<div class="col-md-12" id="tambah"></div>
@else
	<?php 
	$id = Request::segment(4); 
	$bookings = 
	\DB::table('booking_services')
	->select('booking_services.*','booking_services.id as sid','services.name as name','services.price as price')
	->join('services','services.id','booking_services.id_services')
	->where('id_booking',$id)
	->get();
	?>
	<div class="row">
	@foreach($bookings as $i => $booking)
		<div class="col-md-10">
			<select class="form-control class_option" id="select_{{$booking->sid}}">
				<option value="{{$booking->id_services}}" data-price="{{$booking->price}}">{{$booking->name.' - Rp.'.$booking->price}}</option>
			</select>
		</div>
		<div class="col-md-2">
			<button type="button" class="btn btn-danger btn-sm" onclick="hapusEdit({{$booking->sid}})" id="btn-{{$booking->sid}}"> <i class="fa fa-ban"></i> Delete</button>	
		</div>
	@endforeach
	</div>
	<div class="col-md-12" style="margin-top: 20px;">
		<button type="button" onclick="tambah()" class="btn btn-success"> Tambah</button>
		<button type="button" onclick="hapus()" class="btn btn-danger"> Hapus</button>
	</div> 
	<div class="col-md-12" id="tambah"></div>
@endif