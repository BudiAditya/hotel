<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
    
  @include('front.partials.navbar')
  
  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('brighthotel/images/bg_2.jpg')}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Services</span>
              <h2 class="heading">Facilities &amp; Services</h2>
        </div>
      </div>
    </div>
  </div>


  <div class="container">

  	<div class="row site-section">
  		<div class="col-lg-7 mb-5">
  			<img src="{{asset('brighthotel/images/img_7.jpg')}}" alt="Image placeholder" class="img-fluid img-shadow">
  		</div>
  		<div class="col-lg-5 pl-md-5">
  			<?php $services = \DB::table('services')->orderBy('created_at','desc')->get();?>
  			@foreach($services as $service)
        <div class="media block-6">
          <div class="icon"><span class="ion-ios-checkmark"></span></div>
          <div class="media-body">
            <h3 class="heading">{{$service->name}}</h3>
            <p>{{$service->description}}.</p>
          </div>
	      </div>
        @endforeach     
  		</div>
  	</div>

  </div>
  
  <div class="container">
    @include('front.partials.service_section')
  </div>
    
  <!-- <div class="site-section">
  	<div class="container">
    	<div class="row">
    		<div class="col-md-6 col-lg-4 mb-5">
    			<img src="images/img_4.jpg" alt="Image placeholder" class="img-fluid img-shadow mb-4">
    			<h4>Even the all-powerful Pointing</h4>
    			<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
    		</div>
    		<div class="col-md-6 col-lg-4 mb-5">
    			<img src="images/img_2.jpg" alt="Image placeholder" class="img-fluid img-shadow mb-4">
    			<h4>Blind texts it is an almost</h4>
    			<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
    		</div>
    		<div class="col-md-6 col-lg-4 mb-5">
    			<img src="images/img_7.jpg" alt="Image placeholder" class="img-fluid img-shadow mb-4">
    			<h4>Pointing has no control about</h4>
    			<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic.</p>
    		</div>
    	</div>`
  	</div>
  </div> -->
    

  @include('front.partials.testimonial')
  
  @include('front.partials.footer')

  @include('front.partials.script')
    
  </body>
</html>