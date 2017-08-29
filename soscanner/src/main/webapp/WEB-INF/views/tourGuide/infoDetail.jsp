<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>관광정보</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">
<!-- nav 메뉴 -->
<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->

  <div class="main-wrapper-onepage main oh">

    <!-- Page Title -->
    <section class="page-title text-center" style="background-image: url(/resources/images/sTour.jpg);">
      <div class="container relative clearfix">
        <div class="title-holder">
          <div class="title-text">
            <h1 class="color-white heading-frame">관광지 정보</h1>
          </div>
        </div>
      </div>
    </section> <!-- end page title -->


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
                    <h2>${tourInfoVO.ti_title}</h2>
                  </div>

                    <div class="entry-content">
                      <p style="text-align: justify;">${tourInfoVO.ti_ovrvw}</p>
                    </div>
                  </div> <!-- end entry -->

                </div>
              </div> <!-- end row -->

            </div> <!-- end entry item -->
          </div> <!-- end col -->
  
        </div> <!-- end row -->

      </div> <!-- end container -->
    </section> <!-- end blog single -->

<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
</div> <!-- end main-wrapper -->
  
<!-- jQuery Scripts -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>