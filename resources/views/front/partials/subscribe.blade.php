<div class="block-22">
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-md-7 text-center">
          <h2 class="heading mb-4">Be Sure To Get Our Promos</h2>
          @if($errors->any())
          <p>{{$errors->first()}}</p>
          @endif
          <form action="{{route('subscribe.post')}}" method="post" class="subscribe">
            <div class="form-group">
              <input type="email" name="email" class="form-control email" placeholder="Enter your email">
              {{csrf_field()}}
              <button type="submit" class="btn btn-primary submit">Subscribe</button>
            </div>
          </form>
        </div>
      </div>
    </div>
</div>