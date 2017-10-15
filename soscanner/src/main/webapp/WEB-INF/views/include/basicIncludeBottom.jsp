<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
  <script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
  <script>
  
   $("#loginButton").click(function (e) {
	   if($("#registAccord").is(":visible")) {
		   e.preventDefault();
		   $('html, body').animate({scrollTop : $('html, body').height()}, 1000);
		   $("#registAccord").slideUp();
       }
	   
	   if($("#signInAccord").is(":visible")){
		   e.preventDefault();
       } 
	   else {
       		$("#signInAccord").slideDown();
       	 	$('html, body').animate({scrollTop : $('html, body').height()}, 1000);
       }
   }) 
   
   
   $("#registBtn").click(function (e) {
	    e.preventDefault();
	    $('html, body').animate({scrollTop : $('html, body').height()}, 900);
	    $("#signInAccord").slideUp(900);
	    $("#registAccord").slideDown(1000)
   })
   
   
   $("#RegistCancelBtn").click(function (e) {
	   e.preventDefault();
	   $('html, body').animate({scrollTop : $('html, body').height()}, 1000);
	   $("#registAccord").slideUp();
	   $("#signInAccord").slideDown();
	   $("#u_email").val("");
	   $("#u_pass").val("");
	   $("#u_passChk").val("");
   })
    $("#loginCancelBtn").click(function (e) {
       e.preventDefault();
       $('html, body').animate({scrollTop : 0}, 1000);
	   $("#signInAccord").slideUp();
   })
   
   
   // homin
   
        // Initialize Firebase
    var config = {
        apiKey: "AIzaSyB80FZkiKaOtvZYczEeb_5VV0S080TkDiY",
        authDomain: "finaltest-aea39.firebaseapp.com",
        databaseURL: "https://finaltest-aea39.firebaseio.com",
        projectId: "finaltest-aea39",
        storageBucket: "finaltest-aea39.appspot.com",
        messagingSenderId: "48683629446"
      };
     firebase.initializeApp(config);
    </script>

    <script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js"></script>
    <!-- include only the Firebase features as you need -->
    <script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-messaging.js"></script>
    <script defer src="https://www.gstatic.com/firebasejs/4.3.0/firebase-storage.js"></script>
    <!-- initialize the SDK after all desired features are loaded -->
    <script defer>

    
    const messaging = firebase.messaging()
  	function requestPermission() {
// 	    console.log('Requesting permission...');
	    // [START request_permission]
	    messaging.requestPermission()
	    .then(function() {
// 	      console.log('Notification permission granted.');
	      // TODO(developer): Retrieve an Instance ID token for use with FCM.
	      // [START_EXCLUDE]
	      // In many cases once an app has been granted notification permission, it
	      // should update its UI reflecting this.
	      resetUI();
	      // [END_EXCLUDE]
	    })
	    .catch(function(err) {
// 	      console.log('Unable to get permission to notify.', err);
	    });
	    // [END request_permission]
	    
	    messaging.getToken()
	    .then(function(currentToken) {
	        console.log(currentToken);
	        $("#u_token").val(currentToken);
	      
	    })
	    .catch(function(err) {
// 	      console.log('An error occurred while retrieving token. ', err);
	      setTokenSentToServer(false);
	    });
	    messaging.onMessage(function(payload) {
	        console.log("Message received. ", payload);
	        console.log("Message received. ", payload.notification);
	        swal(
	        		'help sos',
	        		payload.notification.body,
	        		'warning'
	        );
	        setTimeout(function () {
		        location.href = payload.notification.click_action;
			}, 2000);
	        // [START_EXCLUDE]
	        // Update the UI to include the received message.
	        // [END_EXCLUDE]
	      });
	  }
    requestPermission();
   
	$("#registForm").submit(function (e) {
		e.preventDefault();
		if($('#u_email').val().indexOf("@") == -1) {
			alert("이메일 주소를 확인해 주세요");
			return false;
		}
		if($('#u_pass').val() != $('#u_passChk').val()) {
			alert("비밀번호를 확인해 주세요");
			return false;
		}
		
		$.ajax({
			type: "POST",
			url: "/user/signup",
			data: $("#registForm").serialize()
		}).done(function (result) {
			if(result == "1") {
				swal(
						'회원가입 실패',
						'이미 존재하는 회원입니다',
						'warning'
				)
			}
			else {
				$('html, body').animate({scrollTop : $('html, body').height()}, 1000);
			    $("#registAccord").slideUp();
			    $("#signInAccord").slideDown();
			    $("#u_email").val("");
			    $("#u_pass").val("");
			    $("#u_passChk").val("");
				swal(
						'회원가입 성공',
						'회원가입에 성공하였습니다',
						'success'
				)
			}
			
		});
	});
	
	$("#signInForm").submit(function (e) {
		e.preventDefault();
		if($('#u_emailLogin').val().indexOf("@") == -1) {
			alert("이메일 주소를 확인해 주세요");
			return false;
		}
		if($('#u_passLogin').val() == "") {
			alert("비밀번호를 입력해  주세요");
			return false;
		}
		
		var signData = $("#signInForm").serialize();
		$.ajax({
			type: "POST",
			url: "/user/login",
			data: signData
		}).done(function (result) {
			console.log(result);
			location.href="/";
		});
	})
  </script>
  
  
  
  