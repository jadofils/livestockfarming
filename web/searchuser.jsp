<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
    <%
        String url = "jdbc:mysql://localhost:3306/liverstockfarming";
        String user = "root";
        String pass = "";
        
        String searchUsername = request.getParameter("search");
        
        String verify = "SELECT * FROM farmer WHERE Username=?";
        
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet res = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            pst = conn.prepareStatement(verify);
            pst.setString(1, searchUsername);
            res = pst.executeQuery();
    %>

    <%
        if (res.next()) {
    %>
        <table border="2" cell-spacing="0" cell-padding="1">
            <tr>
                <th>Farmer No</th>
                <th>Farmer Name</th>
                <th>Farmer Username</th>
                <th>Farmer Sex</th>
                <th>Farmer Addess</th>
                <th>Farmer Credential</th>
                <th>Farmer RegisteredDate</th>
                <th>Actions</th>
            </tr>
            <%
                do {
                    int id = res.getInt("Id");
                    String name = res.getString("Names");
                    String username = res.getString("Username");
                    String sex = res.getString("Sex");
                    String province = res.getString("Province");
                    String date = res.getString("Date");
                    String password = res.getString("Password");
            %>
            <tr>
                <td><% out.print(id); %></td>
                <td><% out.print(name); %></td>
                <td><% out.print(username); %></td>
                <td><% out.print(sex); %></td>
                <td><% out.print(province); %></td>
                <td><% out.print(password); %></td>
                <td><% out.print(date); %></td>
                <td>
                <a href="retrievetoupdate.jsp?id=<%= id %>">Update</a> | 
                <a href="removeForm.jsp?id=<%= id %>">Remove</a>
            </td>
            </tr>
            <%
                } while (res.next());
            %>
            
    <%
        } else {
%>
                         <td>
          <p style="color:red">User not found in the table.</p>
                         </td>

        </table>

    <%
        }
    } catch (ClassNotFoundException | SQLException ex) {
        // Handle the exception in a user-friendly way, for example:
        out.print("Failed to retrieve data: " + ex.getMessage());
    } finally {
        // Close the database resources in a finally block
        try {
            if (res != null) res.close();
            if (pst != null) pst.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            out.print("Failed to close database resources: " + e.getMessage());
        }
    }
    %>
    