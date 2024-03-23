<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

    
    <%
           String animalid = request.getParameter("id");
               String animalowner = request.getParameter("animalowner");
                String color = request.getParameter("color");
                String sex = request.getParameter("sex");
                String age = request.getParameter("age");
                String category = request.getParameter("category");
                String number = request.getParameter("number");
        
        
        
        String url = "jdbc:mysql://localhost:3306/liverstockfarming";
        String user = "root";
        String pass = "";
               
        String insert = "INSERT INTO ANIMALS(AnimalId,AnimalOwner,AnimalColor,AnimalSex,AnimalAge,Category,AnimalOwnerId) VALUES(?,?,?,?,?,?,?)";
        
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet res = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            pst = conn.prepareStatement(insert);
            pst.setString(1,animalid );
            pst.setString(2,animalowner );
            pst.setString(3,color );
            pst.setString(4,sex );
            pst.setString(5,age );
            pst.setString(6,category );
            pst.setString(7,number );

           int result = pst.executeUpdate();
  
            if (result>0) {
            out.print("Cow inserted successfully!!!");
       
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
   
