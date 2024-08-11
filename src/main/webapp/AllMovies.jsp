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
            height:6vh;
        }
        
        #adminf1{
            width:30vw;
            height:30vh;
            margin-left: 30vw;
            margin-top:20vh;
            margin-bottom:5vh;
            padding: 5vw 8vh;
            -webkit-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
            -moz-box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
            box-shadow: -4px 8px 38px 0px rgba(0,0,0,0.75);
           
        }
        #mv {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #mv td, #mv th {
            border: 1px solid #ddd;
            padding: 8px;
        }
        #mv tr:nth-child(even){background-color: #f2f2f2;}
        #mv tr:nth-child(odd){background-color: #f2f2f297;}
        #mv tr:hover {background-color: #ddd;}
        #mv th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color: #7de479;
            color: white;
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
                    <a href="/adminhome"><button class="btn btn-danger" type="submit">Log-out</button></a>
                </form>
                
            </div>
        </nav>
    </div>

    <table id="mv">
        <tr>
          <th>Movie Id</th>
          <th>Movie Name</th>
          <th>Language</th>
          <th>Theatre Name</th>
          <th>State</th>
          <th>City</th>
          <th>Show No</th>
          <th>Start Time</th>
          <th>Show Date</th>
          <th>Poster</th>
          
        </tr>
        
        <tbody>
              <c:forEach items="${movies}" var="mv">
                  <tr>
                      <td>${mv.movieId}</td>
                      <td>${mv.movieName}</td>
                      <td>${mv.language}</td>
                      <td>${mv.thrName}</td>
                      <td>${mv.state}</td>
                      <td>${mv.city}</td>
                      <td>${mv.showNo}</td>
                      <td>${mv.startTime}</td>
                      <td>${mv.showDate}</td>
                      <td>
                          <img src="data:image/jpg;base64,${mv.poster}" alt="No image">
                      </td>
      
                      
      
              </c:forEach>
              </tbody>
              
      </table>
</body>
</html>