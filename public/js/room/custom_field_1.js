var data = $.getJSON(site_url+"/api/fasilitas", function() {
  console.log( "success" );
})
.done(function() {
  fasilitas = data.responseJSON
})
.fail(function() {
  console.log( "error" );
})

$index = 0;
function tambah() {
    $("#tambah").append($("<select class='form-control' name='fasilitas[]' id='select_"+$index+"'>"))
	for (var i = 0; i < fasilitas.length; i++) {
		$("#select_"+$index+"").append($("<option value='"+fasilitas[i].id+"'>"+fasilitas[i].name+"</option>"))
	}
	$index++;
}

function hapus() {
  	$index--;
  	$("#select_"+$index).remove();
}

function hapusEdit(id){
  var ask = confirm("Are you sure?");
  if (ask == true) {
    $("#select_"+id).remove();
    $("#btn-"+id).remove();
    $.ajax({
      url: site_url+"/admin/room_facilities/delete/"+id,
      method: 'post',
      headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      },
      data: {
         id:id
      },
      success: function(response){
         console.log(response);
      }
    });
  }
}
