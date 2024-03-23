<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            border: 2px solid black;
            padding: 8px;
            text-align: left;
        }

        tr:nth-child(odd):hover {
            background-color: #f5f5f5; /* Light gray background on hover for odd rows */
        }

        tr:nth-child(even):hover {
            background-color: #e0e0e0; /* Light gray background on hover for even rows */
        }
    </style>
</head>
<body>
    <h2>List of Registered Farmers</h2>
    <% 
        String url = "jdbc:mysql://localhost:3306/liverstockfarming";
        String user = "root";
        String pass = "";
        String farmer = (String) session.getAttribute("fromdashboard");

        String verify = "SELECT * FROM farmer";

        try (Connection conn = DriverManager.getConnection(url, user, pass);
             PreparedStatement pst = conn.prepareStatement(verify)) {

            try (ResultSet res = pst.executeQuery()) {
    %>
    <table border="2">
        <tr>
            <th>Farmer No</th>
            <th>Farmer Name</th>
            <th>Farmer Username</th>
            <th>Farmer Sex</th>
            <th>Farmer Address</th>
            <th>Farmer Credential</th>
            <th>Farmer Registered Date</th>
            <th>Actions</th>
        </tr>
   <%
while (res.next()) {
    int id = res.getInt("Id");
    String name = res.getString("Names");
    String username = res.getString("Username");
    String sex = res.getString("Sex");
    String province = res.getString("Province");
    String date = res.getString("Date");
    String password = res.getString("Password");
%>
<tr>
    <td><%= id %></td>
    <td><%= name %></td>
    <td><%= username %></td>
    <td><%= sex %></td>
    <td><%= province %></td>
    <td><%= password %></td>
    <td><%= date %></td>
    <td><a href="retrievetoupdate.jsp?id=<%= id %>">Update</a> | <a href="removeForm.jsp?id=<%= id %>">Remove</a></td>
    
</tr>
<%
    
}
if (!res.first()) {
%>
        <tr>
            <td colspan="8" style="color: red;">No User Exists!!</td>
        </tr>
        <%
            }
        } catch (SQLException ex) {
            out.print("");
        }
    } catch (SQLException ex) {
        out.print("Failed to connect to the database: " + ex.getMessage());
    }
    %>
    </table>
    <a href="farmerregister.jsp">Add User</a>
</body>
</html>
