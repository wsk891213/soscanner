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
	        // [START_EXCLUDE]
	        // Update the UI to include the received message.
	        appendMessage(payload);
	        // [END_EXCLUDE]
	      });
	  }
    requestPermission();
   
	$("#registForm").submit(function (e) {
		e.preventDefault();
// 		console.log("email : ",$("#u_email").val());
		var registData = $("#registForm").serialize();
// 		console.log("registData : ",registData);
		$.ajax({
			type: "POST",
			url: "/user/signup",
			data: registData
		}).done(function (answer) {
			var text = "비번 불일치";
			if(answer == "2") {
				text = "회원가입 완료";
				$('html, body').animate({scrollTop : 0}, 4000);
				$("#registAccord").slideUp();
			}
			alert(text);
		});
		
	});
	$("#signInForm").submit(function (e) {
		e.preventDefault()
		var signData = $("#signInForm").serialize();
		console.log(signData);
		$.ajax({
			type: "POST",
			url: "/user/login",
			data: signData
		}).done(function (result) {
			console.log(result);
			location.href="/";
		});
	})
   console.log("${userPic.u_path}");
  </script>