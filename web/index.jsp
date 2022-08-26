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
        <button onclick="loginHandler()">Sign In</button>
        <button onclick="signUpHandler()">Sign Up</button> 
    </body>
    <script src="./JS/app.js"></script>
</html>
