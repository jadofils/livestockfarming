<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


    <script>
        function openUpdatePopup(id) {
            var popup = window.open("retrievetoupdate.jsp?id=" + id, "_blank", "width=400, height=400");
        }
    </script>
</head>
<body>
    <h2>List of Registered Farmers</h2>
    <% 
        String url = "jdbc:mysql://localhost:3306/liverstockfarming";
        String user = "root";
        String pass = "";
        String farmer = (String) session.getAttribute("userondashboard");
// we set where from user
        String verify = "SELECT * FROM informations WHERE AnimalId=?";

        try (Connection conn = DriverManager.getConnection(url, user, pass);
             PreparedStatement pst = conn.prepareStatement(verify)) {

            pst.setString(1, farmer);
            try (ResultSet res = pst.executeQuery()) {
    %>
        <%
            while (res.next()) {
            

                int id = res.getInt("AnimalId");
                String food = res.getString("AnimalFood");
                String qty = res.getString("AnimalQuantity");
                String disease = res.getString("AnimalDisease");
             session.setAttribute("animalfood", food);
            session.setAttribute("animalqty", qty);
            session.setAttribute("animaldisease", disease);


        %>
      
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
