<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
              <img src="/resources/images/mSoscan.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none"><spring:message code="main.home.line76"/>
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
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='/soscan/main' class='btn btn-lg btn-transparent'><spring:message code="main.home.line55"/></a>
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
              <img src="/resources/images/mTour.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">
              
			
              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none"><spring:message code="main.home.line42"/>
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
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='/tourGuide/seoulMap' class='btn btn-lg btn-transparent'><spring:message code="main.home.line89"/></a>
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
              <img src="/resources/images/mTranslate.jpg" alt="" data-bgrepeat="no-repeat" data-bgfit="cover" class="rev-slidebg">

              <!-- LAYER NR. 1 -->
              <div class="tp-caption hero-text giant_nocaps"
                data-x="center"
                data-y="center"
                data-transform_idle="o:1;s:1500;"
                data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.1;sY:0.1;skX:0;skY:0;opacity:0;s:1000;e:Power3.easeOut;" 
                data-transform_out="opacity:0;sX:0;sY:0;s:1200;e:Power3.easeInOut;"
                data-start="1000"
                data-splitout="none" style="color: black;"><spring:message code="main.home.line111"/>
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
                style="z-index: 12; max-width: auto; max-height: auto; white-space: nowrap;"><a href='/translate/translator' class='btn btn-lg btn-stroke' style="color: black;"><spring:message code="main.home.line124"/></a>
              </div>  
            </li> 
            <!-- end slide 3 -->
          </ul>
        </div>
      </div>
    </section>
    	<div id="update">
			<div class="container">
				<div class="row heading">
					<div class="col-md-6 col-md-offset-3">
						<h2 class="text-center color-white bottom-line">회원가입</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<form id="updateForm" method="post" enctype="multipart/form-data">
							<p>
						        <label for="image">사진선택</label>
						        <br />
						        <input type="file" name="image" id="image" />
						    </p>
						    <div id="image_preview">
						        <img src="${userPic.u_path}" style="height: 150px; width: 150px;"/>
						        <br />
						        <a href="#">Remove</a>
						    </div>
							<br><br>
							<input name="u_uno" type="hidden" value="${user.u_uno }">
							<input name="u_email" id="u_email" type="text" readonly="readonly" placeholder="Email" value="${user.u_email}">
							<input name="u_pass" id="u_pass" type="password" placeholder="Password">
							<input name="u_passChk" id="u_passChk" type="password" placeholder="Password Check">
			    			<select name="u_nationality" id="u_nationality">
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
							<input name="u_token" id="u_token" type="hidden">
							<input type="submit" class="btn btn-lg btn-dark" value="정보수정"> <a href="#" id="RegistCancelBtn" class="btn btn-lg btn-dark">취소</a>
							<br>
							<br>
						</form>
						
					</div>
				</div>
			</div>
    	</div>
	<!-- 레볼루션 슬라이더 끝-->
			<!-- start of footer -->
<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
<!-- end of footer -->
	</div> <!-- end main-wrapper -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
	<script>
		(function () {
			$("#u_nationality").val("${user.u_nationality}").prop("selected", true);
			console.log("${user.u_nationality}");
			$("#u_language").val("${user.u_language}").prop("selected", true);
		})();
		
		
		$("#updateForm").submit(function (e) {
			var formData = new FormData($("#updateForm")[0]);
			formData.forEach(function (e) {
				console.log(e);
			})
			e.preventDefault();
// 			console.log("serialize : ",updateData);
			$.ajax({
				type: "post",
				url: "updateForm",
				data: formData,
				processData: false,
				contentType: false
			}).done(function () {
				alert("수정이 완료되었습니다");
				location.href="/";
			});
			console.log($("#image").val());
		});
		 /** 
	    onchange event handler for the file input field.
	    It emplements very basic validation using the file extension.
	    If the filename passes validation it will show the image using it's blob URL  
	    and will hide the input field and show a delete button to allow the user to remove the image
	    */

	    $('#image').on('change', function() {
	        
	        ext = $(this).val().split('.').pop().toLowerCase(); //확장자
	        
	        //배열에 추출한 확장자가 존재하는지 체크
	        if($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
	            resetFormElement($(this)); //폼 초기화
	            window.alert('이미지 파일이 아닙니다! (gif, png, jpg, jpeg 만 업로드 가능)');
	        } else {
	            file = $('#image').prop("files")[0];
	            blobURL = window.URL.createObjectURL(file);
	            $('#image_preview img').attr('src', blobURL);
	            $('#image_preview').slideDown(); //업로드한 이미지 미리보기 
	            $(this).slideUp(); //파일 양식 감춤
	        }
	    });

	    /**
	    onclick event handler for the delete button.
	    It removes the image, clears and unhides the file input field.
	    */
	    $('#image_preview a').bind('click', function() {
	        resetFormElement($('#image')); //전달한 양식 초기화
	        $('#image').slideDown(); //파일 양식 보여줌
	        $(this).parent().slideUp(); //미리 보기 영역 감춤
	        return false; //기본 이벤트 막음
	    });
	        

	    /** 
	    * 폼요소 초기화 
	    * Reset form element
	    * 
	    * @param e jQuery object
	    */
	    function resetFormElement(e) {
	        e.wrap('<form>').closest('form').get(0).reset(); 
	        //리셋하려는 폼양식 요소를 폼(<form>) 으로 감싸고 (wrap()) , 
	        //요소를 감싸고 있는 가장 가까운 폼( closest('form')) 에서 Dom요소를 반환받고 ( get(0) ),
	        //DOM에서 제공하는 초기화 메서드 reset()을 호출
	        e.unwrap(); //감싼 <form> 태그를 제거
	    }
	</script>
</body>
</html>