<?php 
$rooms = \DB::table('featured_room')
->select('room.*','featured_room.*')
->join('room','room.id','featured_room.id_room')
->orderBy('featured_room.created_at','desc')
->get();
?>
<div class="site-section block-13 bg-light">
  <div class="container">
     <div class="row mb-5">
        <div class="col-md-7 section-heading">
          <span class="subheading-sm">Featured Rooms</span>
          <h2 class="heading">Rooms &amp; Suites</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, iusto, omnis! Quidem, sint, impedit? Dicta eaque delectus tempora hic, corporis velit doloremque quod quam laborum, nobis iusto autem culpa quaerat!</p>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="nonloop-block-13 owl-carousel">
              @foreach($rooms as $room)
              <div class="item">
                <div class="block-34">
                  <div class="image">
                    <a href="#"><img src="{{asset($room->img_1)}}" alt="Image placeholder"></a>
                  </div>
                  <div class="text">
                    <h2 class="heading"> {{$room->title}} </h2>
                    <div class="price"><sup>Rp.</sup><span class="number"> {{number_format($room->price,'0',',','.')}} </span><sub>/per night</sub></div>
                    <ul class="specs">
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
                    <p><a href="{{url('/rooms/'.$room->slug)}}" class="btn btn-primary py-3 px-5">Read More</a></p>
                  </div>
                </div>
              </div>
              @endforeach
          </div>
        </div> <!-- .col-md-12 -->
      </div>
  </div>
</div>