<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>MovieTime-Register</title>
</head>
<style>
    body{
        background-image: url("images/loginbackground.jpg");
        background-repeat: no-repeat;
        background-size: cover;
        
    }
    form{
        margin-top: 20%;
        margin-left:20%;
    }
    #reg{
      padding:40px 40px;
      -webkit-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
      -moz-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
      box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
    }
    #usrtype{
      background-color: transparent;
      color:gold;
      margin-left:40%;
    }
    
</style>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-6">
            <form action="/addUser" method="get" enctype="form-data" id="reg">
            
                <div class="form-group text-center">
                    <b><h2 class="font-weight-bold"><b>Registration!!</b></h2></b>
                  </div>
                <div class="form-group">
                    <label for="usr">Username:</label>
                    <input name="userName" type="text" class="form-control" id="usr" placeholder="Enter Username">
                  </div>
                <div class="form-group">
                  <label for="email">Email:</label>
                  <input name="userEmail" type="email" class="form-control" id="email" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <input name="userPass" type="password" class="form-control" id="pwd" placeholder="Enter password">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control"  placeholder="Re-enter password">
                  </div>
                  <div class="checkbox">
                    <label style="color:black"><input name="t&c" type="checkbox"> accept all terms and conditions</label>
                  </div>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-success">Register</button> 
                </div>
                <div class="form-group text-dark" style="color:aliceblue">
                    <lable for="login">Have already an account?</lable>
                    <a href="userLogin.jsp" class="bg-primary"><b>Login here</b></a>
                </div>
              </form>
        </div>
    </div>
</div>

</body> 
</html>
