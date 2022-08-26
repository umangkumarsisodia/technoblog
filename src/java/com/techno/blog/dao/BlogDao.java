package com.techno.blog.dao;

import com.techno.blog.entities.Blog;
import java.sql.*;

public class BlogDao {
    private Connection con;

    public BlogDao(Connection con) throws SQLException {
        this.con = con;
    }
    
    public boolean postBlog(Blog blog) throws SQLException {
        System.out.println("Saving blogs");
        boolean isExecute = false;
        String query = "INSERT INTO Blogs(userId, title, cat, content) VALUES(?,?,?,?);";
        
        PreparedStatement pstmt = this.con.prepareStatement(query);
       
        pstmt.setInt(1, blog.getUserId());
        pstmt.setString(2, blog.getTitle());
        pstmt.setString(3, blog.getCategory());
        pstmt.setString(4, blog.getContent());
        
        pstmt.executeUpdate();
        isExecute = true;
        
        
        return isExecute;
    }
}
