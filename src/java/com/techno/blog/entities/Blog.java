package com.techno.blog.entities;

import java.sql.Timestamp;

public class Blog {
    private int pid;
    private int userId;
    private String title;
    private String content;
    private Timestamp createdAt;
    private String category;

    public Blog(int pid, int userId, String title, String content, Timestamp createdAt, String category) {
        this.pid = pid;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.createdAt = createdAt;
        this.category = category;
    }
  
    public Blog(int userId, String title, String category, String content) {
        System.out.println("Calling constructor");
        this.userId = userId;
        this.title = title;
        this.category = category;
        this.content = content;
    }

    
    
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }
    
    public String getCategory() {
        return category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
}
