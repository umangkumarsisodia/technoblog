package com.techno.blog.entities;

public class Category {
    private int cid;
    private String name;

    public Category() {
    }

    public Category(String name) {
        this.name = name;
    }
    
    public Category(int cid, String name) {
        this.cid = cid;
        this.name = name;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    
}
