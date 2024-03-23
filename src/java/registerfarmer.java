

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
/**
 *
 * @author jeann
 */
@WebServlet(urlPatterns = {"/registerfarmer"})
public class registerfarmer extends HttpServlet {

    //varible for keeping sessions message
            String msg,empty;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session =request.getSession();

          String name= request.getParameter("fname");
        String userName = request.getParameter("username");
                String sex = request.getParameter("sex");
        String province = request.getParameter("province");
        String pass1 = request.getParameter("pass1");
                String pass2 = request.getParameter("pass2");
String file=request.getParameter("file");
if(name==null||name.isEmpty()){
   session.setAttribute("msg", "Your Name is required!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response); 
}else if(userName==null||userName.isEmpty()){
    session.setAttribute("msg", "Username is required!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response); 
}
else if(pass1==null||pass1.isEmpty()){
    session.setAttribute("msg", "Create Your Password!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response); 
}
else if(pass2==null||pass2.isEmpty()){
    session.setAttribute("msg", "Confirm Your Password!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response); 
}
else if(!pass1.equalsIgnoreCase(pass2)){
    session.setAttribute("msg", "Password not match Your Password!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response); 
}
else{
//connection
    String url="jdbc:mysql://localhost:3306/liverstockfarming";
    String user="root";
    String pass="";
         String verify="SELECT * FROM farmer WHERE userName=?";
String query="INSERT INTO farmer(Names,Username,Sex,Province,UserImage,Password) VALUES(?,?,?,?,?,?)";
           
            Connection conn;
try{            try {
    Class.forName("com.mysql.jdbc.Driver");
                } catch (ClassNotFoundException ex) {
out.print(ex);              
                }


            conn=DriverManager.getConnection(url,user,pass);
          PreparedStatement pst;
          
          pst=conn.prepareStatement(verify);
          pst.setString(1, userName);
          ResultSet res=pst.executeQuery();
          if(res.next()){
session.setAttribute("msg", "Your Email Is Already Exist!");
session.setMaxInactiveInterval(50);

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response);

        
        }
          else{


                pst=conn.prepareStatement(query);
                pst.setString(1, name);
                pst.setString(2, userName);
                pst.setString(3, sex);
                pst.setString(4, province);
                pst.setString(5, file);
                pst.setString(6, pass1);
                
                int result=pst.executeUpdate();
                if(result>0){
session.setAttribute("msg", "User Registered successfully!!!");

RequestDispatcher rs=request.getRequestDispatcher("farmerregister.jsp");
rs.forward(request, response);     
}
                else{
                    out.println("Failed to insert.Try again!");
                }
          }
            } catch (SQLException ex) {
out.print("Failed to prepare:"+ex);     
            }
}
     
        }}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
