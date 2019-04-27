<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
    
  @include('front.partials.navbar')
  <!-- END nav -->
  
  @include('front.partials.banner')

  <div class="container">
    @include('front.partials.form_checkin')
    @include('front.partials.service_section')
  </div>
  
  @include('front.partials.room_section')
  @include('front.partials.restaurant_section')
  @include('front.partials.jumbotron')
  @include('front.partials.testimonial')
   
  @include('front.partials.footer')

  @include('front.partials.script')
  </body>
</html>