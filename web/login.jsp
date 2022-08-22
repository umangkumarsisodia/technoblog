<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TechnoBlog-login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="login.css">
</head>
  <body class="bgclr">
      <%
Message msg = (Message)session.getAttribute("msg");
if(msg != null) {
%>
<h1 class=msg.cssClass style="color:red"><%=msg.getContent()%></h1>
<%
session.removeAttribute("msg");
}
%>
    <div class="container-fluid bgclr">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12"></div>
            <div class="col-md-4 col-sm-4 col-xs-12">
    <form class="form-container"> 
        <h3 class="mb-5 text-uppercase text-center">login</h3>
        <div class="form-group mb-3">
          <input type="text" class="form-control" name="username" id="username" placeholder="Username" required="true"/>
          <div id="usernameHelp" class="form-text">We'll never share your email with anyone else.</div>
        </div>
        <div class="form-group mb-3">
          <input type="password" class="form-control" name="password" id="password" placeholder="Password" required="true"/>
        </div>
        <div class="mb-3 form-check">
          <input type="checkbox" class="form-check-input" id="remember">
          <label class="form-check-label" for="remember">remember me</label>
        </div>
        <div class="d-grid gap-2">
         <button type="submit" value="SignIn" class="btn btn-success">Submit</button>
        </div>
      </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
      </div>
      <div class="col-md-4 col-sm-4 col-xs-12"></div>
    </div>
    </div>
</body>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
</html>