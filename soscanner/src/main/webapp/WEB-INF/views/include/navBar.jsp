<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
  <!-- 로딩 이미지 -->
  <div class="loader-mask">
    <div class="loader">
      "Loading..."
    </div>
  </div>
  <!-- 로딩 이미지 끝-->
<!-- Navigation -->
    <header class="nav-type-2">
    
    <nav class="navbar navbar-static-top">
      <div class="navigation">
        <div class="container relative" style="width: 90% !important;">

          <form method="get" class="search-wrap">
            <input type="search" class="form-control" placeholder="Type &amp; Hit Enter">
          </form>

          <div class="row" style="width: auto;">

            <div class="navbar-header">
              <!-- Logo -->
              <div class="logo-container">
                <div class="logo-wrap" s>
                  <a href="/" >
                    <img class="logo" src="/resources/images/Logo.png" alt="logo"    style="height: 50px;">
                  </a>
                </div>
              </div>
              
              
              
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div> <!-- end navbar-header -->

                <div class="col-md-9 nav-wrap right">
              <div class="navbar-collapse collapse in" id="navbar-collapse" style="max-height: 867px;" aria-expanded="true">
                
                
                <ul class="nav navbar-nav navbar-right">
                  <li>
                    <a href="/soscan/main" style="font-size: 20px;"><spring:message code="include.navBar.line45"/></a>
                  </li>
                  <li>
                    <a href="/tourGuide/seoulMap" style="font-size: 20px;"><spring:message code="include.navBar.line48"/></a>
                  </li>
                  <li>
                    <a href="/translate/translator" style="font-size: 20px;"><spring:message code="include.navBar.line51"/></a>
                  </li>
                  <li>
                    <a href="/board/list" style="font-size: 20px;"><spring:message code="include.navBar.line54"/></a>
                  </li>
                  <%-- <li>
                    <a href="/board/faq" style="font-size: 20px;"><spring:message code="include.navBar.line57"/></a>
                  </li> --%>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle"><spring:message code="include.navBar.line73"/></a>
                    <ul class="dropdown-menu menu-right">
                      <li><a href="/multiLingual?locale=en"><spring:message code="include.navBar.line75"/></a></li>
                      <li><a href="/multiLingual?locale=ko"><spring:message code="include.navBar.line76"/></a></li>
                      <li><a href="/multiLingual?locale=zh"><spring:message code="include.navBar.line77"/></a></li>
                    </ul>
                  </li>
                  <c:choose>
                  	<c:when test="${user==null}">
	                  <li>
	                    <a href="#" id="loginButton" style="font-size: 13px;"><spring:message code="include.navBar.line62"/></a>
	                  </li>
                  	</c:when>
                  	<c:otherwise>
					  <li>
	                    <a href="/user/logout" id="logoutButton" style="font-size: 13px;"><spring:message code="include.navBar.line67"/></a>
	                  </li>
                  	</c:otherwise>
                  </c:choose>
                  
                  <c:if test="${user != null}">
                  <li style="height: 90px; width: auto; padding: 20px 5px;">
					<div style="margin-top: 8px;">
						<img style="width: 30px; height: 30px; " src="${userPic.u_path}">
						
						<a href="/user/updateuser?user=${user}" style="color: black;">${user.u_email }</a>
						
					</div>
                  </li> 
                  </c:if>
                </ul> <!-- end menu -->
                
              </div> <!-- end collapse -->
            </div> <!-- end col -->
            
          </div> <!-- end row -->
        </div> <!-- end container -->
      </div> <!-- end navigation -->
    </nav> <!-- end navbar -->
  </header>
