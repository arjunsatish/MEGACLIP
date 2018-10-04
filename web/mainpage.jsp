<%-- 
    Document   : mainpage
    Created on : 02-Oct-2018, 10:42:39
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link href="styles.css" rel="stylesheet" >

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="style.min.css" rel="stylesheet">

	<link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>

    <title>Megaclip</title>
  </head>
  <body>
      <%
            String userName = null;
            Cookie[] cookies = request.getCookies();
            if(cookies !=null){
            for(Cookie cookie : cookies){
                    if(cookie.getName().equals("username")) userName = cookie.getValue();
            }
            }
            if(userName == null) response.sendRedirect("login.html"); 
        %> 
    <div class="container fill">
    <marquee scrollamount="10"><h1 style="color:#ff9900;" class="header animated bounce">MEGACLIP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	MEGACLIP</h1></marquee>
            <form action="LogoutServlet" method="post">
                    <input type="submit" value="LOGOUT">
                </form>
	<table>
		<tbody>
			<tr>
				<div class="card1 animated slideInLeft">
					<div class="card">
					  <!--	<img class="card-img-top" src="..." alt="Card image cap"> -->
					  	<div class="card-body cbody1">
						    <h5 class="card-title">TIC-TACK-TOE</h5>
						    <p class="card-text"><ins>I have a tick in my hair, a tack to nail and a toe on my foot. :P</ins></p>
						    <a href="tictactoe.jsp" class="btn btn-primary">PLAY</a>
					  	</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="card2 animated slideInRight">
					<div class="card">
					  	<!--<img class="card-img-top" src="..." alt="Card image cap"> -->
					  	<div class="card-body cbody2">
						    <h5 class="card-title">FLAPPY BIRD</h5>
						    <p class="card-text">Have you broken your phone playing the game on your phone? Well it's high time you break your laptop playing the game on you laptop.</p>
						    <a href="flappybirb.jsp" class="btn btn-primary">PLAY</a>
					  	</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="card3 animated slideInLeft">
					<div class="card">
					  	<!--<img class="card-img-top" src="..." alt="Card image cap"> -->
					  	<div class="card-body cbody3">
						    <h5 class="card-title">SNAKE GAME</h5>
						    <p class="card-text">The snek becomes bigger when you eat the blue pixels and turns into a noperope or a dangernoodle.</p>
						    <a href="dangernoodle.jsp" class="btn btn-primary">PLAY</a>
					  	</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="card4 animated slideInRight">
					<div class="card">
					  <!--	<img class="card-img-top" src="..." alt="Card image cap"> -->
					  	<div class="card-body cbody4">
						    <h5 class="card-title">GUESS THE NUMBER</h5>
						    <p class="card-text">A random number must be guessed. Peanuts<---- Pretty random.</p>
						    <a href="guessmynumber.jsp" class="btn btn-primary">PLAY</a>
					  	</div>
					</div>
				</div>
			</tr>
			<tr>
				<div class="card5 animated slideInLeft">
					<div class="card">
					  <!--	<img class="card-img-top" src="..." alt="Card image cap"> -->
					  	<div class="card-body cbody5">
						    <h5 class="card-title">MAXIMUM CLICKS</h5>
						    <p class="card-text">click click click click click click click click click click click click click click click.</p>   
						    <a href="maximumclicks.jsp" class="btn btn-primary">PLAY</a>
					  	</div>
					</div>
				</div>
			</tr>			
		</tbody>
	</table>
        </div>
	<footer class="footer">
		<a href="feedback.jsp" class="fleft">Click here to complete our feedback form</a>
	</footer>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>

