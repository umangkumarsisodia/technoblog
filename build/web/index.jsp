<%-- 
    Document   : index
    Created on : 19-Aug-2022, 11:11:46 am
    Author     : Umang Kumar Sisodia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<jsp:directive.page import = "com.techno.blog.helper.ConnectionProvide"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechnoBlog</title>
    </head>
    <body>
        <h1>TechnoBlog</h1>
        <%@include file="signup.jsp" %>
        <%@include file="login.jsp" %>
    </body>
</html>
