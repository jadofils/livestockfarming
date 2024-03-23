<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/liverstockFarming/css/index.css">
</head>
<body>
    <div class="header">
        <h2>Rwanda Domestic Animal Data Management System.</h2>
    </div>

    <form action=loginfarmer Method="POST" >

            <div class="header">
              
                <h3>Farmer Login Form.</h>
                <p style="color: red"> <%
                 String msg=(String)session.getAttribute("msg");
                if(msg==null){
                out.print("");
                }
                else{
                out.print(msg);
                session.setMaxInactiveInterval(5);
                }
                %>
            </p>
            </div>
<label for="username">Enter Your Username</label>
<input type="text" name="username" id="username" class="username">

<label for="password">Enter Your Password</label>
<input type="password" name="password" id="password" class="password" >

<div class="btnRegister">

    <input type="submit" value="Login">
       <P style="color: red;">   <%
                String error=(String)session.getAttribute("loginerror");
                if(error==null){
                out.print("");
                }
                else{
                out.print(error);
                session.setMaxInactiveInterval(5);
                }
                %>
            </p>
</div>

have you <a href="farmerforgetpassword.jsp">Forget Your Password?</a> or 
if you are new here <a href="farmerregister.jsp">Register</a>
    </form>
    <script src="js/index.js"></script>
</body>
</html>