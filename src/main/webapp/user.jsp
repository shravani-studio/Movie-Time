<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieTime</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <style>
        #logo{
            width:8vw;
            height:6vh;
        }
        body{
            background-image: url("images/firstimage2.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        
        #btns{
            text-align: center;
            position: relative;
            top: 300px;
        }
        #userbtn{
            width:20vw;
            height:20vh;
            padding: auto auto;
            -webkit-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
            box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
        }
        
        
        
    </style>
</head>
<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container-fluid">
                <img class="navbar-brand" id="logo" src="images/logo.jpg" alt="MovieTime">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
            </div>
        </nav>
    </div>


    <div class="container" id="btns">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <a href="/adminlogin"><button id="userbtn" class="pos1" value="Admin"><b>Admin</b></button></a>
            </div>
            <div class="col-sm-3"></div>
            <div class="col-sm-2">
                <a href="/registration"><button id="userbtn" class="pos2" value="Customer"><b>Customer</b></button></a>
            </div>
        </div>
    </div>
        
</body>
</html>