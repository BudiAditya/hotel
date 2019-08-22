<?php 
$setting = \DB::table('cms_settings')->get();
?>
<head>
    <title>{{$setting[9]->content}} | 
        @if(!empty($room))
            {{$room->seo_title}}
        @elseif(!empty($pages))
            {{$pages->title}}
        @elseif(!empty($post))
            {{$post->title}}
        @else
            {{$setting[27-1]->content}}
        @endif
    </title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    @if(!empty($room))
        <meta name="description" content="{!!$room->meta_description!!}">
    @elseif(!empty($pages))
        <meta name="description" content="{!!$pages->meta_description!!}">
    @elseif(!empty($post))
        <meta name="description" content="{!!$post->meta_description!!}">
    @else
        <meta name="description" content="{!!$setting[28-1]->content!!}">
    @endif
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('brighthotel/css/open-iconic-bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/animate.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/magnific-popup.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/aos.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/ionicons.min.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/bootstrap-datepicker.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/jquery.timepicker.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/flaticon.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/icomoon.css')}}">
    <link rel="stylesheet" href="{{asset('brighthotel/css/style.css')}}">
</head>