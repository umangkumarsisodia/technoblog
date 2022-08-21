<%-- 
    Document   : profile
    Created on : 21-Aug-2022, 11:31:08 pm
    Author     : Umang Kumar Sisodia
--%>

<%@page import="com.techno.blog.entities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page errorPage="error_page,jsp"%>

<%
    user u = (user)session.getAttribute("user");
    if(u == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechnoBlog-<%= u.getFirstName()%> <%= u.getMiddleName()%> <%= u.getLastName()%></title>
    </head>
    <body>
        <h1>
             Welcome <%= u.getFirstName()%> <%= u.getMiddleName()%> <%= u.getLastName()%>
        </h1> 
       <br>
    </body>
</html>
