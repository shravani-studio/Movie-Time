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
            background-image:linear-gradient(to right,rgb(40, 98, 198),rgb(18, 16, 153),rgb(134, 36, 170),rgb(196, 129, 224));
        }
        #adminf1{
            width:30vw;
            height:86vh;
            margin-left: 30vw;
            margin-top:5vh;
            margin-bottom:5vh;
            padding: 5vw 8vh;
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
                <form class="d-flex">
                    <a href="/user"><button class="btn btn-danger" type="button">Log-out</button></a>
                </form>
                
            </div>
        </nav>
    </div>


    <div class="container">
        <form action="/addmovie" method="post" enctype="multipart/form-data" id="adminf1" class="btn-light">
            <div class="d-grid gap-3">
                <input type="text" name="movieName" class="form-control" placeholder="Movie Name">
                <input type="text" name="language" class="form-control" placeholder="Language">
                <input type="text" name="thrName" class="form-control" placeholder="Theatre Name">
                <input type="text" name="state" class="form-control" placeholder="Theatre state">
                <input type="text" name="city" class="form-control" placeholder="Theatre City">
                <select name="showNo" class="form-control">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                </select>
                <input type="time" name="startTime" class="form-control" placeholder="Show start time">
                <input type="date" name="showDate" class="form-control" placeholder="Show Date">
                <input type="file" name="poster" class="form-control">
                <div class="text-center">
                    <button type="submit" class="btn btn-success">submit</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>