<%@ page contentType="text/html;charset=UTF-8" %>
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
    String id = request.getParameter("id");

    String selectQuery = "SELECT * FROM farmer WHERE Id=?";
    String deleteQuery = "DELETE FROM farmer WHERE Id=?";

    try (Connection conn = DriverManager.getConnection(url, user, pass);
         PreparedStatement selectPst = conn.prepareStatement(selectQuery);
         PreparedStatement deletePst = conn.prepareStatement(deleteQuery)) {

        selectPst.setString(1, id);
        try (ResultSet res = selectPst.executeQuery()) {
            if (res.next()) {
%>
                <h2>Delete Farmer Confirmation</h2>
                <p>Are you sure you want to delete the following farmer?</p>
                <p><strong>ID:</strong> <%= res.getString("Id") %></p>
                <p><strong>Name:</strong> <%= res.getString("Names") %></p>
                <p><strong>Username:</strong> <%= res.getString("Username") %></p>
                <p><strong>Sex:</strong> <%= res.getString("Sex") %></p>
                <p><strong>Province:</strong> <%= res.getString("Province") %></p>
                <p><strong>Date:</strong> <%= res.getString("Date") %></p>

                <form action="delete.jsp" method="post">
                    <input type="hidden" name="id" value="<%= id %>">
                    <input type="submit" value="Delete" onclick="return confirm('Are you sure?')">
                </form>

<%
            } else {
%>
                <p style="color: red;">No user found with the given ID.</p>
<%
            }
        } catch (SQLException ex) {
            out.print("Failed to retrieve data: " + ex.getMessage());
        }

    } catch (SQLException ex) {
        out.print("Failed to connect to the database: " + ex.getMessage());
    }
%>

<%-- Popup Section --%>
<div id="popup">
    <p id="popupText"></p>
    <button id="btnClose" onclick="hidePopup()">OK</button>
</div>

<script>
    function showPopup(message) {
        var popup = document.getElementById('popup');
        var popupText = document.getElementById('popupText');

        // Update the popup text
        popupText.innerHTML = message;

        // Show the popup
        popup.style.display = 'block';
    }

    function hidePopup() {
        var popup = document.getElementById('popup');
        // Hide the popup
        popup.style.display = 'none';
    }
</script>

</body>
</html>
