<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
  
  @include('front.partials.navbar')
  
  <div class="block-30 block-30-sm item" style="background-image: url(' {{asset('brighthotel/images/bg_2.jpg')}} ');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Rooms</span>
              <h2 class="heading">Booking Rooms</h2>
        </div>
      </div>
    </div>
  </div>


  <div class=" site-section bg-light" id="blog">
    <div class="container">
      <form action="" method="post">
        <div class="row">
          <div class="col-md-6">
            <h4>Contact Details</h4>
            <hr>
            <div class="form-group">
              <label for="">Name : </label>
              <input type="text" class="form-control" name="name" required>
            </div>
            <div class="form-group">
              <label for="">Email : </label>
              <input type="email" class="form-control" name="email" required>
            </div>
            <div class="form-group">
              <label for="">Phone No : </label>
              <input type="text" class="form-control" name="phone_no" required>
            </div>
            <div class="form-group">
              <label for="">Alamat : </label>
              <textarea name="alamat" id="" cols="30" rows="3" class="form-control"></textarea>
            </div>
            <div class="form-group">
              <label for="">Province : </label>
              <input type="text" class="form-control" name="province">
            </div>
            <div class="form-group">
              <label for="">City : </label>
              <input type="text" class="form-control" name="city">
            </div>
            

          </div>
          <div class="col-md-6">
            <h4>Booking Details</h4>
            <hr>
            <?php 
              $room = App\Models\Room::where('id',$data["id_room"])->first();
            ?>
            <div class="row">
              <div class="col-md-6">
                <h5>{{$room->title}}</h5>
                <input type="hidden" name="id_room" value="{{$room->id}}">
              </div>
              <div class="col-md-6">
                <h5>Rp {{number_format($room->price,0,'.',',')}}</h5>
                <input type="hidden" name="subtotal" value="{{$room->price}}">
              </div>
            </div>
            Check in : <b>{{$data["checkin_date"]}}</b> <br>
            <input type="hidden" name="checkin_date" value="{{$data['checkin_date']}}">

            Check out : <b>{{$data["checkout_date"]}}</b> <br>
            <input type="hidden" name="checkout_date" value="{{$data['checkout_date']}}">     

            <?php 
            $ci = strtotime($data["checkin_date"]);
            $co = strtotime($data["checkout_date"]);
            $qty        = $co - $ci;
            ?>
            <b>{{floor($qty/(60*60*24))}}</b> Nights - <b>{{$data["adult"]+$data["children"]}}</b> Person <br><br>
            <input type="hidden" name="qty" value="{{floor($qty/(60*60*24))}}">     
            <input type="hidden" name="number_of_guest" value="{{$data['adult']+$data['children']}}">     
            
            <h4>Extra Services</h4>
            <hr>
            @foreach($services as $service)
            <div class="form-check">
              <input class="form-check-input selecting" name="services[]" type="checkbox" value="{{$service->id}}" id="service_{{$service->id}}" data-price="{{$service->price}}">
              <label class="form-check-label">
                {{$service->name}} - Rp. {{number_format($service->price,0,'.',',')}} 
              </label>
            </div>            
            @endforeach
            <br>
            <div class="row">
              <div class="col-md-6">
                <h5>Room</h5>
              </div>
              <div class="col-md-6">
                <h5>Rp. {{number_format($room->price,0,'.',',')}}</h5>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <h5>Subtotal</h5>
              </div>
              <div class="col-md-6">
                <h5>Rp. <span class="subtotal">0</span></h5>
                <input type="hidden" name="services_prices" class="subtotal">
              </div>
            </div>
            <div class="row">
              <div class="col-md-6">
                <h5>Grand Total</h5>
              </div>
              <div class="col-md-6">
                <h5>Rp. <span class="grandtotal">0</span></h5>
                <input type="hidden" name="grandtotal" class="grandtotal">
              </div>
            </div>

            <br>
            <div class="form-group">
              <label for="">Special Request : </label>
              <textarea name="special_request" id="" cols="30" rows="3" class="form-control"></textarea>
            </div>
            {{csrf_field()}}
            <button class="btn btn-primary py-3 px-5" type="submit">Book Room</button>
          </div>
        </div>
      </form>

  </div>
  </div>
  
  @include('front.partials.footer')
  @include('front.partials.script')
  <script>
    $(".grandtotal").text($("[name=subtotal]").val())
    $(".grandtotal").val($("[name=subtotal]").val())
    
    $('.selecting:checkbox').change(function (){
      var subtotal = 0;
      $('.selecting:checkbox:checked').each(function(){ // iterate through each checked element.
        subtotal += isNaN(parseInt($(this).attr("data-price"))) ? 0 : parseInt($(this).attr("data-price"));
      });     
      $(".subtotal").text(subtotal)
      $(".subtotal").val(subtotal)
      $(".grandtotal").text( parseInt($("[name=subtotal]").val()) + parseInt(subtotal) )
      $(".grandtotal").val( parseInt($("[name=subtotal]").val()) + parseInt(subtotal) )
    });

  </script>
    
  </body>
</html>