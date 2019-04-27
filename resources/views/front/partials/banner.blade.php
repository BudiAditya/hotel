<?php 
$banners = \DB::table('banner')->orderBy('created_at','desc')->get();
?>
<div class="block-31" style="position: relative;">
  <div class="owl-carousel loop-block-31 ">
    @foreach($banners as $banner)
    <div class="block-30 item" style="background-image: url('{{asset($banner->image)}}')" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-md-10">
            <span class="subheading-sm">{{$banner->title}}</span>
            <h2 class="heading">{{$banner->description}}</h2>
            <p><a href="{{$banner->link}}" class="btn py-4 px-5 btn-primary">{{$banner->button_text}}</a></p>
          </div>
        </div>
      </div>
    </div>
    @endforeach
  </div>
</div>