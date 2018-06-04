window.onload = function() {

    // references to elements on the page.
    var form = document.getElementById('message-form');
    var messageField = document.getElementById('message');
    var messagesList = document.getElementById('messages');
    var socketStatus = document.getElementById('status');
    var closeBtn = document.getElementById('close');
    var openBtn = document.getElementById('open');
    
    // create new websocket
    var socket = new WebSocket('wss://echo.websocket.org');

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
        messagesList.innerHTML += '<li class="sent"><span>Sent:</span>' + message + '</li>';
        // clear out message field
        messageField.value = ''; 
        
        return false;
    }; 

    socket.onmessage = function(event) {
        var message = event.data; 
        messagesList.innerHTML += '<li class="received"><span>Received:</span>' + message + '</li>';
    };

    // show a disconnected message when websocket is closed 
    socket.onclose = function(event) {
        socketStatus.innerHTML = 'Disconnected from WebSocket. '; 
        socketStatus.className = 'closed'; 
    };
    
    closeBtn.onclick = function(e) {
        e.preventDefault();

        // close websocket 
        socket.close();
        return false;
    };

    openBtn.onclick = function(e) {
        e.preventDefault();

        socket = new WebSocket('wss://echo.websocket.org');
    };
  };