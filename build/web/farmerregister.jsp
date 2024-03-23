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
    <form action=registerfarmer id="farmerform" Method="POST" >
        <div class="header">
            <P style="color: red;">   <%
                String msgsession=(String)session.getAttribute("msg");
                if(msgsession==null){
                out.print("");
                }
                else{
                out.print(msgsession);
                session.setMaxInactiveInterval(5);
                }
                %>
            </p>
            <h3>Farmer Rigistration Form.</h>
        </div>
<label for="names">Enter Your Names:</label>
<input type="text" name="fname" id="names" class="names" onkeyup="return validateName();">
<span id="errorname"></span>
<label for="username">Enter Your Username</label>
<input type="text" name="username" id="username" class="username" onkeyup="validateUserName();">
<span id="erroruser"></span>

<label for="sex">Sex:</label>
<select id="sex" name="sex">
        <option value="male">Male</option>
  <option value="famale">Famale</option>
  <option value="other">Other</option>
</select>

<label for="province">province:</label>
<select id="province" name="province">
        <option value="Northern Province">Northern Province</option>
  <option value="Western Province">Western Province </option>
  <option value="Eastern Province">Eastern Province </option>
  <option value="kigali city">kigali city</option>
  <option value="Sauthern Privince">Sauthern Privince</option>

</select>
   <label for="pass1">Create  Your Password</label>
<input type="password" name="pass1" id="pass1" class="pass1" onkeyup="validatePass1();">
<span id="errorpass"></span>

<label for="pass2">Confirm  Your Password</label>
<input type="password" name="pass2" id="pass2" class="pass2"onkeyup="validatePass2();" >
<span id="errorpass2"></span>

<div class="btnRegister">

    <input type="submit" value="Register">
</div>
Already have an account? <a href="login.jsp">Login here!</a>


    </form>
    <script src="js/farmer.js"></script>
</body>
</html>