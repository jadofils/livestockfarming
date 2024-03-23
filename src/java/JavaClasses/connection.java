package JavaClasses;

import java.sql.*;
public class connection {
    public Connection getConnection(){
    Connection conn=null;
    String url="jdbc:mysql://localhost:3306/liverstockfarming";
    String user="root";
    String pass="";
        try {
            conn=DriverManager.getConnection(url,user,pass);
            if(conn!=null){
                System.out.println("Connected!");
            }else{
                System.out.println("Failed connection:");
            }
        } catch (SQLException ex) {
            System.out.println("Failed:"+ex);    
        }
return conn;    
    }
    public static void main(String[] args) {
        connection c=new connection();
        c.getConnection();
    }
            
}
