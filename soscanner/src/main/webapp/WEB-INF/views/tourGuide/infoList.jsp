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


    <!-- Blog Standard -->
    <section class="section-wrap blog-standard">
      <div class="container relative">
        <div class="row">
          
          <!-- content -->
          <div class="col-sm-8 blog-content">

          <!-- gallery post -->
          <c:choose>
          <c:when test="${!empty lists}">
          <c:forEach var="list" items="${lists}" varStatus="status">
            <div class="entry-item">
              <div class="entry-img">
                <a href="infoDetail?ti_no=${list.ti_no}">
                  <img src="/resources/images/blog/post_img_1.jpg" alt="">
                </a>
              </div>

              <div class="entry-date hidden-sm hidden-xs">
              <span>No</span>
              <span>${status.count}</span>
              </div>

              <div class="entry-title">
                <h2>
                  <a href="infoDetail?ti_no=${list.ti_no}">${list.ti_title}</a>
                </h2>
              </div>
              <ul class="entry-meta">
                <li>
                  <a>${list.ti_addr}</a>
                </li>               
              </ul>

              <div class="entry">         

                <div class="entry-content">
                  <p>${list.ti_ovrvw}</p>
                  <a href="infoDetail?ti_no=${list.ti_no}" class="read-more">더보기</a>
                  <i class="icon arrow_right"></i>
                </div>
              </div>
            </div>
            </c:forEach>
            </c:when>
            <c:otherwise>
            <div class="entry-item">
              <div class="entry-title">
                <h2>
                  <a href="blog-single.html">표시할 데이터가 없습니다</a>
                </h2>
              </div>
            </div>
            </c:otherwise>
            </c:choose>
             <!-- end entry item -->

            <!-- blockquote post -->
            <div class="entry-item">
              <div class="entry blockquote mt-0">             
                <blockquote class="blockquote-style-1 text-center mb-0">
                  <i class="fa fa-quote-left"></i>
                  <p>
                    <a href="blog-single.html">세계는 한 권의 책이다. 여행하지 않는 사람은 그 책의 한 페이지만 읽는 것과 같다.</a>
                  </p>
                  <span>– 아우구스티누스</span>
                </blockquote>
              </div>
            </div> <!-- end entry item -->


            <!-- Pagination -->
            <nav class="pagination clear text-center">
              <i class="icon arrow_left"></i>
                <a href="#">Prev</a>
              <span class="page-numbers current">1</span>
                <a href="#">2</a>
                <a href="#">3</a>
                <span class="pagination-dots">...</span>
                <a href="#">10</a>
                <a href="#">Next</a>
                <i class="icon arrow_right"></i>
            </nav>

          </div> <!-- end col -->
          
          <!-- sidebar -->
          <div class="col-sm-4 sidebar blog-sidebar">

            <form role="form" class="relative">
              <input type="search" class="searchbox" placeholder="Search">
                <button type="submit" class="search-button"><i class="icon icon_search"></i></button>
              </form>

              <!-- Categories -->
              <div class="widget categories">
                <h3 class="widget-title">Categories</h3>
                <ul>
                  <li>
                    <a href="#">종로구</a>
                  </li>
                  <li>
                    <a href="#">강남구</a>
                  </li>
                  <li>
                    <a href="#">중구</a>
                  </li>
                  <li>
                    <a href="#">영등포구</a>
                  </li>
                  <li>
                    <a href="#">송파구</a>
                  </li>
                </ul>
              </div>
          </div> <!-- end col -->
  
        </div> <!-- end row -->
      </div> <!-- end container -->
    </section> <!-- end blog standard -->

<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
</div> <!-- end main-wrapper -->

<!-- jQuery Scripts -->
<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>

</body>
</html>