<?php 
$setting = \DB::table('cms_settings')->get();
?>
<footer class="footer">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md-6 col-lg-4">
        <h3 class="heading-section">About Us</h3>
        <p class="mb-5">{!!$setting[16]->content!!}</p>
        <p><a href="#" class="btn btn-primary px-4">Contact</a></p>
      </div>
      <div class="col-md-6 col-lg-4">
        <h3 class="heading-section">Blog</h3>
        <?php $posts = \DB::table('post')->orderBy('created_at','desc')->paginate(4); ?>
        @foreach($posts as $post)
        <div class="block-21 d-flex mb-4">
          <figure class="mr-3">
            <img src="{{asset($post->feature_image)}}" alt="" class="img-fluid">
          </figure>
          <div class="text">
            <h3 class="heading"><a href="{{url('blog/'.$post->slug)}}">{{$post->title}}</a></h3>
            <div class="meta">
              <div><a href="#"><span class="icon-calendar"></span> {{date("M d, Y",strtotime($post->created_at))}}</a></div>
              <div><a href="#"><span class="icon-person"></span> {{$post->posted_by}}</a></div>
            </div>
          </div>
        </div>
        @endforeach
      </div>
      <div class="col-md-6 col-lg-4">
        <div class="block-23">
          <h3 class="heading-section">Contact Info</h3>
            <ul>
              <li><span class="icon icon-map-marker"></span><span class="text">{!!$setting[19]->content!!}</span></li>
              <li><a href="#"><span class="icon icon-phone"></span><span class="text">{!!$setting[17]->content!!}</span></a></li>
              <li><a href="#"><span class="icon icon-envelope"></span><span class="text">{!!$setting[18]->content!!}</span></a></li>
              <!-- <li><span class="icon icon-clock-o"></span><span class="text">Monday &mdash; Friday 8:00am - 5:00pm</span></li> -->
            </ul>
          </div>
      </div>
      
      
    </div>
    <div class="row pt-5">
      <div class="col-md-12 text-left">
        <p>
          {!!$setting[25]->content!!}
        </p>
      </div>
    </div>
  </div>
</footer>