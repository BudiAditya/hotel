<div class="row mb-5">
  <div class="col-md-12">

    <div class="block-32">
      <form action="{{route('booking')}}" method="get">
        <div class="row">
          <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
            <label for="checkin">Check In</label>
            <div class="field-icon-wrap">
              <div class="icon"><span class="icon-calendar"></span></div>
              <input type="date" name="checkin_date" class="form-control" 
              value="{{ date('Y-m-d',strtotime($_GET['checkin_date'])) ? date('Y-m-d') : date('Y-m-d',strtotime($_GET['checkin_date'])) }}">
            </div>
          </div>
          <div class="col-md-6 mb-3 mb-lg-0 col-lg-3">
            <label for="checkin">Check Out</label>
            <div class="field-icon-wrap">
              <div class="icon"><span class="icon-calendar"></span></div>
              <input type="date" name="checkout_date" class="form-control" 
              value="{{ date('Y-m-d',strtotime($_GET['checkout_date'])) ? date('Y-m-d') : date('Y-m-d',strtotime($_GET['checkout_date'])) }}">
            </div>
          </div>
          <div class="col-md-6 mb-3 mb-md-0 col-lg-3">
            <div class="row">
              <div class="col-md-6 mb-3 mb-md-0">
                <label for="checkin">Adults</label>
                <div class="field-icon-wrap">
                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                  <select name="adult" class="form-control">
                    @if($_GET["adult"])
                      <option value="{{$_GET['adult']}}">{{$_GET['adult']}}</option>
                    @endif
                    @for($i=0;$i<=20;$i++)
                    <option value="{{$i}}">{{$i}}</option>
                    @endfor
                  </select>
                </div>
              </div>
              <div class="col-md-6 mb-3 mb-md-0">
                <label for="checkin">Children</label>
                <div class="field-icon-wrap">
                  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                  <select name="children" class="form-control">
                    @if($_GET["children"])
                      <option value="{{$_GET['children']}}">{{$_GET['children']}}</option>
                    @endif
                    @for($i=0;$i<=20;$i++)
                    <option value="{{$i}}">{{$i}}</option>
                    @endfor
                  </select>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 align-self-end">
            <button class="btn btn-primary btn-block">Check Availabilty</button>
          </div>
        </div>
      </form>
    </div>
  </div>
</div>