<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
    
  @include('front.partials.navbar')

  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('brighthotel/images/bg_2.jpg')}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Booking</span>
          <h2 class="heading">Thanks for Booking</h2>
          <p style="color: white">
          You will receive an <b>e-mail</b> with the <b>details</b> of your <b>booking.</b> <br>
          Thank you for your visit and see you soon!</p>
        </div>
      </div>
    </div>
  </div>
  
  @include('front.partials.footer')

  @include('front.partials.script')
  </body>
</html>