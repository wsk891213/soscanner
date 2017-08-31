<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<link rel="stylesheet" href="/resources/css/login.css">
<script src="/resources/js/login.js"></script>
</head>

<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
<div id="wrap" class="wrap">
<div class="wrap-inner">

<!--Login Section-->
<div class="section" id="section1">
  <div class="form form--login">
    <h1 class="alpha">Login</h1>
    <p>You already have an account? Great! Login here.</p>
    <div>
      <form class="form-wrap">
        <input id="" class="inputbox email" type="text" placeholder="Email id" />
        <input id="" class="inputbox password" type="password" placeholder="Password" />
        <p><a href="#" class="button">Login <i class="icon-rocket"></i></a></p>
      </form>
      <p>Forget password? It's ok. <a class="scroll" href="#section3" data-section="3">Recover here &raquo;</a></p>
    </div>
    <hr />
    <p>Or you can Login with one of the following</p>
    <div class="social">
      <a href="#" class="facebook"><i class="icon-facebook"></i></a>
    </div>
    <p>Don't have an account? <a class="scroll" href="#section2" data-section="2">Register Now &raquo;</a></p>
  </div>
</div>
<!--END: Login Section-->
 
<!--Signup Section-->
<div class="section" id="section2">
  <div class="form form--signup">
    <h1 class="alpha">Sign Up in Seconds!</h1>
    <p>Signup using your Email address</p>
    <div>
      <form class="form-wrap">
        <input id="" class="inputbox name" type="text" placeholder="Your Name" />
        <input id="" class="inputbox email" type="text" placeholder="Email id" />
        <input id="" class="inputbox password" type="password" placeholder="Password" />
        <input id="" class="inputbox password" type="password" placeholder="Confirm Password" />
        <p><a href="#" class="button">Create my Account <i class="icon-rocket"></i></a></p>
        <!--<input id="" type="button" class="button" value="Sign up" />-->
      </form>
    </div>
    <hr />
    <p>Or you can Signup with one of the following</p>
    <div class="social">
      <a href="#" class="facebook"><i class="icon-facebook"></i><span>Facebook</span></a>
</div>
<!--END: Signup Section-->
 
<!--Forget Password Section-->
<div class="section" id="section3">
  <div class="form form--login">
    <h1 class="alpha">Lost password?</h1>
    <p>Ohk, don't panic. You can recover it here.</p>
    <div>
      <form class="form-wrap">
        <input id="" class="inputbox email" type="text" placeholder="Email id" />
        <p><a href="#" class="button">Send me <i class="icon-rocket"></i></a></p>
      </form>
    </div>
    <hr />
    <p>You remember your Password? Brilliant!</p>
    <p><a class="scroll" href="#section1" data-section="1">&laquo; Login here</a></p>
  </div>
</div>
<!--END: Forget Password Section-->

</div>
</div>
			
</body>
</html>