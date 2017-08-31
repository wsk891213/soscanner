/**
 * 
 */
 // Initialize Firebase
  var config = {
    apiKey: "AIzaSyCCz1QBgdGHOMtDsNBuVdP0vV4AEzMWSwQ",
    authDomain: "fmc-test-1efbc.firebaseapp.com",
    databaseURL: "https://fmc-test-1efbc.firebaseio.com",
    projectId: "fmc-test-1efbc",
    storageBucket: "fmc-test-1efbc.appspot.com",
    messagingSenderId: "117555202324"
  };
  firebase.initializeApp(config);
  var dnperm = $('#dnperm');
  
  $('#dnperm').click(function(e){
    e.preventDefault();
 if(!window.Notification){
    alert('NOT supported');
 }else{
    Notification.requestPermission().then(function(p){
       if(p == 'denied'){
          alert('you denied to show');
       }else if(p == 'granted'){
          alert('you allowed to show');
       }
    });
 }
 });
 
 function writeUserData(name, message) {
    database.push().set({
       username: name,
       message: message
    });
 }
 
 function renderUI(obj){
    var html='';
    
    var keys = Object.keys(obj);
    for(var i=0;i<keys.length;i++){
       html += "<li><b><i>" + obj[keys[i]].username+"</i></b> says: "+obj[keys[i]].message+"</li>";
    }
    $('#comment').html(html);
 }
 
 $('#btnGetMessage').click(function(){
    writeUserData($('#username').val(),$('#message').val());
    $('#username').val('');
    $('#message').val('');
 });
 var database = firebase.database().ref().child("messages/"+"user2");
 
 database.on('value', function(snapshot){
    renderUI(snapshot.val());
 });
 
 database.on('child_added', function(data) {
	 console.log(data);
    if(Notification.permission != 'default'){
       var notify;
       notify = new Notification('New Message from ' + data.val().username,{
          body: data.val().message,
          icon: "resources/images/ok.jpg",
       });
   
       notify.onclick = function() {
          location.href="main";
          database.ref().child("/messages"+"/user2");
       }
    }else{
       alert('please allow');
    }
 });