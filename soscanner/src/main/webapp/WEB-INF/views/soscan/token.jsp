<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<script src="/resources/js/worker.js"></script>
	<script>
		Notification.requestPermission(function(status) {
			console.log('notification permisson satatus: ', status);
		});
		function displayNotification() {
			if (Notification.permisson === 'granted') {
				navigator.serviceWorker.getRegistration()
				.then(function(reg) {
				var option = {
					body: 'Here is a notification body!',
					icon: 'images/example.png',
					vibrate: [100, 50, 100],
					data: { primaryKey: 1 }
				};
					reg.showNotification('Hello world', options);
				})
			}
		}
	</script>
</body>
</html>