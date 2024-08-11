<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>MovieTime-Login</title>
  <!-- <link rel="stylesheet" href="login.css"> -->
  <style>body{
    background-image: url("images/loginbackground.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    
}
form{
    margin-top: 30%;
    margin-left:30%;
}
#login{
   
    padding:40px 40px;
    -webkit-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
    -moz-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
    box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
}</style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-6">
            <form action="/validate" method="post" enctype="form-data" id="login">
                <div class="form-group text-center">
                    <b><h2 class="font-weight-bold"><b>User Login!!</b></h2></b>
                  </div>
                <div class="form-group">
                  <label for="email">Email:</label>
                  <input name="userEmail" type="email" class="form-control" id="email" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <input name="userPass" type="password" class="form-control" id="pwd" placeholder="Enter password">
                </div>
                <div class="checkbox">
                    <label style="color:black"><input type="checkbox"> Remember me</label>
                </div>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-success">Login</button> 
                </div>
                <div class="form-group text-dark" style="color:black">
                    <lable>Don't have account?</lable>
                    <a href="Registration.html" class="bg-primary"><b>Register here</b></a>
                </div>
              </form>
        </div>
    </div>
</div>

</body> 
</html>
