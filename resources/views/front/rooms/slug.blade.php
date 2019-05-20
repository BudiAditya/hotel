<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
    
  @include('front.partials.navbar')
  <div class="block-30 block-30-sm item" style="background-image: url('{{asset('brighthotel/images/bg_2.jpg')}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm">Rooms</span>
          <h2 class="heading">{{$room->title}}</h2>
        </div>
      </div>
    </div>
  </div>
  <div class="site-section bg-light">
    <div class="container">
      <div class="row mb-5">
        <div class="col-md-12 mb-5">
          <div class="block-3 d-md-flex">
            <div class="image" style="background-image: url('{{asset($room->img_1)}}'); "></div>
            <div class="text">

              <h2 class="heading">{{$room->title}}</h2>
              <div class="price"><sup>Rp.</sup><span class="number">{{number_format($room->price,'0','.',',')}}</span><sub>/per night</sub></div>
              <ul class="specs mb-5">
                <li><strong>Max People:</strong> {{$room->max_people}} </li>
                <?php
                $room_facilities = \DB::table('room_facilities')
                ->select('facilities.name as fname','facilities.image')
                ->join('facilities','facilities.id','room_facilities.id_facilities')
                ->where('room_facilities.id_room',$room->id)
                ->get();
                ?>
                <li><strong>Facilities:</strong> 
                  @foreach($room_facilities as $room_facility)
                    {{$room_facility->fname}},
                  @endforeach
                  Many More
                </li>
                <li><strong>Bed Type:</strong> {{$room->bed_type}}</li>
              </ul>
              {!!$room->description!!}
              <a href="{{url('booking-room?checkin_date='.date('Y-m-d').'&checkout_date='.date('Y-m-d',time()+86400).'&adult=1&children=0&id_room='.$room->id)}}" class="btn btn-primary py-3 px-5"> Book Room </a>
            </div>
          </div>
        </div>  
      </div>
      
      <div class="row mb-5 pt-5 justify-content-center">
          <div class="col-md-7 text-center section-heading">
            <h2 class="heading">More Rooms</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p>
          </div>
      </div>

      <div class="row">
        <!-- kamars -->
        <?php 
          $kamars = \DB::table('room')->get();
        ?>
        @foreach($kamars as $kamar)
        <div class="col-lg-4 mb-5">
          <div class="block-34">
            <div class="image">
              <a href="#"><img src="{{asset($kamar->img_1)}}" alt="Image placeholder"></a>
            </div>
            <div class="text">
              <h2 class="heading"> {{$kamar->title}} </h2>
              <div class="price"><sup>Rp.</sup><span class="number"> {{number_format($kamar->price,'0','.',',')}} </span><sub>/per night</sub></div>
              <ul class="specs">
                <li><strong>Max People:</strong> {{$kamar->max_people}} </li>
                <?php
                $kamar_facilities = \DB::table('room_facilities')
                ->select('facilities.name as fname','facilities.image')
                ->join('facilities','facilities.id','room_facilities.id_facilities')
                ->where('room_facilities.id_room',$kamar->id)
                ->get();
                ?>
                <li><strong>Facilities:</strong> 
                  @foreach($kamar_facilities as $kamar_facility)
                    {{$kamar_facility->fname}},
                  @endforeach
                  Many More
                </li>
                <li><strong>Bed Type:</strong> {{$kamar->bed_type}}</li>
              </ul>
              <p><a href="{{url('/rooms/'.$kamar->slug)}}" class="btn btn-primary py-3 px-5">Read More</a></p>
            </div>
          </div>
        </div>
        @endforeach
      </div>
      
    </div>
  </div>
  
  @include('front.partials.testimonial')
  @include('front.partials.subscribe')

  @include('front.partials.footer')

  @include('front.partials.script')
  </body>
</html>