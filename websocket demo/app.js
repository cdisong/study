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

    // handle any errors that occur 
    socket.onerror = function(error) {
        console.log('WebSocket Error: ' + error);
    };

    // send a message when the form is submitted 
    form.onsubmit = function(e) {
        e.preventDefault();
        // retreive message from text area 
        var message = messageField.value;
        // send message through websocket
        socket.send(message); 
        // add message to messages list 
        messagesList.innerHTML += '<li class="sent"><span>Sent:</span>' + message '</li>';
        // clear out message field
        messageField.value = ''; 
        
        return false;
    }   
    
  };