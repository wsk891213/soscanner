// // Import and configure the Firebase SDK
// // These scripts are made available when the app is served or deployed on Firebase Hosting
// // If you do not serve/host your project using Firebase Hosting see https://firebase.google.com/docs/web/setup
importScripts('https://www.gstatic.com/firebasejs/4.3.0/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.3.0/firebase-messaging.js');
const messaging = firebase.messaging();
// messaging.setBackgroundMessageHandler(function(payload) {
//     const title = '준영이';
//     const options = {
//         body: payload.data.status
//     };
//     return self.regstartion.showNotification(title, options);
// })

// /**
//  * Here is is the code snippet to initialize Firebase Messaging in the Service
//  * Worker when your app is not hosted on Firebase Hosting.

//  // [START initialize_firebase_in_sw]
//  // Give the service worker access to Firebase Messaging.
//  // Note that you can only use Firebase Messaging here, other Firebase libraries
//  // are not available in the service worker.
//  importScripts('https://www.gstatic.com/firebasejs/3.9.0/firebase-app.js');
//  importScripts('https://www.gstatic.com/firebasejs/3.9.0/firebase-messaging.js');

//  // Initialize the Firebase app in the service worker by passing in the
//  // messagingSenderId.
//  firebase.initializeApp({
//    'messagingSenderId': 'YOUR-SENDER-ID'
//  });

//  // Retrieve an instance of Firebase Messaging so that it can handle background
//  // messages.
//  const messaging = firebase.messaging();
//  // [END initialize_firebase_in_sw]
//  **/

// messaging.requestPermission()
// .then(function() {
//   console.log('have permission');
//   return messaging.getToken();
// })
// .then(function(token){
//   console.log(token)
// })
// .catch(function (err) {
//   console.log('Error Occured.');
// })

// messaging.onMessage(function(payload){
//   console.log('onMessage: ', payload)
// })


// // If you would like to customize notifications that are received in the
// // background (Web app is closed or not in browser focus) then you should
// // implement this optional method.
// // [START background_handler]
messaging.setBackgroundMessageHandler(function(payload) {
  console.log('[firebase-messaging-sw.js] Received background message ', payload);
  // Customize notification here
  const notificationTitle = 'Background Message Title';
  const notificationOptions = {
    body: 'Background Message body.',
    icon: '/firebase-logo.png'
  };

  return self.registration.showNotification(notificationTitle,
      notificationOptions);
});
// // [END background_handler]
// //curl --header "Authorization: key=AAAAC1XFO4Y:APA91bG0j44SLYGqa0aaw58EykUr9fz0Vqwv_X3Kn57NkhJg4yhObIj18fsO_NAmFcKUWNNkeZu0sQh-TUy45xspyQRFeA8bD3HaqalrikMgibfgdzMXsBAFNNct_Mak_mdFyXm-aXkf" --header "Content-Type:application/json" https://fcm.googleapis.com/fcm/send -d '{"to":"cXUCkLY4G38:APA91bEQdxCn2FBXHYCgueZTBNcKmB6-MC6JXA6ltDgSmal7oD6uIyId7nXgo7rGLpiR9_peRXyqlPr5-aE0GLjXVf-29qrIiJcaIe7PRthyfC3uZcjiKeDZpuZKwitCbRrqKyI-7Gx0", "notification": {"title": "hello", "body":"good"}}' 


