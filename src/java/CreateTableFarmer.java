

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class CreateTableFarmer {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/ liverstockfarming";
        String username = "root";
        String password = "";

        try {
            // Register JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            Connection conn = DriverManager.getConnection(url, username, password);

            // Create a statement
            Statement stmt = conn.createStatement();

            // SQL query to create the "Farmer" table
            String createTableSQL = "CREATE TABLE IF NOT EXISTS Farmer (" +
                    "Names VARCHAR(255), " +
                    "Username VARCHAR(255), " +
                    "Sex VARCHAR(10), " +
                    "Province VARCHAR(50), " +
                    "UserImage BLOB, " + // Use BLOB for image, adjust data type as needed
                    "Password VARCHAR(255)" +
                    ")";
           
            
  String animal = "CREATE TABLE IF NOT EXISTS ANIMALS (" +
                    "AnimalId VARCHAR(55), " +
                    "AnimalOwner VARCHAR(255), " +
                    "AnimalColor VARCHAR(10), " +
                    "AnimalSex VARCHAR(50), " +
                    "AnimalAge VARCHAR(50), " +
                   "Category VARCHAR(50), " +

                    "AnimalOwnerId VARCHAR(55)" +
                    ")";
             
  String information = "CREATE TABLE IF NOT EXISTS INFORMATIONS (" +
                    "AnimalId VARCHAR(55), " +
                    "AnimalFood VARCHAR(255), " +
                    "AnimalQuantity VARCHAR(50), " +
                    "AnimalDisease VARCHAR(50) " +
                  
                    ")";
            // Execute the query
                        stmt.executeUpdate(information);

            stmt.executeUpdate(createTableSQL);

            // Close resources
            stmt.close();
            conn.close();

            System.out.println("Table 'information' created successfully!");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
