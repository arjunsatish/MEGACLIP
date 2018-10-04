<%-- 
    Document   : login
    Created on : 24-Sep-2018, 13:34:43
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
  <meta name="description" content="login frame">
  <meta name="author" content="GAP">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>

  <title>loginframe</title>
      <style>

        body{
          color: #FF8000;
          position:relative;
          text-align: center;
          font-family: 'Luckiest Guy';
          background-color: #33ccff;
          background: linear-gradient(to right, #33ccff, white);
        }

        button {

          padding: 5%;
          font-family: 'Luckiest Guy';
          color: #FF8000;
          background-color: #64FE2E;

        }

        p {

         color: red;
         font-size: 75%;

        }

      </style>

    </head>

    <body>
        <form action="LoginServlet">
            <h1>Log in</h1>

            <input id="loginuname" type = "username" placeholder = "Username"><p id="loginunamep"> </p>
            <br>
            <br><br>
            <input  id="loginpass" type = "password" placeholder = "Password"><p id="loginpassp"> </p>
            <br>
            <br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="login();">Log In</button>
        </form>
    </body>

</html>
