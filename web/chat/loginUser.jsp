<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <title>Login To Chat</title>
</head>
<body>
    <div class="login-container">
        <form action="/chatblog" method="post">
            <h2>Login</h2>
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" >
             <label for="name">Name</label>
            <input type="text" id="name" name="name" >
             <label for="phone">Mobile Number</label>
            <input type="text" id="phone" name="phone" >
           <label for="msg">Message</label>
           <<textarea id="msg" name="msg" rows="5" cols="10"></textarea>
            <button type="submit">Login</button>
            <h2>Dont have an account?<a href="mainchat.jsp">register?</a></h2>

        </form>
    </div>
</body>
</html>
