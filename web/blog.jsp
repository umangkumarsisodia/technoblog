
<%@page import="com.techno.blog.helper.ConnectionProvide"%>
<%@page import="com.techno.blog.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.techno.blog.dao.CategoriesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create blog</h1>
        <form action="PostBlog" method="POST">
            <input type="text" placeholder="Title" name="title" id="title"/>
             <select name="category" id="category">
                <option selected>Select category</option>
                    <%
                        CategoriesDao categoryD = new CategoriesDao(ConnectionProvide.getConnection());
                    
                        ArrayList<Category>list = categoryD.getAllCategories();
                    
                        for(Category ct : list) 
                        {
                    %>
                        <option value=<%= ct.getName()%>><%= ct.getName()%></option>
                        <%
                        }
                        %>
            </select>
            <textarea rows="20" cols="30" name="description" placeholder="Description"></textarea>
            <input type="submit" value="Post"/>
        </form>       
    </body>
</html>
