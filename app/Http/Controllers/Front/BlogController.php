<?php

namespace App\Http\Controllers\Front;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Post;

class BlogController extends Controller
{
    public function index(Request $request)
    {
    	if(!empty($request)){
    		$posts = \DB::table('post')
	    	->where('title','like','%'.$request->title.'%')
	    	->where('id_post_category','like','%'.$request->id_post_category.'%')
	    	->where('created_at','like','%'.$request->date.'%')
	    	->orderBy('created_at','desc')
	    	->paginate(6);
	    	$data['posts'] = $posts;
    	}else{
	    	$posts = \DB::table('post')->orderBy('created_at','desc')->paginate(6);
	    	$data['posts'] = $post;
    	}
    	return view('front.blog.index',$data);
    }

    public function slug($slug)
    {
    	$post = Post::where('slug',$slug)->first();

    	$data['post'] = $post;
    	return view('front.blog.slug',$data);
    }

}
