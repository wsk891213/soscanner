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
  <script>
  
   $("#loginButton").click(function (e) {
	   if($("#registAccord").is(":visible")) {
		   e.preventDefault();
		   $('html, body').animate({scrollTop : 1219}, 1000);
		   $("#registAccord").slideUp();
       }
	   
	   if($("#signInAccord").is(":visible")){
           $("#signInAccord").slideUp(1000);
       } 
	   else {
       		$("#signInAccord").slideDown();
       	 	$('html, body').animate({scrollTop : 1043}, 1000);
       }
	   
   }) 
   
   $("#registBtn").click(function (e) {
	    e.preventDefault();
	    $('html, body').animate({scrollTop : 1219}, 900);
	    $("#signInAccord").slideUp(900);
	    $("#registAccord").slideDown(1000)
   })
   
   
   $("#RegistCancelBtn").click(function (e) {
	   e.preventDefault();
	   $('html, body').animate({scrollTop : 1219}, 1000);
	   $("#registAccord").slideUp();
	   $("#signInAccord").slideDown();
   })
    $("#loginCancelBtn").click(function (e) {
       e.preventDefault();
       $('html, body').animate({scrollTop : 0}, 1000);
	   $("#signInAccord").slideUp();
   })
   
  </script>