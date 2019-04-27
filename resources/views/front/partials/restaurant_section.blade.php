<div class="site-section bg-light">
  <div class="container">
    <div class="row mb-5">
        <div class="col-md-7 section-heading">
          <span class="subheading-sm">Menus</span>
          <h2 class="heading">Restaurant Menu</h2>
        </div>
      </div>

    <div class="block-35">
      
      <ul class="nav" id="pills-tab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Breakfast</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Lunch</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Dinner</a>
        </li>
      </ul>
      <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
          <div class="row">
            <div class="col-md-12 block-13">
              <div class="nonloop-block-13 owl-carousel">
                <?php $rms = \DB::table('restaurant_menu')->where('category','Breakfast')->get();?>
                @foreach($rms as $rm)
                <div class="item">
                  <div class="block-34">
                    <div class="image">
                      <a href="#"><img src="{{asset($rm->image)}}" alt="Image placeholder"></a>
                    </div>
                    <div class="text">
                      <h2 class="heading"> {{$rm->title}} </h2>
                      {{str_limit($rm->description,200)}}
                      <div class="price"><sup>Rp.</sup><span class="number"> {{number_format($rm->price,'0','.',',')}} </span></div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
          </div>
        </div>


        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
          <div class="row">
            <div class="col-md-12 block-13">
              <div class="nonloop-block-13 owl-carousel">
                <?php $rms = \DB::table('restaurant_menu')->where('category','Lunch')->get();?>
                @foreach($rms as $rm)
                <div class="item">
                  <div class="block-34">
                    <div class="image">
                      <a href="#"><img src="{{asset($rm->image)}}" alt="Image placeholder"></a>
                    </div>
                    <div class="text">
                      <h2 class="heading"> {{$rm->title}} </h2>
                      {{str_limit($rm->description,200)}}
                      <div class="price"><sup>Rp.</sup><span class="number"> {{number_format($rm->price,'0','.',',')}} </span></div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
          <div class="row">
            <div class="col-md-12 block-13">
              <div class="nonloop-block-13 owl-carousel">
                <?php $rms = \DB::table('restaurant_menu')->where('category','Dinner')->get();?>
                @foreach($rms as $rm)
                <div class="item">
                  <div class="block-34">
                    <div class="image">
                      <a href="#"><img src="{{asset($rm->image)}}" alt="Image placeholder"></a>
                    </div>
                    <div class="text">
                      <h2 class="heading"> {{$rm->title}} </h2>
                      {{str_limit($rm->description,200)}}
                      <div class="price"><sup>Rp.</sup><span class="number"> {{number_format($rm->price,'0','.',',')}} </span></div>
                    </div>
                  </div>
                </div>
                @endforeach
              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </div>
</div>