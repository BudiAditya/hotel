<?php 
$jumbotron = \DB::table('jumbotron')->orderBy('created_at','desc')->first();
?>
<div class="block-30 block-30-sm item" style="background-image: url('{{asset($jumbotron->image)}}')" data-stellar-background-ratio="0.5">
	<div class="container">
	  <div class="row align-items-center">
	    <div class="col-md-12">
	      <h2 class="heading">{{$jumbotron->title}}</h2>
	      <p><a href="{{$jumbotron->url}}" class="btn py-4 px-5 btn-primary">{{$jumbotron->button_text}}</a></p>
	    </div>
	  </div>
	</div>
</div>