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
    
    //checking if user already exists
    public boolean checkingUserExistence(String username) throws SQLException {
        boolean isExist = false;
        
        String query = "SELECT * FROM user WHERE username=?";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setString(1, username);
        
        ResultSet rs = pstmt.executeQuery();
        
        if(rs.next()) {
            isExist= true;
        }
        
        return isExist;
    }
    
    //getting user info
    public user getUserByUsername(String username, String password) throws SQLException {
        user u = null;
        
        System.out.println(username);
        System.out.println(password);
        
        String query = "SELECT * FROM user WHERE username=? and password=?";
        PreparedStatement pstmt = this.con.prepareStatement(query);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        
        ResultSet rs = pstmt.executeQuery();
        
        if(rs.next()) {
            u = new user();
            
            int id = rs.getInt("id");
            u.setId(id);
            
            String fname = rs.getString("firstName");
            u.setFirstName(fname);
            
            String mname = rs.getString("middleName");
            u.setMiddleName(mname);
            
            String lname = rs.getString("lastName");
            u.setLastName(lname);
            
            String email = rs.getString("email");
            u.setEmail(email);
            
            String uname = rs.getString("username");
            u.setUsername(uname);
            
            String gender = rs.getString("gender");
            u.setGender(gender);
            
            String about = rs.getString("about");
            u.setAbout(about);
            
            Timestamp createdAt = rs.getTimestamp("createdAt");
            u.setDateTime(createdAt);
            
        }
        return u;
    }
}
