<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="manifest" href="/resources/manifest.json">
</head>
<body cz-shortcut-listen="true">
 <div class="mdl-layout__container"><div class="demo-layout mdl-layout mdl-js-layout mdl-layout--fixed-header is-upgraded" data-upgraded=",MaterialLayout">

  <!-- Header section containing title -->
  <header class="mdl-layout__header mdl-color-text--white mdl-color--light-blue-700 is-casting-shadow">
    <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-grid">
      <div class="mdl-layout__header-row mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--8-col-desktop">
        <h3>Firebase Cloud Messaging</h3>
      </div>
    </div>
  </header>

  <main class="mdl-layout__content mdl-color--grey-100">
    <div class="mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-grid">

      <!-- Container for the Table of content -->
      <div class="mdl-card mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-cell--12-col-tablet mdl-cell--12-col-desktop">
        <div class="mdl-card__supporting-text mdl-color-text--grey-600">
          <!-- div to display the generated Instance ID token -->
          <div id="token_div" style="">
            <h4>Instance ID Token</h4>
            <p id="token" style="word-break: break-all;"></p>
            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" onclick="deleteToken()" data-upgraded=",MaterialButton">Delete Token</button>
          </div>
          <!-- div to display the UI to allow the request for permission to
               notify the user. This is shown if the app has not yet been
               granted permission to notify. -->
          <div id="permission_div" style="display: none;">
            <h4>Needs Permission</h4>
            <p id="token"></p>
            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" onclick="requestPermission()" data-upgraded=",MaterialButton">Request Permission</button>
          </div>
          <!-- div to display messages received by this app. -->
          <div id="messages"></div>
        </div>
      </div>

    </div>
  </main>
</div></div>
  
  <div id="log"></div>


    <script src="https://www.gstatic.com/firebasejs/4.3.0/firebase.js"></script>
    <script >
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
	    console.log('Requesting permission...');
	    // [START request_permission]
	    messaging.requestPermission()
	    .then(function() {
	      console.log('Notification permission granted.');
	      // TODO(developer): Retrieve an Instance ID token for use with FCM.
	      // [START_EXCLUDE]
	      // In many cases once an app has been granted notification permission, it
	      // should update its UI reflecting this.
	      resetUI();
	      // [END_EXCLUDE]
	    })
	    .catch(function(err) {
	      console.log('Unable to get permission to notify.', err);
	    });
	    // [END request_permission]
	    
	    messaging.getToken()
	    .then(function(currentToken) {
	        console.log(currentToken);
	      
	    })
	    .catch(function(err) {
	      console.log('An error occurred while retrieving token. ', err);
	      setTokenSentToServer(false);
	    });
	  }
    requestPermission();
 
</script>
  

</body>
</html>