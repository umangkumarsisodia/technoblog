package com.techno.blog.helper;

import java.sql.*;

public class ConnectionProvide {
    private static Connection con;
    
    public static Connection getConnection() {
        try{
            
            if(con == null) {
                //loading driver class
                Class.forName("com.mysql.jdbc.Driver");
            
                //creating connection with databse
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TechnoBlog", "root", "1234");   
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
