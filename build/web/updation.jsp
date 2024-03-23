<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/liverstockfarming";
    String user = "root";
    String pass = "";

    String id = (String)session.getAttribute("usertoupdate");
    String name = request.getParameter("name");
    String username = request.getParameter("username");
    String sex = request.getParameter("sex");
    String province = request.getParameter("province");

    String updateQuery = "UPDATE farmer SET Names=?, Username=?, Sex=?, Province=? WHERE Id=?";

    try (Connection conn = DriverManager.getConnection(url, user, pass);
         PreparedStatement pst = conn.prepareStatement(updateQuery)) {

        pst.setString(1, name);
        pst.setString(2, username);
        pst.setString(3, sex);
        pst.setString(4, province);
        pst.setString(5, id);

        int rowsUpdated = pst.executeUpdate();

        if (rowsUpdated > 0) {
%>
  <html>
            <head>
                <meta http-equiv="refresh" content="3;url=dashboard.jsp">
            </head>
            <body>
                <h2>Data updated Successfully!</h2>
                <p>Redirecting to the dashboard...</p>
            </body>
            </html><%
        } else {
out.print(id);
%>
            <h2>Failed to Update Data.</h2>
<%
        }

    } catch (SQLException ex) {
        out.print("Failed to connect to the database: " + ex.getMessage());
    }
%>
