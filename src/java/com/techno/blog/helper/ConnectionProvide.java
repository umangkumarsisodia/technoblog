package com.techno.blog.helper;

import java.sql.*;

public class ConnectionProvide {
    private static Connection con;
    
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
            if(con == null) {
                //loading driver class
                Class.forName("com.mysql.cj.jdbc.Driver");
            
                //creating connection with databse
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/TechnoBlog", "root", "1234");   
            }
        return con;
    }
}
