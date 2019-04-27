<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
  
  @include('front.partials.navbar')
  
  <div class="block-30 block-30-sm item" style="background-image: url(' {{asset('brighthotel/images/bg_2.jpg')}} ');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Blog</span>
              <h2 class="heading">News &amp; Events</h2>
        </div>
      </div>
    </div>
  </div>


  <div class=" site-section bg-light" id="blog">
    
    <div class="container">
      <div class="row">
        @foreach($posts as $post)
        <div class="col-md-12 mb-4">
          <div class="block-3 d-md-flex">
            <a class="image" href="blog-single.html" style="background-image: url('{{asset($post->feature_image)}}'); "></a>
            <div class="text">
              <h2 class="heading"><a href="{{url('blog/'.$post->slug)}}"> {{$post->title}} </a></h2>
              <p class="meta"><em>Posted on</em> <a href="{{url('/blog?date=').date('Y-m',strtotime($post->created_at))}}"> {{date("M d, Y",strtotime($post->created_at))}}</a> <span class="sep">&bullet;</span> <em>by</em> <a href="#"> {{$post->posted_by}} </a> </p>
              {{str_limit($post->content,400,"Readmore...")}}
            </div>
          </div>  
        </div>
        @endforeach
      </div>
      {{$posts->links()}}

  </div>
  </div>
  
  @include('front.partials.footer')
  @include('front.partials.script')
    
  </body>
</html>