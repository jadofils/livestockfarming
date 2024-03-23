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

    <form action="animal.jsp" Method="POST" >
        <div class="header">
            <h3>Domestic Animals Registration Form.</h>
        </div>
        <label for="animal">Enter Animal Owner:</label>
<input type="text" name="animalowner" id="animal" class="animal">
<label for="animal_category">Choose Your animal Category:</label>
<select id="animal_category" name="category">
        <option value="Large Modern Animal">Large Modern Animal</option>
        <option value="Short Modern Animal">Short Modern Animal</option>
        <option value="Large Traditional Animal">Large Traditional Animal</option>
        <option value="Short Modern Animal">Short Modern Animal</option>
        <option value="Poutry"> Pautry</option>
        <option value="Rabits">Rabits</option>
        <option value="Other">Other</option>

</select>
<label for="animal">Enter Farmer's Animal Id Number:</label>
<input type="text" name="id" id="animal" class="animal">
<label for="animal">Enter Farmer's Animal Color:</label>
<input type="text" name="color" id="animal" class="animal">
<label for="age">Enter Farmer's Animal Age:</label>
<input type="number" name="age" id="age" class="age">
<label for="age">Enter Farmer's Animal Sex:</label>
<select id="sex" name="sex">
    <option value="Female"> Female</option>
    <option value="Male">Male</option>
    <option value="Other">Other</option>
    
</select>
<label for="age">Enter Farmer's Animal Status:</label>

<select id="animal_status" name="status">
    <option value="Realing As  a Farmer">Realing As  a Farmer</option>
    <option value="Realing For Other">Realing For Other</option>
    <option value="For Selling">For Selling</option>
    <option value="For Boucherie(meets)">For Boucherie(meets)</option>
    <option value="For Breeding"> For Breeding</option>
</select>
    <label for="number">Enter Animal Owner Id Number.</label>
    <input type="number" id="number" name="number" class="number">

<div class="btnRegister">

    <input type="submit" value="Register">
</div>
Already have an account? <a href="login.jsp">Login here!</a>


    </form>
    <script src="js/index.js"></script>
</body>
</html>