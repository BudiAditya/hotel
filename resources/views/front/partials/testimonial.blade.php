<?php 
$testimonials = \DB::table('testimonial')->orderBy('created_at','desc')->get();
?>
<div class="site-section bg-light">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-7 section-heading">
        <span class="subheading-sm">Reviews</span>
        <h2 class="heading">Guest Reviews</h2>
      </div>
    </div>
    <div class="row">
      @foreach($testimonials as $testimonial)
      <div class="col-md-6 col-lg-4">
        <div class="block-33">
          <div class="vcard d-flex mb-3">
            <!-- <div class="image align-self-center"><img src="images/person_3.jpg" alt="Person here"></div> -->
            <div class="name-text align-self-center">
              <h2 class="heading">{{$testimonial->customer}}</h2>
              <span class="meta">
                @for($i=0;$i<$testimonial->star;$i++)
                  <img src="https://image.flaticon.com/icons/svg/118/118669.svg" width="20px" height="20px" alt="Star free icon" title="Star free icon">
                @endfor
              </span>
            </div>
          </div>
          <div class="text">
            <blockquote>
              <p> {!!$testimonial->testimoni!!} </p>
            </blockquote>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</div>