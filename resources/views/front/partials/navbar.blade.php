<?php 
$setting = \DB::table('cms_settings')->get();
?>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
  <div class="container">
    <a class="navbar-brand" href="{{url('/')}}">{{$setting[9]->content}}</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="oi oi-menu"></span> Menu
    </button>

    <div class="collapse navbar-collapse" id="ftco-nav">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item @if(Request::segment(1) == '') active @endif"><a href="{{url('/')}}" class="nav-link">Home</a></li>
        <li class="nav-item @if(Request::segment(1) == 'rooms') active @endif "><a href="{{url('rooms')}}" class="nav-link">Rooms</a></li>
        <li class="nav-item @if(Request::segment(1) == 'services') active @endif"><a href="{{url('services')}}" class="nav-link">Services</a></li>
        <li class="nav-item @if(Request::segment(1) == 'about') active @endif"><a href="{{url('about')}}" class="nav-link">About Us</a></li>
        <li class="nav-item @if(Request::segment(1) == 'blog') active @endif"><a href="{{url('blog')}}" class="nav-link">Blog</a></li>
        <li class="nav-item @if(Request::segment(1) == 'contact') active @endif"><a href="{{url('contact')}}" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </div>
</nav>