/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alma_
 */
public class Conexion {
        Connection con;
       public Conexion() {
            try {
                String dbDriver = "com.mysql.jdbc.Driver";
                String dbURL = "jdbc:mysql://localhost:3306/";
                // Database name to access
                String dbName = "minired";
                String dbUsername = "root";
                String dbPassword = "Fatima74";
                
                Class.forName(dbDriver).newInstance();
                con = DriverManager.getConnection(dbURL + dbName,
                        dbUsername,
                        dbPassword);
                System.out.println("se conecto");
            } catch (Exception e ) {
                System.err.println("Error"+e);
            }
        
        }
       public Connection getConnection(){
           return con;
       }

}
