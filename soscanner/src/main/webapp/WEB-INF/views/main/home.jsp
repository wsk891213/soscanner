<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Enigma | Home Multi-Page</title>

  <meta charset="utf-8">
  <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
  <meta name="description" content="">

  <!-- Google Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic%7COpen+Sans:400,600,700,400italic' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
  <link rel="stylesheet" href="/resources/css/magnific-popup.css" />
  <link rel="stylesheet" href="/resources/css/font-icons.css" />
  <link rel="stylesheet" href="/resources/revolution/css/settings.css" />
  <link rel="stylesheet" href="/resources/css/rev-slider.css" />
  <link rel="stylesheet" href="/resources/css/sliders.css">
  <link rel="stylesheet" href="/resources/css/style.css" />
  <link rel="stylesheet" href="/resources/css/responsive.css" />
  <link rel="stylesheet" href="/resources/css/spacings.css" />
  <link rel="stylesheet" href="/resources/css/animate.css" />
  <link rel="stylesheet" href="/resources/css/color.css" />

  <!-- Favicons -->
  <link rel="shortcut icon" href="/resources/images/favicon.ico">
  <link rel="apple-touch-icon" href="/resources/images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="/resources/images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="/resources/images/apple-touch-icon-114x114.png">

</head>

<body style="font-family: 'Open Sans', sans-serif;">

  <!-- Preloader -->
  <div class="loader-mask">
    <div class="loader">
      "Loading..."
    </div>
  </div>

  <header class="nav-type-1" id="home">
    <c:import url="/WEB-INF/views/include/topMenu.jsp"></c:import>
  </header>


  <div class="main-wrapper-mp oh">

    <!-- Revolution Slider -->
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
              data-delay="8000"
              data-title="The Art of Design">
              <!-- MAIN IMAGE -->
              <img src="resources/images/mTour.jpg"
                alt=""
                data-bgrepeat="no-repeat"
                data-bgfit="cover"
                class="rev-slidebg"
                >

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
              
              <!-- LAYER NR. 2 -->
              <div class="tp-caption subheading_text"
                data-x="center"
                data-y="center"
                data-voffset="84"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000">관광정보 설명
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
        
            </li> <!-- end slide 1 -->

            <!-- SLIDE 2 -->
            <li data-transition="cube"
              data-slotamount="1"
              data-masterspeed="1000"
              data-delay="8000"
              data-title="Creative &amp; Emotional">
              <!-- MAIN IMAGE -->
              <img src="resources/images/mSoscan.jpg"
                alt=""
                data-bgrepeat="no-repeat"
                data-bgfit="cover"
                class="rev-slidebg"
                >

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

              <!-- LAYER NR. 2 -->
              <div class="tp-caption subheading_text"
                data-x="center"
                data-y="center"
                data-voffset="84"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000">SOSCAN 설명
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
        
            </li> <!-- end slide 2 -->

            <!-- SLIDE 3 -->
            <li data-transition="cube"
              data-slotamount="1"
              data-masterspeed="1000"
              data-delay="8000"
              data-title="Amazing Agency">
              <!-- MAIN IMAGE -->
              <img src="resources/images/mTranslate.jpg"
                alt=""
                data-bgrepeat="no-repeat"
                data-bgfit="cover"
                class="rev-slidebg"
                >

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none">번역기
              </div>

              <!-- LAYER NR. 2 -->
              <div class="tp-caption subheading_text"
                data-x="center"
                data-y="center"
                data-voffset="84"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0;sY:0;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000">번역기 설명
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
            
            </li> <!-- end slide 3 -->

          </ul>

        </div>
      </div>
    </section>


    <!-- Our Services -->
    <section class="section-wrap-mp services style-2 pb-40 pb-mdm-50">
      <div class="container">

        <div class="row">
          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-DesktopMonitor"></i>
            </a>
            <div class="service-item-box">
              <h3>Great Design</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-Layers"></i>
            </a>
            <div class="service-item-box">
              <h3>Perfect Coding</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-Eye"></i>
            </a>
            <div class="service-item-box">
              <h3>Retina Ready</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-User"></i>
            </a>
            <div class="service-item-box">
              <h3>5 Star Support</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-Settings"></i>
            </a>
            <div class="service-item-box">
              <h3>Easy to Customize</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->

          <div class="col-md-4 service-item">
            <a href="#">
              <i class="icon icon-Timer"></i>
            </a>
            <div class="service-item-box">
              <h3>Fast Loading</h3>
              <p>Our web design team will spend time with our digital marketing team to ensure the core principles of effective websites.</p>
            </div>
          </div> <!-- end service item -->
          
        </div>
      </div>
    </section> <!-- end services -->
	<!-- start of footer -->
	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
    <!-- end of footer -->

    <div id="back-to-top">
      <a href="#top"><i class="fa fa-angle-up"></i></a>
    </div>

  </div> <!-- end main-wrapper -->
  
  <!-- jQuery Scripts -->
  <script type="text/javascript" src="/resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/resources/js/plugins.js"></script>
  <script type="text/javascript" src="/resources/revolution/js/jquery.themepunch.tools.min.js"></script>
  <script type="text/javascript" src="/resources/revolution/js/jquery.themepunch.revolution.min.js"></script>
  <script type="text/javascript" src="/resources/js/rev-slider.js"></script>
    <script type="text/javascript" src="/resources/js/scripts.js"></script>


    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.video.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.migration.min.js"></script>
    <script type="text/javascript" src="/resources/revolution/js/extensions/revolution.extension.parallax.min.js"></script>

</body>
</html>