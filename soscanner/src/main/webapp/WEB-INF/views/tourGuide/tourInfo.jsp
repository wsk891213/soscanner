<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관광정보</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">
<!-- nav 메뉴 -->
  <c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->

<div class="service-item-box">
	<div class="main-wrapper-onepage main oh">

    <!-- Blog Single -->
    <section class="section-wrap pb-100 blog-single">
      <div class="container relative">
        <div class="row">
          
          <!-- content -->
          <div class="col-sm-12 blog-content">

            <!-- standard post -->
            <div class="entry-item">
              <div class="entry-img">
                <img src="/resources/images/blog/single_post_img.jpg" alt="">
              </div>

              <div class="row">
                <div class="col-sm-10 col-sm-offset-1">
                  
                  <div class="entry-title">
                    <h2>This is Awesome blog post title</h2>
                  </div>
                  <ul class="entry-meta bottom-line">
                    <li class="entry-date">
                      <a href="#">20 July, 2015</a>
                    </li>
                    <li class="entry-author">
                      by <a href="#">John Doe</a>
                    </li>
                    <li class="entry-category">
                      in <a href="#">Photography</a>
                    </li>
                    <li>
                      <a href="blog-single.html" class="entry-comments">10 Comments</a>
                    </li>               
                  </ul>

                  <div class="entry">
                    <div class="entry-content">
                      <span class="dropcap style-1">S</span>
                      <p>eek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, web design. Our team hand picked to provide the right balance of skills to work dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud officia deserunt mollit exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                      <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>

                      <blockquote class="blockquote-style-1 text-center">
                        <i class="fa fa-quote-left"></i>
                        <p>
                          The optimist proclaims that we live in the best of all possible worlds, and the pessimist fears this is true
                        </p>
                        <span>– James Branch</span>
                      </blockquote>

                      <h5>We Continuosly Seek Between Design and Technology</h5>

                      <p>Duis aute irure dolor in reprehenderit incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                      <p>We continuosly seek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, web design. Our team hand picked to provide the right balance of skills to work. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error e vitae dicta sunt explicabo numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>

                      <div class="row mt-30">
                        <div class="col-md-8">
                          <div class="entry-tags">
                            <h6>Tags:</h6>
                            <a href="#">Design</a>,
                            <a href="#">Photography</a>,
                            <a href="#">Branding</a>,
                            <a href="#">Creative</a>
                          </div>
                        </div> <!-- end tags -->

                        <div class="col-md-4 clearfix">
                          <div class="entry-share">
                            <h6>Share:</h6>
                            <div class="socials">
                              <a href="#"><i class="fa fa-facebook"></i></a>
                              <a href="#"><i class="fa fa-twitter"></i></a>
                              <a href="#"><i class="fa fa-google-plus"></i></a>
                              <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                          </div>
                        </div>
                      </div> <!-- end share -->

                    </div>
                  </div> <!-- end entry -->

                </div>
              </div> <!-- end row -->

            </div> <!-- end entry item -->
          </div> <!-- end col -->
  
        </div> <!-- end row -->

      </div> <!-- end container -->
    </section> <!-- end blog single -->

    <!-- Comments -->
    <section class="entry-comments section-wrap pt-100 pb-100 bg-light">
      <div class="container">
        <h4 class="text-center mb-50">3 Comments</h4>

        <ul class="comment-list">
          <li>
            <div class="comment-body">
              <img src="/resources/images/blog/comment_1.jpg" class="comment-avatar" alt="">
              <div class="comment-content">
                <span class="comment-author">Michael Doe</span>
                <span><a href="#">July 25, 2015 at 06:15 pm</a></span>    
                <p>We continuosly seek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, our team hand picked to provide the right balance of skills to work</p>
                <a href="#">Reply</a>
              </div>
            </div>

            <ul class="comment-reply">
              <li>
                <div class="comment-body">
                  <img src="/resources/images/blog/comment_2.jpg" class="comment-avatar" alt="">
                  <div class="comment-content">
                    <span class="comment-author">Jessica Doe</span>
                    <span><a href="#">July 23, 2015 at 14:48 pm</a></span>    
                    <p>We continuosly seek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, our team hand picked to provide the right balance of skills to work</p>
                    <a href="#">Reply</a>
                  </div>
                </div>
              </li> <!-- end reply comment -->
            </ul>

          </li> <!-- end 1-2 comment -->

          <li>
            <div class="comment-body">
              <img src="/resources/images/blog/comment_3.jpg" class="comment-avatar" alt="">
              <div class="comment-content">
                <span class="comment-author">Steve Spears</span>
                <span><a href="#">July 21, 2015 at 09:57 am</a></span>    
                <p>We continuosly seek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, our team hand picked to provide the right balance of skills to work</p>
                <a href="#">Reply</a>
              </div>
            </div>
          </li> <!-- end 3 comment -->

          <li>
            <div class="comment-body">
              <img src="/resources/images/blog/comment_4.jpg" class="comment-avatar" alt="">
              <div class="comment-content">
                <span class="comment-author">Antony Johnson</span>
                <span><a href="#">July 20, 2015 at 14:03 pm</a></span>
                <p>We continuosly seek between design and technology. For over a decade, we've helped businesses to craft honest, emotional experiences through strategy, brand development, graphic design, our team hand picked to provide the right balance of skills to work</p>
                <a href="#">Reply</a>
              </div>
            </div>
          </li> <!-- end 4 comment -->

        </ul>
      </div>
    </section> <!--  end comments -->

    <!-- Comment form -->
    <section class="section-wrap contact-form pt-100 pb-100">
      <div class="container">

        <h5 class="text-center mb-50">Leave a Comment</h5>

        <div class="row">

          <div class="col-md-6 col-md-offset-3">
            <form id="contact-form" action="#">
              <input name="name" id="name" type="text" placeholder="Name*">
              <input name="mail" id="mail" type="email" placeholder="E-mail*">
              <input name="website" id="website" type="text" placeholder="Website">
              <textarea name="comment" id="comment" placeholder="Comment"></textarea>
              <input type="submit" class="btn btn-lg btn-color btn-submit" value="Submit" id="submit-message">      
              <div id="msg" class="message"></div>
              </form>
          </div> <!-- end col -->

        </div>
      </div>
    </section> <!-- end comment form -->
  </div> <!-- end main-wrapper -->
  
</div>

<!-- start of footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>