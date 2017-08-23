<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/topmenu.css">
<div class="container-fluid">
    <!-- Second navbar for categories -->
    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/">SOSCANER</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="/soscan/main">SOScan</a></li>
            <li><a href="/tourGuide/seoulDiv">관광지 정보</a></li>
            <li><a href="/translate/translate">번역기</a></li>
            <li><a href="#">국가별 게시판</a></li>
            <li><a href="faq/faq">FAQ</a></li>
            <li><a href="#signup" data-toggle="modal" data-target=".bs-modal-sm">로그인</a></li>
            <li>
              <a class="btn btn-default btn-outline btn-circle collapsed"  data-toggle="collapse" href="#nav-collapse1" aria-expanded="false" aria-controls="nav-collapse1">언어</a>
            </li>
          </ul>
          <ul class="collapse nav navbar-nav nav-collapse" id="nav-collapse1">
            <li><a href="#">English</a></li>
            <li><a href="#">한국어</a></li>
            <li><a href="#">中國語</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
    </nav>
  </div>
  
   <!--   모달 -->
   <div class="modal fade bs-modal-sm" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
        <br>
        <div class="bs-example bs-example-tabs">
            <ul id="myTab" class="nav nav-tabs">
              <li class="active"><a href="#signin" data-toggle="tab">Sign In</a></li>
              <li class=""><a href="#signup" data-toggle="tab">Register</a></li>
            </ul>
        </div>
      <div class="modal-body">
        <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="signin">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign In Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userId">UserId:</label>
              <div class="controls">
                <input required="" id="userId" name="userId" type="text" class="form-control" placeholder="JoeSixpack" class="input-medium" required="">
              </div>
            </div>

            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="passwordinput">Password:</label>
              <div class="controls">
                <input required="" id="passwordinput" name="passwordinput" class="form-control" type="password" placeholder="********" class="input-medium">
              </div>
            </div>

            <!-- Multiple Checkboxes (inline) -->
            <div class="control-group">
              <label class="control-label" for="rememberme"></label>
            </div>

            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="signin"></label>
              <div class="controls">
                <button id="signin" name="signin" class="btn btn-success">Sign In</button>
              </div>
            </div>
            <div class="control-group">
            	<label class="control-label" for="facebook"></label>
              		<div class="controls">
                <button id="facebook" name="facebook" class="btn btn-success">FaceBookLogin</button>
             </div>
            </div>
            </fieldset>
            </form>
        </div>
        <div class="tab-pane fade" id="signup">
            <form class="form-horizontal">
            <fieldset>
            <!-- Sign Up Form -->
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="Email">Email:</label>
              <div class="controls">
                <input id="Email" name="Email" class="form-control" type="text" placeholder="JoeSixpack@sixpacksrus.com" class="input-large" required="">
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="userId">UserId:</label>
              <div class="controls">
                <input id="userId" name="userId" class="form-control" type="text" placeholder="JoeSixpack" class="input-large" required="">
              </div>
            </div>
            
            <!-- Password input-->
            <div class="control-group">
              <label class="control-label" for="password">Password:</label>
              <div class="controls">
                <input id="password" name="password" class="form-control" type="password" placeholder="********" class="input-large" required="">
                <em>1-8 Characters</em>
              </div>
            </div>
            
            <!-- Text input-->
            <div class="control-group">
              <label class="control-label" for="reenterpassword">Re-Enter Password:</label>
              <div class="controls">
                <input id="reenterpassword" class="form-control" name="reenterpassword" type="password" placeholder="********" class="input-large" required="">
              </div>
            </div>
            <br>
            
            <!-- Button -->
            <div class="control-group">
              <label class="control-label" for="confirmsignup"></label>
              <div class="controls">
                <button id="confirmsignup" name="confirmsignup" class="btn btn-success">Sign Up</button>
              </div>
            </div>
            </fieldset>
            </form>
      </div>
    </div>
      </div>
      <div class="modal-footer">
      <center>
        <button type="button" id="close" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.1.1/firebase-messaging.js"></script>
<script src="https://www.gstatic.com/firebasejs/4.2.0/firebase.js"></script>
<script>
	var config = {
		    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
		    authDomain: "fmc-test-1efbc.firebaseapp.com",
		    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
		    projectId: "fmc-test-1efbc",
		    storageBucket: "fmc-test-1efbc.appspot.com",
		    messagingSenderId: "117555202324"
		  };
		  firebase.initializeApp(config);
	var provider = new firebase.auth.FacebookAuthProvider();
	provider.addScope('user_birthday');
	provider.setCustomParameters({
		  'display': 'popup'
	});
	$("#facebook").click(function () {
		firebase.auth().signInWithPopup(provider).then(function(result) {
			  // This gives you a Facebook Access Token. You can use it to access the Facebook API.
			  var token = result.credential.accessToken;
			  // The signed-in user info.
			  var user = result.user;
			  console.log("token1",token);
			  $("#name").val(result.additionalUserInfo.profile.first_name);
			  console.log(result.additionalUserInfo.profile);
			  // ... 
			}).catch(function(error) { 
			  // Handle Errors here.
			  var errorCode = error.code;
			  var errorMessage = error.message;
			  // The email of the user's account used.
			  var email = error.email;
			  // The firebase.auth.AuthCredential type that was used.
			  var credential = error.credential;
			  // ...
			});
		$("#close").trigger('click');
	});
	
	
	var email = $("#Email").val();
	var userId = $("#userId").val();
	var password = $("#password").val();
	var repassword = $("#reenterpassword").val();
	
	
</script>
