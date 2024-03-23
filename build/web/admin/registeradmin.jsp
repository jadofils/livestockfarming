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
<nav class="importantLinks">
    <div class="dropdown">
        <button class="dropbtn">Home</button>
        <div class="dropdown-content">
            <a href="#">Register As Admin </a>
            <a href="#">Login As Admin</a>
            <a href="#">Register As Former</a>
            <a href="#">Login As Farmer</a>
            <a href="#">Exit</a>
        </div>
    </div>
<div class="dropdown">
    <button class="dropbtn"> Informations</button>
    <div class="dropdown-content">
        <a href="#">About Breeding </a>
        <a href="#">Food&Feeding</a>
        <a href="#">Diseases&Disasters</a>
        <a href="#">Status</a>
    </div>
</div>
<div class="dropdown">
    <button class="dropbtn">Statistics</button>
    <div class="dropdown-content">
        <a href="#">Breeding</a>
        <a href="#">Meats</a>
        <a href="#">Sold animals</a>
        <a href="#">Bought Animals</a>
        <a href="#">Temporaly Collateral</a>
        <a href="#">Deaths</a>

    </div>
</div>
<div class="dropdown">
    <button class="dropbtn">Animal Hubs</button>
    <div class="dropdown-content">
        <a href="#">Animal Hospitals</a>
        <a href="#">Animals Food</a>
        <a href="#">Vaccinations</a>
        <a href="#">Animal Matting</a>
      </div>
</div>
<div class="dropdown">
    <button class="dropbtn">Announcement</button>
    <div class="dropdown-content">
        <a href="#">Regards Farmers</a>
        <a href="#">Regards Veterinaries</a>
        <a href="#">Regards Animal mates</a>
        <a href="#">Hubs and vaccination</a>
      </div>

    
</div>
    <div class="dropdown">
        <button class="dropbtn">Market Place</button>
        <div class="dropdown-content">
            <a href="#">Sell</a>
            <a href="#">Buy</a>
            <a href="#">Temporaly Realing </a>
            <a href="#">Advertisement</a>
         </div>
</div>

<div class="dropdown">
<button class="dropbtn">Chat&Friends</button>
<div class="dropdown-content">
    <a href="#">Inbox</a>
            <a href="#">Outbox</a>
            <a href="#">Sent</a>
            <a href="#">Groups</a>
            <a href="#">Add Friends</a>
            <a href="#">Stories</a>
            <a href="#">Status</a>
             </div>
</div>
<div class="aboutUsDropdown">
    <a href="">About Us</a>

</div>
<div class="dropdown">
    <button class="dropbtn">help</button>
    <div class="dropdown-content">
      <a href="#">Facebook</a>
      <a href="#">Whatsapp</a>
      <a href="#">Message</a>
      <a href="#">Messaging here</a>
    </div>
  </div>

</nav>
    <form action="" method="POST" enctype="multipart/form-data">
        <div class="header">
            <h3>Admin Rigistration Form.</h>
        </div>
<label for="names">Enter Your Names:</label>
<input type="text" name="names" id="names" class="names">
<label for="username">Enter Your Username</label>
<input type="text" name="username" id="username" class="username">
<label for="userid">Enter Your userid</label>
<input type="text" name="userid" id="userid" class="userid">
<div class="userImage">
    <label for="userImage">Upload Your Profile Image.</label>
    <input type="file" id="userImage" name="userImage" class="userImage">
</div>
<label for="pass1">Create  Your Password</label>
<input type="password" name="pass1" id="pass1" class="pass1">
<label for="pass2">Confirm  Your Password</label>
<input type="password" name="pass2" id="pass2" class="pass2" >

<div class="btnRegister">

    <input type="submit" value="Register Admin">
</div>
Already have an account? <a href="loginAdmin.jsp">Login here!</a>


    </form>
    <script src="js/index.js"></script>
</body>
</html>