importScripts('https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.3.0/firebase-messaging.js');
firebase.initializeApp({
	'messagingSenderId': '48683629446'
});


const messaging = firebase.messaging();

messaging.setBackgroundMessageHandler(function(payload) {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);
  const notificationTitle = 'Background Message Title';
  const notificationOptions = {
    body: 'Background Message body.',
    icon: '/firebase-logo.png'
  };

  return self.registration.showNotification(notificationTitle,
      notificationOptions);
});
