<!DOCTYPE html>
<html lang="en">
  @include('front.partials.head')
  <body>
  @include('front.partials.navbar')
  
  <div class="block-30 block-30-sm item" style="background-image: url('{{asset($post->feature_image)}}');" data-stellar-background-ratio="0.5">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-10">
          <span class="subheading-sm"> {{date("M d, Y",strtotime($post->created_at))}}</span>
              <h2 class="heading">{{$post->title}}</h2>
        </div>
      </div>
    </div>
  </div>


  <div id="blog" class="site-section">
    <div class="container">
            
            <div class="row">

              <div class="col-md-8">
                <h2 class="mb-3">{{$post->title}}</h2>

                {!!$post->content!!}

                <div class="tag-widget post-tag-container mb-5 mt-5">
                  <div class="tagcloud">
                    <?php $cn = \DB::table('post_category')->where('id',$post->id_post_category)->first(); ?>
                    <a href="{{url('/blog?id_post_category=').$cn->id}}" class="tag-cloud-link">{{$cn->name}}</a>
                  </div>
                </div>


                <div class="pt-5 mt-5">
                  <!-- 
                  <h3 class="mb-5">6 Comments</h3>
                  <ul class="comment-list">
                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Jean Doe</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>
                    </li>

                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Jean Doe</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>

                      <ul class="children">
                        <li class="comment">
                          <div class="vcard bio">
                            <img src="images/person_1.jpg" alt="Image placeholder">
                          </div>
                          <div class="comment-body">
                            <h3>Jean Doe</h3>
                            <div class="meta">January 9, 2018 at 2:21pm</div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                            <p><a href="#" class="reply">Reply</a></p>
                          </div>


                          <ul class="children">
                            <li class="comment">
                              <div class="vcard bio">
                                <img src="images/person_1.jpg" alt="Image placeholder">
                              </div>
                              <div class="comment-body">
                                <h3>Jean Doe</h3>
                                <div class="meta">January 9, 2018 at 2:21pm</div>
                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                <p><a href="#" class="reply">Reply</a></p>
                              </div>

                                <ul class="children">
                                  <li class="comment">
                                    <div class="vcard bio">
                                      <img src="images/person_1.jpg" alt="Image placeholder">
                                    </div>
                                    <div class="comment-body">
                                      <h3>Jean Doe</h3>
                                      <div class="meta">January 9, 2018 at 2:21pm</div>
                                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                                      <p><a href="#" class="reply">Reply</a></p>
                                    </div>
                                  </li>
                                </ul>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>

                    <li class="comment">
                      <div class="vcard bio">
                        <img src="images/person_1.jpg" alt="Image placeholder">
                      </div>
                      <div class="comment-body">
                        <h3>Jean Doe</h3>
                        <div class="meta">January 9, 2018 at 2:21pm</div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur quidem laborum necessitatibus, ipsam impedit vitae autem, eum officia, fugiat saepe enim sapiente iste iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
                        <p><a href="#" class="reply">Reply</a></p>
                      </div>
                    </li>
                  </ul> 
                  -->
                  <!-- END comment-list -->
                  
                  <!-- 
                  <div class="comment-form-wrap pt-5">
                    <h3 class="mb-5">Leave a comment</h3>
                    <form action="#" class="p-5 bg-light">
                      <div class="form-group">
                        <label for="name">Name *</label>
                        <input type="text" class="form-control" id="name">
                      </div>
                      <div class="form-group">
                        <label for="email">Email *</label>
                        <input type="email" class="form-control" id="email">
                      </div>
                      <div class="form-group">
                        <label for="website">Website</label>
                        <input type="url" class="form-control" id="website">
                      </div>

                      <div class="form-group">
                        <label for="message">Message</label>
                        <textarea name="" id="message" cols="30" rows="10" class="form-control"></textarea>
                      </div>
                      <div class="form-group">
                        <input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
                      </div>

                    </form>
                  </div> 
                  -->
                </div>

              </div> <!-- .col-md-8 -->
              @include('front.partials.sidebar')

            </div>

            
          </div>
  </div>
  
  @include('front.partials.footer')
  @include('front.partials.script')
    
  </body>
</html>