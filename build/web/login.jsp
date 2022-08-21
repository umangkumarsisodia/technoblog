<%-- 
    Document   : login
    Created on : 21-Aug-2022, 10:36:34 pm
    Author     : Umang Kumar Sisodia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechnoBlog-LogIn</title>
    </head>
    <body>
        <h1>Login</h1>
        <form action="LoginServlet" method="POST">
            <input type="text"name="username" id="username" placeholder="Username" required="true"/>
            <input type="password" name="password" id="password" placeholder="Password" required="true"/>
            <input type="submit" value="SignIn"/>
        </form>
    </body>
</html>
