<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
  
  @include('front.partials.navbar')
  
  <?php $about = \DB::table('about')->first();?>
  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('brighthotel/images/bg_2.jpg')}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">About</span>
          <h2 class="heading">{{$about->title}}</h2>
        </div>
      </div>
    </div>
  </div>

  <div class="site-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12">
          <img src="{{asset($about->feature_image)}}" alt="Image placeholder" class="img-fluid">
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mb-3">
          <h2>{{$about->subtitle}}</h2>
        </div>
        <div class="col-md-12">
          {!!$about->description!!}
        </div>
      </div>
    </div>
  </div>

  <!-- The Team -->
  <!-- <div class="site-section">
    <div class="container">
      <div class="row mb-5 text-center">
        <div class="col-md-12 mb-5">
          <h2>The Team</h2>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="block-38 text-center">
            <div class="block-38-img">
              <div class="block-38-header">
                <img src="images/person_1.jpg" alt="Image placeholder">
                <h3 class="block-38-heading">Elizabeth Graham</h3>
                <p class="block-38-subheading">CEO</p>
              </div>
              <div class="block-38-body">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="block-38 text-center">
            <div class="block-38-img">
              <div class="block-38-header">
                <img src="images/person_2.jpg" alt="Image placeholder">
                <h3 class="block-38-heading">Jennifer Greive</h3>
                <p class="block-38-subheading">President</p>
              </div>
              <div class="block-38-body">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="block-38 text-center">
            <div class="block-38-img">
              <div class="block-38-header">
                <img src="images/person_3.jpg" alt="Image placeholder">
                <h3 class="block-38-heading">Patrick Marx</h3>
                <p class="block-38-subheading">Marketer</p>
              </div>
              <div class="block-38-body">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="block-38 text-center">
            <div class="block-38-img">
              <div class="block-38-header">
                <img src="images/person_2.jpg" alt="Image placeholder">
                <h3 class="block-38-heading">Mike Coolbert</h3>
                <p class="block-38-subheading">Partner</p>
              </div>
              <div class="block-38-body">
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Vitae aut minima nihil sit distinctio recusandae doloribus ut fugit officia voluptate soluta. </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> -->
    

  <div class="block-31 mb-5" style="position: relative;">
        <div class="owl-carousel loop-block-31">
          <div class="block-30 no-overlay item" style="background-image: url('{{asset($about->slide_1)}}');"></div>
          <div class="block-30 no-overlay item" style="background-image: url('{{asset($about->slide_2)}}');"></div>
          <div class="block-30 no-overlay item" style="background-image: url('{{asset($about->slide_3)}}');"></div>
        </div>
  </div>

<?php 
$services = \DB::table('front_services')->orderBy('created_at','desc')->get();
?>
<div class="container">
  <div class="row site-section">
    @foreach($services as $service)
    <div class="col-md-6 col-lg-4">
      <div class="media block-6">
        <div class="icon">{!!$service->icon!!}</div>
        <div class="media-body">
          <h3 class="heading">{{$service->title}}</h3>
          <p>{{$service->description}}</p>
        </div>
      </div>      
    </div>
    @endforeach
  </div>
</div>

  @include('front.partials.testimonial')
  
  @include('front.partials.footer')
  @include('front.partials.script')
    
  </body>
</html>