/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.techno.blog.dao;

import com.techno.blog.entities.user;
import java.sql.*;

public class Userdao {
    private Connection con;

    public Userdao(Connection con) throws SQLException {
        this.con = con;
    }
    
    //method for user registration
    
    public boolean saveUser(user us) throws SQLException {
         boolean isExecute = false;

                String query = "INSERT INTO user (firstName, middleName, lastName, email, username, gender, about, password) values(?,?,?,?,?,?,?,?);";
                PreparedStatement pstmt = this.con.prepareStatement(query);
                
                pstmt.setString(1, us.getFirstName());
                pstmt.setString(2, us.getMiddleName());
                pstmt.setString(3, us.getLastName());
                pstmt.setString(4, us.getEmail());
                pstmt.setString(5, us.getUsername());
                pstmt.setString(6, us.getGender());
                pstmt.setString(7, us.getAbout());
                pstmt.setString(8, us.getPassword());
                
                pstmt.executeUpdate();
                isExecute = true;
  
        return isExecute;
    }
}
