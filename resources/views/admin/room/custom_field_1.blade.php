@if(Request::segment(3) == 'add')
<div class="col-md-12">
	<button type="button" onclick="tambah()" class="btn btn-success">Tambah</button>
	<button type="button" onclick="hapus()" class="btn btn-danger">Hapus</button>
</div> 
<div class="col-md-12" id="tambah"></div>
@else
	<?php 
	$id = Request::segment(4); 
	$room_facilitiess = 
	\DB::table('room_facilities')
	->select('room_facilities.*','room_facilities.id as rid','facilities.id as id_facilities','facilities.name as name')
	->leftjoin('facilities','facilities.id','room_facilities.id_facilities')
	->where('id_room',$id)->get();
	?>
	<div class="row">
	@foreach($room_facilitiess as $i => $room_facilities)
		<div class="col-md-10">
			<select name="facilities[]" class="form-control" id="select_{{$room_facilities->rid}}">
				<option value="{{$room_facilities->id_facilities}}">{{$room_facilities->name}}</option>
			</select>
		</div>
		<div class="col-md-2">
			<button type="button" class="btn btn-danger btn-sm" onclick="hapusEdit({!!$room_facilities->rid!!})" id="btn-{{$room_facilities->rid}}"> <i class="fa fa-ban"></i> Delete</button>	
		</div>
	@endforeach
	</div>
	<div class="col-md-12" style="margin-top: 20px;">
		<button type="button" onclick="tambah()" class="btn btn-success"> Tambah</button>
		<button type="button" onclick="hapus()" class="btn btn-danger"> Hapus</button>
	</div> 
	<div class="col-md-12" id="tambah"></div>
@endif