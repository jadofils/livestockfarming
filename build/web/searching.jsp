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
            border-collapse: co7llapse;
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
    <h2>Here is One Searched Farmer.</h2>
    
    <form action="searchuser.jsp" method="post">
        <label for="search">Search by Username:</label>
        <input type="text" id="search" name="search">
        <input type="submit" value="Search">
    </form>
</body>
</html>
