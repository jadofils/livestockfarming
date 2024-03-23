<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/liverstockFarming/css/index.css">
    <style>
        /* Add your CSS styles here */
        /* Styles for the popup */
        #popup {
            display: none;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: #fff;
            padding: 20px;
            border: 1px solid #3498db;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            z-index: 999;
            text-align: center;
        }

        #popupText {
            color: green;
            font-size: 18px;
            margin-bottom: 15px;
        }

        #btnClose {
            padding: 10px;
            background-color: red;
            color: #fff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>

<%
    String url = "jdbc:mysql://localhost:3306/liverstockfarming";
    String user = "root";
    String pass = "";
    String Idno = request.getParameter("id");
    session.setAttribute("usertoupdate", Idno);
    String selectQuery = "SELECT * FROM farmer WHERE Id=?";

    try (Connection conn = DriverManager.getConnection(url, user, pass);
         PreparedStatement pst = conn.prepareStatement(selectQuery)) {

        pst.setString(1, Idno);

        try (ResultSet res = pst.executeQuery()) {
            if (res.next()) {
                // Retrieve data from the result set
                String name = res.getString("Names");
                String username = res.getString("Username");
                String sex = res.getString("Sex");
                String province = res.getString("Province");
                String date = res.getString("Date");
                String password = res.getString("Password");
%>
<form action="updation.jsp" Method="post">
    <h2>Update Farmer Registration</h2>
     <label for="names">Enter Your Names:</label>
        <input type="text" name="name" value="<%= name %>" id="names" class="names" onkeyup="return validateName();">
        <span id="errorname"></span>

        <label for="username">Enter Your Username</label>
        <input type="text" name="username" value="<%= username %>" id="username" class="username" onkeyup="validateUserName();">
        <span id="erroruser"></span>

        <label for="sex">Sex:</label>
        <select id="sex" name="sex">
            <option value="male" <%= sex.equals("male") ? "selected" : "" %>>Male</option>
            <option value="female" <%= sex.equals("female") ? "selected" : "" %>>Female</option>
            <option value="other" <%= sex.equals("other") ? "selected" : "" %>>Other</option>
        </select>

        <label for="province">Province:</label>
        <select id="province" name="province">
 <option value="male" <%= province.equals("male") ? "selected" : "" %>>Male</option>
            <option value="female" <%= province.equals("Northern Province") ? "selected" : "" %>>Northern Province</option>
            <option value="other" <%= province.equals("Western Province") ? "selected" : "" %>>Western Province</option>     
            <option value="other" <%= province.equals("Eastern Province") ? "selected" : "" %>>Eastern Province</option>     
            <option value="other" <%= province.equals("kigali city") ? "selected" : "" %>>kigali city</option>     
            <option value="other" <%= province.equals("Sauthern Privince") ? "selected" : "" %>>Sauthern Privince</option>     
        
        </select>
        <input type="submit" value="Update">
    </div>
    <a href="dashboard.jsp">Dashboard!!</a>

</form>

<%-- Popup Section --%>
<div id="popup">
    <p id="popupText"></p>
    <button id="btnClose" onclick="hidePopup()">OK</button>
</div>



<%
            } else {
%>
<p style="color: red;">No user found with the given Id.</p>
<%
            }
        } catch (SQLException ex) {
            out.print("Failed to retrieve data: " + ex.getMessage());
        }
    } catch (SQLException ex) {
        out.print("Failed to connect to the database: " + ex.getMessage());
    }
%>

</body>
</html>
