window.onload = function() {

    // references to elements on the page.
    var form = document.getElementById('message-form');
    var messageField = document.getElementById('message');
    var messagesList = document.getElementById('messages');
    var socketStatus = document.getElementById('status');
    var closeBtn = document.getElementById('close');
    
    // create new websocket
    var socket = new WebSocket('ws://echo.websocket.org');

    // when websocket opens, show connected message 
    socket.onopen = function(event) {
        socketStatus.innerHTML = 'Connected to: ' + event.currentTarget.url; 
        socketStatus.className = 'open'; 
    };

    socket.onerror = function(error) {
        console.log('WebSocket Error: ' + error);
    };

    
  };