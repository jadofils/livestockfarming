<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #333; /* Dark white color for the background */
      color: #fff; /* Text color */
    }

    .chat-container {
      max-width: 800px;
      margin: 20px auto;
      overflow: hidden;
      background-color: #fff; /* Dark white color for the chat container */
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle depth effect */
    }
.user2profile{
    background-color: #ccc;
    width: 60px;
    height: 60px;

}
    .message-container {
      overflow: hidden;
    }

    .message {
      margin: 10px;
      padding: 10px;
      border-radius: 8px;
      max-width: 70%;
      clear: both;
    }

    .user1 {
      background-color: #99ccff;
      float: left;
    }

    .user2 {
      background-color: #ffcc99;
      float: right;
    }

    /* New styling for the message input area and button */
    .message-input {
      width: 67%;
      margin-left: 200px;
      padding: 8px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }
    .messagebox{
        display:block;

    }
    .messagebox .send-button {
        width: 200px;
        margin-left: 67%;
    }
    .send-button {
      padding: 8px;
      border: 1px solid #4CAF50;
      background-color: #4CAF50;
      color: white;
      border-radius: 4px;
      cursor: pointer;
    }

    .header-services {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px;
        background-color: #fff; /* Dark white color for the header background */
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a subtle depth effect */
        margin-left:20px;
        margin-top:20px;


      }
  
      .user2profile {
color: blue; 
  width: 100px;
  height: 100px;  

}
  
      .notifications {
color: #333;      }
  
      .contact {
color: #333;      }
  
      .searchbox {
        display: flex;
        align-items: center;
      }
  
      .searchbox input {
        margin-left: -40%;
        height: 35px;
        width: 60%;
        padding: 8px;
        border: 1px solid #ccc;
        border-radius: 4px;
      }
  
      .searchbox button {
        padding: 8px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin-left: 5px;
      }
  
  </style>
</head>
<body>
   
   
  
  <div class="header-services">
    <div class="user2profile">
      <h4>John is Active now</h4>
    </div>
  
    <div class="notifications">
<p>notify</p>
  </div>
  
    <div class="contact">
      <p>+user1</p>
    </div>
  
    <div class="searchbox">
      <input type="search" placeholder="Search...">
      <button>Search</button>
    </div>
  </div>
         <div class="chat-container">
<form action="chatblog" method="POST">
   
  <!-- Message container for User 1 -->
  <div class="message-container">
    <div class="message user1">
      <p>User 1: Hi there!</p>
    </div>

    <!-- User 1 responds -->
    <div class="message user1">
      <p>User 1: I'm good, thanks! How about you?</p>
    </div>
  </div>

  <!-- Message container for User 2 -->
  <div class="message-container">
    <div class="message user2">
      <p>User 2: Hello! How are you?</p>
    </div>

    <!-- User 2 responds -->
    <div class="message user2">
      <p>User 2: I'm doing well too. Any exciting plans for the day?</p>
    </div>
  </div>

  <!-- Continue the conversation with additional messages -->

</div>

<!-- Text area for writing another message -->
<div class="messagebox">
<textarea class="message-input" placeholder="Type your message here..."></textarea><br>

<!-- Send button -->
<button class="send-button">Send</button>
</div>
</form>
</body>
</html>
