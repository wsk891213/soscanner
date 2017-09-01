<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>SOSCANNER</title>
  <c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body style="font-family: 'Open Sans', sans-serif;">
  <!-- nav 메뉴 -->
    <c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
  <!-- nav 메뉴 끝-->

  <div class="main-wrapper-mp oh">
    <!-- 레볼루션 슬라이더 -->
    <section> 
      <div class="rev_slider_wrapper">
        <div class="rev_slider" id="slider2" data-version="5.0">
          <ul>
            <!-- SLIDE 1 -->
            <li 
              data-fstransition="fade"
              data-transition="cube"
              data-easein="default" 
              data-easeout="default"
              data-slotamount="default"
              data-saveperformance="off"
              data-masterspeed="1000"
              data-delay="5000"
              data-title="The Art of Design">
              <!-- 슬라이드 1 이미지 -->
              <img src="resources/images/mTour.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none">관광정보
              </div>
            
              
              <div class="tp-caption tp-resizeme"
                data-x="center"
                data-y="center"
                data-hoffset="0"
                data-voffset="140" 
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='#' class='btn btn-lg btn-transparent'>Learn More</a>
              </div>  
            </li> 
            <!-- end slide 1 -->

            <!-- SLIDE 2 -->
            <li data-transition="cube"
              data-slotamount="1"
              data-masterspeed="1000"
              data-delay="5000"
              data-title="Creative &amp; Emotional">
              <!-- 슬라이드2 이미지 -->
              <img src="resources/images/mSoscan.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none">SOSCAN
              </div>

              <!-- LAYER NR. 3 -->
              <div class="tp-caption tp-resizeme"
                data-x="center"
                data-y="center"
                data-hoffset="0"
                data-voffset="140" 
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='#' class='btn btn-lg btn-transparent'>Learn More</a>
              </div>  
            </li> 
            <!-- end slide 2 -->

            <!-- SLIDE 3 -->
            <li data-transition="cube"
              data-slotamount="1"
              data-masterspeed="1000"
              data-delay="5000"
              data-title="Amazing Agency">
              <!-- 슬라이드3 이미지 -->
              <img src="resources/images/mTranslate.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none" style="color: black;">번역기
              </div>

              <!-- LAYER NR. 3 -->
              <div class="tp-caption tp-resizeme"
                data-x="center"
                data-y="center"
                data-hoffset="0"
                data-voffset="140" 
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='#' class='btn btn-lg btn-stroke' style="color: black;">Learn More</a>
              </div>  
            </li> 
            <!-- end slide 3 -->
          </ul>
        </div>
      </div>
    </section>
	<!-- 레볼루션 슬라이더 끝-->

    <!-- Our Services -->
    <section class="section-wrap-mp services style-2 pb-40 pb-mdm-50">
      <div class="container">
        <div class="row">
          <div class="col-md-4 service-item">
            <a href="#">
              <i class="fa fa-exclamation-triangle"></i>
            </a>
            <div class="service-item-box">
              <h3>SOSCAN</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="/tourGuide/seoulMap">
              <i class="fa fa-map-signs"></i>
            </a>
            <div class="service-item-box">
              <h3>광관지 정보</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="/translate/translator">
              <i class="fa fa-refresh"></i>
            </a>
            <div class="service-item-box">
              <h3>번역기</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="fa fa-flag-o"></i>
            </a>
            <div class="service-item-box">
              <h3>게시판</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="fa fa-question-circle-o"></i>
            </a>
            <div class="service-item-box">
              <h3>FAQ</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="fa fa-language"></i>
            </a>
            <div class="service-item-box">
              <h3>Language</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> 
          <!-- end service item -->
          
        </div>
      </div>
    </section> 
    <!-- end services -->
	
	<!-- start of footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
    <!-- end of footer -->

  </div> <!-- end main-wrapper -->
  
  <c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>