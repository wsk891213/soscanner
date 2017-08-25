<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<link rel="stylesheet" href="/resources/css/login.css">
<script
	src="/resources/js/login.js"></script>
</head>
<body>
	<div>
		<c:import url="/WEB-INF/views/include/topMenu.jsp" />
	</div>
<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Please sign in</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form accept-charset="UTF-8" role="form">
                    <fieldset>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="userId" name="userId" type="text" value="">
			    		</div>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="E-mail" name="email" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="" type="password" value="">
			    		</div>
			    		<div class="form-group">
			    			Language : 
			    			<select name="language" id="language" class="btn btn-default">
								<option value="ko">korea</option>
								<option value="en">영어</option>
								<option value="ch">중국어</option>
			    			</select> 
			    		</div>
			    		<div class="form-group">
			    			nationality :
			    			<select name="nationality" id="nationality" class="btn btn-default">
    						<option value="AR">Argentina</option>
    						<option value="AU">Australia</option>
    						<option value="AT">Austria</option>
    						<option value="BY">Belarus</option>
    						<option value="BE">Belgium</option>
    						<option value="BA">Bosnia and Herzegovina</option>
    						<option value="BR">Brazil</option>
    						<option value="BG">Bulgaria</option>
    						<option value="CA">Canada</option>
    						<option value="CL">Chile</option>
    						<option value="CN">China</option>
    						<option value="CO">Colombia</option>
    						<option value="CR">Costa Rica</option>
    						<option value="HR">Croatia</option>
    						<option value="CU">Cuba</option>
    						<option value="CY">Cyprus</option>
    						<option value="CZ">Czech Republic</option>
    						<option value="DK">Denmark</option>
    						<option value="DO">Dominican Republic</option>
    						<option value="EG">Egypt</option>
    						<option value="EE">Estonia</option>
    						<option value="FI">Finland</option>
    						<option value="FR">France</option>
    						<option value="GE">Georgia</option>
    						<option value="DE">Germany</option>
    						<option value="GI">Gibraltar</option>
    						<option value="GR">Greece</option>
    						<option value="HK">Hong Kong S.A.R., China</option>
    						<option value="HU">Hungary</option>
    						<option value="IS">Iceland</option>
    						<option value="IN">India</option>
    						<option value="ID">Indonesia</option>
    						<option value="IR">Iran</option>
    						<option value="IQ">Iraq</option>
    						<option value="IE">Ireland</option>
    						<option value="IL">Israel</option>
    						<option value="IT">Italy</option>
    						<option value="JM">Jamaica</option>
    						<option value="JP">Japan</option>
    						<option value="KZ">Kazakhstan</option>
    						<option value="KW">Kuwait</option>
    						<option value="KG">Kyrgyzstan</option>
    						<option value="LA">Laos</option>
    						<option value="LV">Latvia</option>
    						<option value="LB">Lebanon</option>
    						<option value="LT">Lithuania</option>
    						<option value="LU">Luxembourg</option>
    						<option value="MK">Macedonia</option>
    						<option value="MY">Malaysia</option>
    						<option value="MT">Malta</option>
    						<option value="MX">Mexico</option>
    						<option value="MD">Moldova</option>
    						<option value="MC">Monaco</option>
    						<option value="ME">Montenegro</option>
    						<option value="MA">Morocco</option>
    						<option value="NL">Netherlands</option>
    						<option value="NZ">New Zealand</option>
    						<option value="NI">Nicaragua</option>
    						<option value="KP">North Korea</option>
    						<option value="NO">Norway</option>
    						<option value="PK">Pakistan</option>
    						<option value="PS">Palestinian Territory</option>
    						<option value="PE">Peru</option>
    						<option value="PH">Philippines</option>
    						<option value="PL">Poland</option>
    						<option value="PT">Portugal</option>
    						<option value="PR">Puerto Rico</option>
    						<option value="QA">Qatar</option>
    						<option value="RO">Romania</option>
    						<option value="RU">Russia</option>
    						<option value="SA">Saudi Arabia</option>
    						<option value="RS">Serbia</option>
    						<option value="SG">Singapore</option>
    						<option value="SK">Slovakia</option>
    						<option value="SI">Slovenia</option>
    						<option value="ZA">South Africa</option>
    						<option value="KR">South Korea</option>
    						<option value="ES">Spain</option>
    						<option value="LK">Sri Lanka</option>
    						<option value="SE">Sweden</option>
    						<option value="CH">Switzerland</option>
    						<option value="TW">Taiwan</option>
    						<option value="TH">Thailand</option>
    						<option value="TN">Tunisia</option>
    						<option value="TR">Turkey</option>
    						<option value="UA">Ukraine</option>
    						<option value="AE">United Arab Emirates</option>
    						<option value="GB">United Kingdom</option>
    						<option value="US">USA</option>
    						<option value="UZ">Uzbekistan</option>
    						<option value="VN">Vietnam</option>
    					</select>
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Sing up">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
</body>
</html>