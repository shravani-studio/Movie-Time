<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MovieTime</title>
    <style>
        #tb{
            width:50vw;
            height:60vh;
            margin-top: 5vh;
            margin-left: 30vw;
            border-spacing: 3vw 3vh;
            background-color: aliceblue;
        }
        input{
            background-color:beige;
            margin-left: 50%;
            text-align: center;
        }
        #back{
            padding: 5px 5px;
            background-color: azure;
            border: 3px solid black;
        }
        #pay{
            background-color: darkgreen;
            margin-left: 50%;
            margin-top:2%;
            padding:5px 3px;
            width:200px;
        }
        body{
            background-image: url("images/theatre.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>
     <br> 
    <input type="text" disabled="true" placeholder="screen">
    <form action="/seats" method="post">
        <table id="tb">
            
            <tr>
                <td><input name="seat" type="checkbox" value="A0"></td>
                <td><input name="seat" type="checkbox" value="A1"></td>
                <td><input name="seat" type="checkbox" value="A2"></td>
                <td><input name="seat" type="checkbox" value="A3"></td>
                <td><input name="seat" type="checkbox" value="A4"></td>
                <td><input name="seat" type="checkbox" value="A5"></td>
                <td><input name="seat" type="checkbox" value="A6"></td>
                <td><input name="seat" type="checkbox" value="A7"></td>
                <td><input name="seat" type="checkbox" value="A8"></td>
                <td><input name="seat" type="checkbox" value="A9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="B0"></td>
                <td><input name="seat" type="checkbox" value="B1"></td>
                <td><input name="seat" type="checkbox" value="B2"></td>
                <td><input name="seat" type="checkbox" value="B3"></td>
                <td><input name="seat" type="checkbox" value="B4"></td>
                <td><input name="seat" type="checkbox" value="B5"></td>
                <td><input name="seat" type="checkbox" value="B6"></td>
                <td><input name="seat" type="checkbox" value="B7"></td>
                <td><input name="seat" type="checkbox" value="B8"></td>
                <td><input name="seat" type="checkbox" value="B9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="C0"></td>
                <td><input name="seat" type="checkbox" value="C1"></td>
                <td><input name="seat" type="checkbox" value="C2"></td>
                <td><input name="seat" type="checkbox" value="C3"></td>
                <td><input name="seat" type="checkbox" value="C4"></td>
                <td><input name="seat" type="checkbox" value="C5"></td>
                <td><input name="seat" type="checkbox" value="C6"></td>
                <td><input name="seat" type="checkbox" value="C7"></td>
                <td><input name="seat" type="checkbox" value="C8"></td>
                <td><input name="seat" type="checkbox" value="C9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="D0"></td>
                <td><input name="seat" type="checkbox" value="D1"></td>
                <td><input name="seat" type="checkbox" value="D2"></td>
                <td><input name="seat" type="checkbox" value="D3"></td>
                <td><input name="seat" type="checkbox" value="D4"></td>
                <td><input name="seat" type="checkbox" value="D5"></td>
                <td><input name="seat" type="checkbox" value="D6"></td>
                <td><input name="seat" type="checkbox" value="D7"></td>
                <td><input name="seat" type="checkbox" value="D8"></td>
                <td><input name="seat" type="checkbox" value="D9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="E0"></td>
                <td><input name="seat" type="checkbox" value="E1"></td>
                <td><input name="seat" type="checkbox" value="E2"></td>
                <td><input name="seat" type="checkbox" value="E3"></td>
                <td><input name="seat" type="checkbox" value="E4"></td>
                <td><input name="seat" type="checkbox" value="E5"></td>
                <td><input name="seat" type="checkbox" value="E6"></td>
                <td><input name="seat" type="checkbox" value="E7"></td>
                <td><input name="seat" type="checkbox" value="E8"></td>
                <td><input name="seat" type="checkbox" value="E9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="F0"></td>
                <td><input name="seat" type="checkbox" value="F1"></td>
                <td><input name="seat" type="checkbox" value="F2"></td>
                <td><input name="seat" type="checkbox" value="F3"></td>
                <td><input name="seat" type="checkbox" value="F4"></td>
                <td><input name="seat" type="checkbox" value="F5"></td>
                <td><input name="seat" type="checkbox" value="F6"></td>
                <td><input name="seat" type="checkbox" value="F7"></td>
                <td><input name="seat" type="checkbox" value="F8"></td>
                <td><input name="seat" type="checkbox" value="F9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="G0"></td>
                <td><input name="seat" type="checkbox" value="G1"></td>
                <td><input name="seat" type="checkbox" value="G2"></td>
                <td><input name="seat" type="checkbox" value="G3"></td>
                <td><input name="seat" type="checkbox" value="G4"></td>
                <td><input name="seat" type="checkbox" value="G5"></td>
                <td><input name="seat" type="checkbox" value="G6"></td>
                <td><input name="seat" type="checkbox" value="G7"></td>
                <td><input name="seat" type="checkbox" value="G8"></td>
                <td><input name="seat" type="checkbox" value="G9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="H0"></td>
                <td><input name="seat" type="checkbox" value="H1"></td>
                <td><input name="seat" type="checkbox" value="H2"></td>
                <td><input name="seat" type="checkbox" value="H3"></td>
                <td><input name="seat" type="checkbox" value="H4"></td>
                <td><input name="seat" type="checkbox" value="H5"></td>
                <td><input name="seat" type="checkbox" value="H6"></td>
                <td><input name="seat" type="checkbox" value="H7"></td>
                <td><input name="seat" type="checkbox" value="H8"></td>
                <td><input name="seat" type="checkbox" value="H9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="I0"></td>
                <td><input name="seat" type="checkbox" value="I1"></td>
                <td><input name="seat" type="checkbox" value="I2"></td>
                <td><input name="seat" type="checkbox" value="I3"></td>
                <td><input name="seat" type="checkbox" value="I4"></td>
                <td><input name="seat" type="checkbox" value="I5"></td>
                <td><input name="seat" type="checkbox" value="I6"></td>
                <td><input name="seat" type="checkbox" value="I7"></td>
                <td><input name="seat" type="checkbox" value="I8"></td>
                <td><input name="seat" type="checkbox" value="I9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="J0"></td>
                <td><input name="seat" type="checkbox" value="J1"></td>
                <td><input name="seat" type="checkbox" value="J2"></td>
                <td><input name="seat" type="checkbox" value="J3"></td>
                <td><input name="seat" type="checkbox" value="J4"></td>
                <td><input name="seat" type="checkbox" value="J5"></td>
                <td><input name="seat" type="checkbox" value="J6"></td>
                <td><input name="seat" type="checkbox" value="J7"></td>
                <td><input name="seat" type="checkbox" value="J8"></td>
                <td><input name="seat" type="checkbox" value="J9"></td>
            </tr>
            <tr>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
                <td><input name="seat" type="checkbox" value="K0"></td>
            </tr>
        
        </table>
        <button id="pay" type="submit" onclick="alert('Tickets Booked Successfully!!')"><b>pay rs</b></button>
    </form>

    <script>
        
    </script>
</body>
</html>