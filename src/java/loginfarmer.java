

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/loginfarmer"})
public class loginfarmer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session=request.getSession();
            String userName = request.getParameter("username");
        String pass1 = request.getParameter("password");
       if(userName==null||userName.isEmpty()){
    session.setAttribute("msg", "Username is required!!");

RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
rs.forward(request, response); 
}
else if(pass1==null||pass1.isEmpty()){
    session.setAttribute("msg", "Enter Your Password!!");

RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
rs.forward(request, response); 
}
else{
    
    
    
    String url="jdbc:mysql://localhost:3306/liverstockfarming";
    String user="root";
    String pass="";
         String verify="SELECT * FROM farmer WHERE userName=?";
           
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
String dbusername =res.getString("Username");
String name=res.getString("Names");
String dbpass=res.getString("Password");
        if(userName.equals(dbusername)&&pass1.equals(dbpass)){
    
session.setAttribute("user",name);
session.setAttribute("fromdashboard",dbusername);

session.setMaxInactiveInterval(50);

RequestDispatcher rs=request.getRequestDispatcher("dashboard.jsp");
rs.forward(request, response);

}else{
session.setAttribute("loginerror","Your Email Or Password Not Match!");
session.setMaxInactiveInterval(50);
RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
rs.forward(request, response);
}

   }
      else{
    session.setAttribute("loginerror","You look like Not Exist Or Error:404");
session.setMaxInactiveInterval(50);
RequestDispatcher rs=request.getRequestDispatcher("login.jsp");
rs.forward(request, response);   

} 
          
            } catch (SQLException ex) {
out.print("Failed to prepare:"+ex);     
            }
}
    
}

    }

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
