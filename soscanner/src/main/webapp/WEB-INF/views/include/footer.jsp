<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- register Form start -->
<section id="registAccord" class="section-wrap process"
	style="background-image: url(/resources/images/process_bg.jpg); display: none;">
	<div class="container">
		<div class="row heading">
			<div class="col-md-6 col-md-offset-3">
				<h2 class="text-center color-white bottom-line">회원가입</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form id="registForm" action="#" onclick="RF();">
					<input name="u_email" id="u_email" type="text" placeholder="Email">
					<input name="u_pass" id="u_pass" type="password" placeholder="Password">
					<input name="u_pass" id="u_pass" type="password" placeholder="Password Check">
	    			<select name="u_nationality" id="u_nationality" >
   						<option value="Argentina">Argentina</option>
   						<option value="Australia">Australia</option>
   						<option value="Austria">Austria</option>
   						<option value="Belarus">Belarus</option>
   						<option value="Belgium">Belgium</option>
   						<option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
   						<option value="Brazil">Brazil</option>
   						<option value="Bulgaria">Bulgaria</option>
   						<option value="Canada">Canada</option>
   						<option value="Chile">Chile</option>
   						<option value="China">China</option>
   						<option value="Colombia">Colombia</option>
   						<option value="Costa Rica">Costa Rica</option>
   						<option value="Croatia">Croatia</option>
   						<option value="Cuba">Cuba</option>
   						<option value="Cyprus">Cyprus</option>
   						<option value="Czech Republic">Czech Republic</option>
   						<option value="Denmark">Denmark</option>
   						<option value="Dominican Republic">Dominican Republic</option>
   						<option value="Egypt">Egypt</option>
   						<option value="Estonia">Estonia</option>
   						<option value="Finland">Finland</option>
   						<option value="France">France</option>
   						<option value="Georgia">Georgia</option>
   						<option value="Germany">Germany</option>
   						<option value="Gibraltar">Gibraltar</option>
   						<option value="Greece">Greece</option>
   						<option value="Hong Kong S.A.R., China">Hong Kong S.A.R., China</option>
   						<option value="Hungary">Hungary</option>
   						<option value="Iceland">Iceland</option>
   						<option value="India">India</option>
   						<option value="Indonesia">Indonesia</option>
   						<option value="Iran">Iran</option>
   						<option value="Iraq">Iraq</option>
   						<option value="Ireland">Ireland</option>
   						<option value="Israel">Israel</option>
   						<option value="Italy">Italy</option>
   						<option value="Jamaica">Jamaica</option>
   						<option value="Japan">Japan</option>
   						<option value="Kazakhstan">Kazakhstan</option>
   						<option value="Kuwait">Kuwait</option>
   						<option value="Kyrgyzstan">Kyrgyzstan</option>
   						<option value="Laos">Laos</option>
   						<option value="Latvia">Latvia</option>
   						<option value="Lebanon">Lebanon</option>
   						<option value="Lithuania">Lithuania</option>
   						<option value="Luxembourg">Luxembourg</option>
   						<option value="Macedonia">Macedonia</option>
   						<option value="Malaysia">Malaysia</option>
   						<option value="Malta">Malta</option>
   						<option value="Mexico">Mexico</option>
   						<option value="Moldova">Moldova</option>
   						<option value="Monaco">Monaco</option>
   						<option value="Montenegro">Montenegro</option>
   						<option value="Morocco">Morocco</option>
   						<option value="Netherlands">Netherlands</option>
   						<option value="New Zealand">New Zealand</option>
   						<option value="Nicaragua">Nicaragua</option>
   						<option value="North Korea">North Korea</option>
   						<option value="Norway">Norway</option>
   						<option value="Pakistan">Pakistan</option>
   						<option value="Palestinian Territory">Palestinian Territory</option>
   						<option value="Peru">Peru</option>
   						<option value="Philippines">Philippines</option>
   						<option value="Poland">Poland</option>
   						<option value="Portugal">Portugal</option>
   						<option value="Puerto Rico">Puerto Rico</option>
   						<option value="Qatar">Qatar</option>
   						<option value="Romania">Romania</option>
   						<option value="Russia">Russia</option>
   						<option value="Saudi Arabia">Saudi Arabia</option>
   						<option value="Serbia">Serbia</option>
   						<option value="Singapore">Singapore</option>
   						<option value="Slovakia">Slovakia</option>
   						<option value="Slovenia">Slovenia</option>
   						<option value="South Africa">South Africa</option>
   						<option value="South Korea">South Korea</option>
   						<option value="Spain">Spain</option>
   						<option value="Sri Lanka">Sri Lanka</option>
   						<option value="Sweden">Sweden</option>
   						<option value="Switzerland">Switzerland</option>
   						<option value="Taiwan">Taiwan</option>
   						<option value="Thailand">Thailand</option>
   						<option value="Tunisia">Tunisia</option>
   						<option value="Turkey">Turkey</option>
   						<option value="Ukraine">Ukraine</option>
   						<option value="United Arab Emirates">United Arab Emirates</option>
   						<option value="United Kingdom">United Kingdom</option>
   						<option value="USA">USA</option>
   						<option value="Uzbekistan">Uzbekistan</option>
   						<option value="Vietnam">Vietnam</option>
   					</select>
   					
					<select name="u_language" id="u_language">
		                <option selected="selected" value="english">영어</option>
		                <option value="korean">한글</option>
		                <option value="chinese">중국어</option>
		            </select>
					<input name="token" id="token" type="hidden">
					<a href="#"class="btn btn-lg btn-dark">회원가입</a> <a href="#" id="RegistCancelBtn" class="btn btn-lg btn-dark">취소</a>
					<br>
					<br>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- register Form end -->


<!-- Sign In Form Accordion start-->
<section id="signInAccord" class="section-wrap process"
	style="background-image: url(/resources/images/process_bg.jpg); display: none;">
	<div class="container">
		<div class="row heading">
			<div class="col-md-6 col-md-offset-3">
				<h2 class="text-center color-white bottom-line">로그인</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form id="signInForm">
					<input name="u_email" id="u_email" type="text" placeholder="ID">
					<input name="u_pass" id="u_pass" type="password"
						placeholder="Password"> <a href="#"
						class="btn btn-lg btn-dark">로그인</a> <a href="#"
						id="loginCancelBtn" class="btn btn-lg btn-dark">취소</a><br>
					<br> <a href="#" id="registBtn">회원가입</a>
				</form>
			</div>
		</div>
	</div>
</section>
<section class="section-wrap-mp services style-2 pb-0 pb-mdm-50"
	style="padding: 1px !important;"></section>
<!-- Sign In Form Accordion end-->

<footer class="footer minimal bg-dark" style="padding: 30px !important;">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="footer-logo local-scroll mb-30 wow zoomIn"
					data-wow-duration="1s" data-wow-delay="0.2s">
					<h2>
						<a href="#home" class="color-white">SOSCANNER</a>
					</h2>
				</div>
				<span class="copyright text-center"
					style="margin-top: 20px !important;"> 2017 SOSCANNER |
					Development by <a href="#">SOSCANNER</a>
				</span>
			</div>
		</div>
	</div>
</footer>

<div id="back-to-top">
	<a href="#top"><i class="fa fa-angle-up"></i></a>
</div>
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  



