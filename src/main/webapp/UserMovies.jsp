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
    #sp{
        margin-top: 0;
        margin-bottom: 0;
        text-align:center;
    }
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
        margin-left:6vw;
        margin-top:10vh;
        padding: 2vh 2vw;
        
        
    }
    #cardsize{
        width:10vw;
        height:22vh;
    }
    #poster{
        height:18vh;
    }
    #bk{
        margin-left:40%;
        margin-top:5px;
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
                          <a class="nav-link text-white-50" href="#">My Tickets</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <a href="/user"><button class="btn btn-danger" type="submit">Log-out</button></a>
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
                 <form action="/book" method="post" id="select_form">
                    <div class="form-group">
                        <lable><b>Enter Movie ID</b></lable><br>
                        <input class="form control" type="number" name="movieId" placeholder="Movie id" min="1" required>
                        <br>
                        <button type="submit" class="btn btn-danger" id="bk">Book</button>
                    </div>
                </form>
            </div>
            
            
            <div id="maincontent">
            <div class="row row-cols-1 row-cols-sm-5 g-4">
            <c:forEach items="${movie}" var="movie">
                  <div class="col">
                      <div class="card">
                        <img id="poster" src="movieposter.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title">${movie.movieName}</h5>
                          <p class="card-text">
                          <h6 id="sp">Movie Id : ${movie.movieId}</h6>
                          <h6 id="sp">Language : ${movie.language}</h6>
                          <h6 id="sp">Theatre : ${movie.thrName}</h6>
                          <h6 id="sp">State : ${movie.state}</h6>
                          <h6 id="sp">City : ${movie.city}</h6>
                          <h6 id="sp">ShowNo : ${movie.showNo}</h6>
                          <h6 id="sp">Time : ${movie.startTime}</h6>
                          <h6 id="sp">Date : ${movie.showDate}</h6>
        
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