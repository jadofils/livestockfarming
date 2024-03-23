<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

    
    <%
           String id = request.getParameter("id");
               String qty = request.getParameter("qty");
                String food = request.getParameter("food");
                String disease = request.getParameter("disease");
              
        
        
        String url = "jdbc:mysql://localhost:3306/liverstockfarming";
        String user = "root";
        String pass = "";
               
        String insert = "INSERT INTO informations(AnimalId,AnimalFood,AnimalQuantity,AnimalDisease) VALUES(?,?,?,?)";
        
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet res = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            pst = conn.prepareStatement(insert);
            pst.setString(1,id );
            pst.setString(2,food );
            pst.setString(3,qty );
            pst.setString(4,disease );
           int result = pst.executeUpdate();
  
            if (result>0) {
            out.print("Animal New Data Have Been Added!!");
       
            }else{
            out.print("Failed to insert!!");

}
        } catch (ClassNotFoundException | SQLException ex) {
            // Handle the exception in a user-friendly way, for example:
            out.print("Failed to insert for: " + ex.getMessage());
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
   
