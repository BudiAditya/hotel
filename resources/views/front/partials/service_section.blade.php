<?php 
$services = \DB::table('front_services')->orderBy('created_at','desc')->get();
?>
<div class="row site-section">
  <div class="col-md-12">
    <div class="row mb-5">
      <div class="col-md-7 section-heading">
        <span class="subheading-sm">Services</span>
        <h2 class="heading">Facilities &amp; Services</h2>
      </div>
    </div>
  </div>
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