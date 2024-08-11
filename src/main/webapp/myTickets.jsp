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
        #tb{
            width:80%;
            height:60%;
            margin-top: 3%;
            margin-left: 10%;
            text-align: center;
            padding: 10px 10px;
        }
        h1{

            text-align: center;
            margin-top:3%;
        }
        body{
        background-image: url("images/ticketimage.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }

    th,h1,td{
        color: aliceblue;
    }
    #fm{
        margin-left: 35%;
        margin-top:5px;
        background-color: whitesmoke;
        width:30%;
        height:20%;
    }
    h4,input{
       text-align: center;
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
                            <a class="nav-link text-white-50" aria-current="page" href="/Movies2">Movies</a>
                        </li>
                        <li>
                          <a class="nav-link text-white-50active text-white" href="#">My Tickets</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <a href="/user"><button class="btn btn-danger" type="submit">Log-out</button></a>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <h1>Your Tickets</h1>
    <table id="tb" class="table table-striped table-hover">
        <tr>
            <th>Booking Id</th>
            <th>seat Id</th>
            <th>Movie Name</th>
            <th>Theatre Name</th>
            <th>Date</th>
            <th>show No</th>
    
        </tr>
        <c:forEach items="${ticketList}" var="ticket">
           <tr>
                <td>${ticket.bookId}</td>
                <td>${ticket.seatId}</td>
                <td>${ticket.movie.movieName}</td>
                <td>${ticket.movie.thrName}</td>
                <td>${ticket.movie.showDate}</td>
                <td>${ticket.movie.showNo}</td>
               
           </tr>
        </c:forEach>
        

    </table>
    <form action="/cancel" method="post" id="fm">
        <div class="form-group text-center">
            <b><h4 class="font-weight-bold"><b>To cancel Booking..</b></h4></b>
          </div>
        <div class="form-group">
          <input name="bkid" type="number" class="form-control" placeholder="Enter Booking Id">
        </div>
        <div Style="text-align:center"><button type="submit" class="btn btn-success">Cancel</button></div>
    </form>    
</body>
</html>