<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Portfolio</title>
    <link rel="stylesheet" href="/liverstockFarming/css/index.css">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            overflow-x: hidden;
        }

        #top-navigation {
            background-color: #333;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
  #top-navigation a {
            color: #fff;
            padding: 10px;
            text-align: center;
            text-decoration: none;
        }
        #sidebar {
            width: 100px;
            height: auto;
            background-color: #444;
            transition: all 0.3s;
        }

        #sidebar:hover {
            width: 200px;
        }

        #sidebar a {
            color: #fff;
            text-decoration: none;
            display: block;
            padding: 10px;
            text-align: center;
        }

        #content {
 margin-top: -20%;
 width: 85%;
float: right;
padding: 20px;
 height: auto;
display: block;            
            
        }
        
    footer {
      background-color: #444;
      color: #fff;
      margin-top:100px; 
      padding: 20px;
      width: 100%;
      display: flex;
      justify-content: space-between;
    }

    .card {
      background-color: #555;
      flex: 1;
      padding: 10px;
      margin: 0 10px;
    }

        @media only screen and (max-width: 768px) {
            #sidebar {
                width: 0;
            }

            #content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <div id="top-navigation">
        <h1>Welcome:  <%
            String user=(String)session.getAttribute("user");
            
            if(user==null){
            out.print("");
            }
            else{
                     %>    <span style="color: green;text-transform: capitalize;">
<%
            out.print(user);
           String logedin=(String)session.getAttribute("fromdashboard");

            session.setAttribute("userondashboard", logedin);
            %>
            </span>
            <%
            }
            %> To Our Dashboard Portfolio For: </h1>
        <!-- Add your navigation links here -->
        <div class="header">
            <h2>AT HOME ONLINE Guidance</H2>
        </div>
    <nav class="importantLinks">
        <div class="dropdown">
            <button class="dropbtn">Home</button>
            <div class="dropdown-content">
                <a href="#">Forget Password</a>
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
        <a href="/LiverstockFarming/chat/inbax.jsp">Inbax</a>
                <a href="/LiverstockFarming/chat/outbox.jsp">Outbox</a>
                <a href="/LiverstockFarming/chat/sent.jsp">Sent</a>
                <a href="/LiverstockFarming/chat/groups.jsp">Groups</a>
                <a href="/LiverstockFarming/chat/friends.jsp">Add Friends</a>
                <a href="/LiverstockFarming/chat/stories.jsp">Stories</a>
                <a href="/LiverstockFarming/chat/status.jsp">Status</a>
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
    </div>
        <div>
    <div id="sidebar">
        <a href="#">Change Profile</a>
        <a href="#" onclick="displayContent()">View All Farmer</a>
        <a href="#"onclick="searchData()">Search here</a>
                <a href="farmerregister.jsp">register</a>

        <a href="#"onclick="logoutData()"> Log Out</a>

        
   
 </div>

    <div id="content">
        <!-- Your content goes here -->

        <div id="dynamicContent"> </div> 
         <div id="dynamicContentOne"> </div> 
         <div id="logoutContent"></div>                 
         <div id="loadSearching"></div>                 


    </div>
        </div>
<footer>
      <div class="card">
        <h3>Niyigaba Theophile</h3>
        <p>Hell there as you see, my name is 
            niyigaba theophile, i am a front end designer
            developer with html,css,tailwind, js and reactjs.
      </p>
      </div>

      <div class="card">
        <h3>Jado Fils Salim@067</h3>
        <p>hello there, To me i have not words i can use 
        to express myself, but i am full stack developer
        and a pionia of this project idea for domestic or livestock
        farming.</p>
        <p>For sure it is a great job to choose the best technology 
        for developing this animal portal.
        On my behalf we'd likely to use js for dynamic events,Java and jsp technology 
        for building the very strong platform with its this programming lanuages.</p>
        <p>Additionally we will add new technology on backend side also frontend as well
        as possible like react native,java spring boot, python for data realtime analysis with jungle.</p>
      </div>

      <div class="card">
        <h3>Ukwitegetse Valens</h3>
        <p>hello there, My name is Valens,iam software deloper 
      with different programming language, so far i am programmer for and problem solutioner..</p>
      </div>
    </footer>

  </div>
      
 <!-- Add this script block at the end of your HTML body -->
<!-- Add this script block at the end of your HTML body -->
<script>
  function displayContent() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState === 4 && this.status === 200) {
        document.getElementById("dynamicContent").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "/liverstockFarming/displayfarmer.jsp", true);
    xhttp.send();
  }


  function reloadDashboard() {
    setInterval(function() {
      location.reload();
    }, 5000);
  }

  document.getElementById("sidebar").querySelector("a[href='#']").onclick = function() {
    reloadDashboard(); // Reload the dashboard every 5 seconds
    displayContent2(); // Display content first
  };
 function logoutData() {
    var xttps = new XMLHttpRequest();
    xttps.onreadystatechange = function() {
      if (this.readyState === 4 && this.status === 200) {
        document.getElementById("logoutContent").innerHTML = this.responseText;
      }
    };
    xttps.open("GET", "/liverstockFarming/logout.jsp", true);
    xttps.send();
  }
  function searchData() {
    var xttps = new XMLHttpRequest();
    xttps.onreadystatechange = function() {
      if (this.readyState === 4 && this.status === 200) {
        document.getElementById("loadSearching").innerHTML = this.responseText;
      }
    };
    xttps.open("GET", "/liverstockFarming/searching.jsp", true);
    xttps.send();
  }
</script>

</body>
</html>
