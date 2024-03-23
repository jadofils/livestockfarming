<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    String url = "jdbc:mysql://localhost:3306/liverstockfarming";
    String user = "root";
    String pass = "";
    String id = request.getParameter("id");

    String deleteQuery = "DELETE FROM farmer WHERE Id=?";

    try (Connection conn = DriverManager.getConnection(url, user, pass);
         PreparedStatement deletePst = conn.prepareStatement(deleteQuery)) {

        deletePst.setString(1, id);

        int rowsDeleted = deletePst.executeUpdate();

        if (rowsDeleted > 0) {
%>
            <html>
            <head>
                <meta http-equiv="refresh" content="3;url=dashboard.jsp">
            </head>
            <body>
                <h2>Data Deleted Successfully!</h2>
                <p>Redirecting to the dashboard...</p>
            </body>
            </html>
<%
        } else {
%>
            <h2>Failed to Delete Data.</h2>
<%
        }

    } catch (SQLException ex) {
        out.print("Failed to connect to the database: " + ex.getMessage());
    }
%>
