package com.techno.blog.dao;

import com.techno.blog.entities.Category;
import java.sql.*;
import java.util.ArrayList;

public class CategoriesDao {
     private Connection con;

    public CategoriesDao(Connection con) throws SQLException {
        this.con = con;
    }
    
    //saving categories
    public boolean saveCategories(Category category) throws SQLException {
        boolean isExecute = false;
        String query = "INSERT INTO Categories(name) VALUES(?);";
        
        PreparedStatement pstmt = this.con.prepareStatement(query);
        
        pstmt.setString(1, category.getName());
        
        pstmt.executeUpdate();
        isExecute = true;
        
        return isExecute;
    }
    
    public ArrayList<Category> getAllCategories() throws SQLException {
        System.out.print("insend");
        ArrayList<Category>categories = new ArrayList<>();
        String query = "SELECT * FROM Categories";
        
        Statement st = this.con.createStatement();
        
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()) {
            int cid = rs.getInt("cid");
            String name = rs.getString("name");
            
            Category c = new Category(cid, name);
            
            categories.add(c);
        }
        return categories;
    }
}
