<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
        height:5vh;
    }
    #caro{
        width: 90vw;
        height:40vh;
    }
    #leftsidebar{
        width:30vw;
    }
    #maincontent{
        width:70vw;
        margin-top:10px;
    }
    #select_form{
        width:15vw;
        height:400px;
        margin-left:10vw;
        margin-top:10vh;
        padding: 2vh 4vw;
        
        
    }
    #cardsize{
        width:10vw;
        height:22vh;
    }
    #poster{
        width:10vw;
        height:18vh;
    }
</style>
</head>
<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-light bg-dark">
            <div class="container-fluid">
                <img id="logo" src="images/logo.jpg" alt="MovieTime">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-white" aria-current="page" href="#">Movies</a>
                        </li>
                        <li>
                          <a class="nav-link text-white-50" href="/mytickets">My Tickets</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <button class="btn btn-danger" type="submit">Log-out</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <div>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img id="caro" src="images/carousel4.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img id="caro" src="images/carousel5.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img id="caro" src="images/carousel2.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    </div>
    <div>
        <div class="row">
            <div id="leftsidebar">
                <form id="select_form">
                    <div class="form-group">
                        <lable for="lang">LANGUAGE</lable><br>
                        <input class="form control" type="checkbox" name="tel" value="telugu" id="lang">Telugu<br>
                        <input class="form control" type="checkbox" name="hin" value="hindi"id="lang">Hindi<br>
                        <input class="form control" type="checkbox" name="eng" value="english"id="lang">English<br>
                        <input class="form control" type="checkbox" name="tam" value="tamil"id="lang">Ramil<br>
                        <input class="form control" type="checkbox" name="kan" value="kannada"id="lang">Kannada<br>
                        <input class="form control" type="checkbox" name="mal" value="malayalam"id="lang">malayalam<br>
                    </div>
                    <br><br>
                    <!--<div class="form-group">
                        <lable for="exp">EXPERIENCE</lable><br>
                        <input class="form control" type="checkbox" name="2d" id="exp">2D<br>
                        <input class="form control" type="checkbox" name="3d" id="lang">3D<br>
                        <input class="form control" type="checkbox" name="4d" id="lang">4Dx<br>
                    </div>-->
                </form>
            </div>
            <div id="maincontent">
            <div class="row row-cols-1 row-cols-sm-5 g-4">
            <c:forEach items="${movie}" var="movie">
                  <div class="col">
                      <div class="card">
                        <img src="images/movieposter.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">${movie.movieName}</h5>
                          <p class="card-text">
                          <p>${movie.language}</P>
                          <p>${movie.thrName}</P>
                          <p>${movie.state}</P>
                          <p>${movie.city}</P>
                          <p>${movie.showNo}</P>
                          <p>${movie.startTime}</P>
                          <p>${movie.showDate}</P>
                          </p>
                          <a href="/${movie.movieId}"><button type="button" class="btn btn-danger">Book</button></a>
                        </div>
                      </div>
                    </div>
                  
              </c:forEach>
                  </div>
            </div>
        </div>
        
    </div>
</body>
</html>