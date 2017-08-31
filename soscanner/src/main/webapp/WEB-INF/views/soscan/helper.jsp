<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>SOScan</title>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>

<body data-spy="scroll" data-offset="60" data-target=".navbar-fixed-top">

<!-- nav 메뉴 -->
<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
<!-- nav 메뉴 끝-->


  <div class="main-wrapper-onepage main oh">

    <!-- Page Title -->
    <section class="page-title text-center" style="background-image: url(/resources/images/newsospic.jpg);">
      <div class="container relative clearfix">
        <div class="title-holder">
          <div class="title-text">
            <h1 class="color-white heading-frame">SOScan</h1>
            <ol class="breadcrumb">
					<li class="active">Help AnyOne</li>
				</ol>
          </div>
        </div>
      </div>
    </section> <!-- end page title -->


    <!-- Blog Standard -->
    <section class="section-wrap blog-standard">
      <div class="container relative">
        <div class="row">
          <!-- content -->
          <!-- 여기에 스타일 15%된거 변경해서 중간으로 맞춰야함 -->
          <div class="col-sm-8 blog-content" style="margin-left: 15%" id="hDiv">
      		<h2 class="intro-heading heading-frame">Please choose someone to help you</h2>

          <!-- gallery post -->
            <div class="entry-item">
              <div class="entry-date hidden-sm hidden-xs" style="padding: 0px 4px;">
              <img src="/resources/images/kara_4.png"></img>
              </div> 

              <div class="entry-title">
                <h2>
                  <a href="#">userId</a>
                </h2>
              </div>
              <ul class="entry-meta">
                <li>
                  <a>여기에 내용</a>
                </li>               
              </ul>
            </div>
             <!-- end entry item -->
          <!-- gallery post -->
            <div class="entry-item">
              <div class="entry-date hidden-sm hidden-xs" style="padding: 0px 4px;">
              <img src="/resources/images/kara_4.png"></img>
              </div> 

              <div class="entry-title">
                <h2>
                  <a href="#">userId</a>
                </h2>
              </div>
              <ul class="entry-meta">
                <li>
                  <a>여기에 내용</a>
                </li>               
              </ul>
            </div>
             <!-- end entry item -->


<!--             Pagination -->
<!--             <nav class="pagination clear text-center"> -->
<!--               <i class="icon arrow_left"></i> -->
<!--                 <a href="#">Prev</a> -->
<!--               <span class="page-numbers current">1</span> -->
<!--                 <a href="#">2</a> -->
<!--                 <a href="#">3</a> -->
<!--                 <span class="pagination-dots">...</span> -->
<!--                 <a href="#">10</a> -->
<!--                 <a href="#">Next</a> -->
<!--                 <i class="icon arrow_right"></i> -->
<!--             </nav> -->

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



	<script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
	<script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-database.js"></script>
	<script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
<script>
  // Initialize Firebase
 var config = {
			    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
			    authDomain: "fmc-test-1efbc.firebaseapp.com",
			    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
			    projectId: "fmc-test-1efbc",
			    storageBucket: "fmc-test-1efbc.appspot.com",
			    messagingSenderId: "117555202324"
			  };
			  firebase.initializeApp(config);
  var database = firebase.database();
  var hDiv = $("#hDiv");
  var help = database.ref().child('help/user1');
  help.on('child_added', function (snap) {
	 var message = database.ref().child('help/user1/message');
	 var userId = database.ref().child('help/user1/userId');
	 var html = '';
	 html +='<div class="entry-item">';
	 html +='<div class="entry-date hidden-sm hidden-xs" style="padding: 0px 4px;">';
	 html +='<img src="/resources/images/kara_4.png"></img>';
	 html += '</div>' ;
	 html +='<div class="entry-title">';
	 html += '<h2>';
	 html +=     '<a href="#">'+userId.val()+'</a>';
	 html +=   '</h2>';
	 html +='</div>';
	 html += '<ul class="entry-meta">';
	 html +=   '<li>';
	 html +=     '<a>'+ message.val()+'</a>';
	 html +=   '</li>';
	 html +='</ul>';
	 html +='</div>';
	 hDiv.append(html);
  });
</script>


</body>
</html>