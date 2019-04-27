<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
  
  @include('front.partials.navbar')
  
  <?php 
    $setting = \DB::table('cms_settings')->get();
  ?>

  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('brighthotel/images/bg_2.jpg')}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Contact</span>
          <h2 class="heading">Get In Touch</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="site-section">
    <div class="container">
      <div class="row block-9">
        <div class="col-md-6 pr-md-5">
          @if($errors->any())
          <p>{{$errors->first()}}</p>
          @endif
          <form action="{{route('contact.post')}}">
            <div class="form-group">
              <input type="text" class="form-control px-3 py-3" name="name" placeholder="Your Name">
            </div>
            <div class="form-group">
              <input type="text" class="form-control px-3 py-3" name="email" placeholder="Your Email">
            </div>
            <div class="form-group">
              <input type="text" class="form-control px-3 py-3" name="subject" placeholder="Subject">
            </div>
            <div class="form-group">
              <textarea name="message" id="" cols="30" rows="7" class="form-control px-3 py-3" placeholder="Message"></textarea>
            </div>
            <div class="form-group">
              <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
            </div>
          </form>
        
        </div>

        <div class="col-md-6">
          {!!$setting[20]->content!!}
        </div>
      </div>
    </div>
  </div>

  @include('front.partials.testimonial')
  @include('front.partials.footer')
  @include('front.partials.script')
    
  </body>
</html>