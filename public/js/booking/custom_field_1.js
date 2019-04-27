$(document).ready(function(){
  var url = $(location).attr('href');
  var segments = url.split( '/' );
  var url_segment = segments[5];
  if (url_segment.substr(0,3)=='add') {
    $("#services_price").val("0")
    $("#subtotal").val("0")  
  }
})


$("#check_in").change(function(){
  tci = $(this).val()
  var co = moment(tco);
  var ci = moment(tci);
  $("#qty").val(co.diff(ci, 'days'))
})

$("#check_out").change(function(){
  tco = $(this).val()
  var co = moment(tco);
  var ci = moment(tci);
  $("#qty").val(co.diff(ci, 'days'))
})

$("#id_room").change(function(){
  id = $(this).val();
  $.ajax({
    url: site_url+"/api/room?id="+id,
    method: 'get',
    success: function(response){
      console.log(response[0].price);
      qty = $("#qty").val();
      $("#subtotal").val(response[0].price * qty);
    }
  });
})


var data = $.getJSON(site_url+"/api/services", function() {
  console.log( "success" );
})
.done(function() {
  services = data.responseJSON
})
.fail(function() {
  console.log( "error" );
})

setInterval(function(){
  subtotal = $("#subtotal").val()
  sp = $("#services_price").val()
  $("#grand_total").val(parseInt(subtotal)+parseInt(sp))
},1000);

$index = 0;
function tambah() {
  $("#tambah").append($("<select class='form-control class_option' name='services[]' id='select_"+$index+"'>"))
  $("#select_"+$index+"").append($("<option>Pilih Services</option>"))
  for (var i = 0; i < services.length; i++) {
		$("#select_"+$index+"").append($("<option value='"+services[i].id+"' data-price='"+services[i].price+"'>"+services[i].name+" - Rp."+services[i].price+"</option>"))
	}
	$index++;

  $(document).on('change', '.class_option', function() {
    var total = 0;
    $('.class_option').each(function() {
      total += parseInt($(this).find('option:selected').attr('data-price')) || 0;
      })
    $("#services_price").val(total);
  })
}

function hapus() {
  	$index--;
  	$("#select_"+$index).remove();
}

function hapusEdit(id){
  var ask = confirm("Are you sure?");
  if (ask == true) {

    var delete_price = $('#select_'+id).find('option:selected').attr('data-price')
    $("#services_price").val( parseInt($("#services_price").val()) - parseInt(delete_price))

    $("#select_"+id).remove();
    $("#btn-"+id).remove();

    $.ajax({
      url: site_url+"/admin/booking_services/delete/"+id,
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