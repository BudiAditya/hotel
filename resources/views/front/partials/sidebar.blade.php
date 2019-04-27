<div class="col-md-4 sidebar">
  <div class="sidebar-box">
    <form action="{{route('blog.index')}}" class="search-form">
      <div class="form-group">
        {{csrf_field()}}
        <span class="icon fa fa-search"></span>
        <input type="text" name="title" class="form-control" placeholder="Type a keyword and hit enter">
      </div>
    </form>
  </div>
  <div class="sidebar-box">
    <div class="categories">
      <h3>Categories</h3>
      <?php $categories = \DB::table('post_category')->get(); ?>
      @foreach($categories as $category)
      <li><a href="{{url('/blog?id_post_category=').$category->id}}">{{$category->name}}</span></a></li>
      @endforeach
    </div>
  </div>
  
  <!--
  <div class="sidebar-box">
    <img src="images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4 rounded">
    <h3>About The Author</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
    <p><a href="#" class="btn btn-primary btn-lg">Read More</a></p>
  </div>
  -->

  <!-- 
  <div class="sidebar-box">
    <h3>Tag Cloud</h3>
    <div class="tagcloud">
      <a href="#" class="tag-cloud-link">Life</a>
      <a href="#" class="tag-cloud-link">Sport</a>
      <a href="#" class="tag-cloud-link">Tech</a>
      <a href="#" class="tag-cloud-link">Travel</a>
      <a href="#" class="tag-cloud-link">Life</a>
      <a href="#" class="tag-cloud-link">Sport</a>
      <a href="#" class="tag-cloud-link">Tech</a>
      <a href="#" class="tag-cloud-link">Travel</a>
    </div>
  </div> 
  -->

  <!-- 
  <div class="sidebar-box">
    <h3>Paragraph</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
  </div> 
  -->
</div>