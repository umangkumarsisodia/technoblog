<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TechnoBlog-Sign Up</title>
    </head>
    <body>
        <h1>Sign Up</h1>
        <form action="RegisterServlet" method="POST">
            <input name="fname" id="fname" placeholder="First name"/>
            <input name="mname" id="mname" placeholder="Middle name"/>
            <input name="lname" id="lname" placeholder="Last name"/><br>
            <input type="text" name="email" id="email" placeholder="Email"/><br>
            <input type="text" name="username" id="username" placeholder="Username"/><br>
            <input type="radio" name="gender" id="male" value="male"/>
            <label>Male</label><br>
            <input type="radio" name="gender" id="female" value="female"/>
            <label>Female</label><br>
            <input type="radio" name="gender" id="others" value="others"/>
            <label>Others</label><br>
            <textarea name="about" rows="10" cols="20" placeholder="Tell about yourself..."></textarea><br>
            <input type="password" name="password" placeholder="Password"/>
            <input type="password" name="confirmPassword" placeholder="Confirm password"/>
            <input type="checkbox" name="check"/><label>I accept all terms and conditions.</label><br>
            <input type="Submit" value="Submit"/>
        </form>
    </body>
</html>
