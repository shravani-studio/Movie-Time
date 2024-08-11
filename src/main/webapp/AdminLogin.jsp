<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>MovieTime</title>

  <link rel="stylesheet" href="css/login.css">
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-sm-2"></div>
        <div class="col-sm-6">
            <form id="login" action="/adminvalidate">
                <div class="form-group text-center">
                    <b><h2 class="font-weight-bold"><b>Admin Login!!</b></h2></b>
                  </div>
                <div class="form-group">
                  <label for="email">User Name:</label>
                  <input name="username" type="text" class="form-control" id="email" placeholder="Enter Username">
                </div>
                <div class="form-group">
                  <label for="pwd">Password:</label>
                  <input name="password" type="password" class="form-control" id="pwd" placeholder="Enter password">
                </div>
                <br>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-success">Login</button> 
                </div>
              </form>
        </div>
    </div>
</div>

</body> 
</html>

