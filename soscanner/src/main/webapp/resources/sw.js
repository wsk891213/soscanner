console.log('Started', self);
self.addEventListener('install', function(event) {
  self.skipWaiting();
  console.log('Installed', event);
});
self.addEventListener('activate', function(event) {
  console.log('Activated', event);
});

self.addEventListener('push', function(event) {
  console.log('Push message', event);
  var title = 'FoodTub';
  event.waitUntil(
    self.registration.showNotification(title, {
      body: '주문하신 음식조리가 완료되었습니다.',
      icon: 'images/icon.png',
      tag: 'my-tag'
    }));
});