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
   
    <form action="informations.jsp" Method="POST" >
        <div class="header">
            <h3>Domestic Animals Registration Form.</h>
        </div>

        
<label for="animal">Enter Farmer's Animal Id Number:</label>
<input type="text" name="id" id="animal" class="animal">
<label for="qty">Enter Farmer's Animal Milk Quantity.</label>
<input type="qty" name="qty" id="qty" class="qty">
<label for="food">Enter Farmer's Animal Food Can Consume.</label>
<input type="food" name="food" id="food" class="food">
<label for="disease">Enter Farmer's Animal Addicted Diseases.</label>
<input type="disease" name="disease" id="disease" class="disease">
<div class="btnRegister">

    <input type="submit" value="Register">
</div>
Already have an account? <a href="login.jsp">Login here!</a>


    </form>
    <script src="js/index.js"></script>
</body>
</html>