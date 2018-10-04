<%-- 
    Document   : feedback
    Created on : 03-Sep-2018, 19:15:23
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
            <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	    <!-- Bootstrap core CSS -->
	    <link href="bootstrap.min.css" rel="stylesheet">
	    <!-- Material Design Bootstrap -->
	    <link href="mdb.min.css" rel="stylesheet">
	    <!-- Your custom styles (optional) -->
	    <link href="style.min.css" rel="stylesheet">

		<link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>
		<script type="text/javascript" src="feedback.js"></script>
		<link rel="stylesheet" href="feedback.css">
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
		<h1 class="animated fadeInUpBig center">FEEDBACK FORM</h1>
		<form method="post" onsubmit="return validateform()" action="Feedback">  
			<div class="animated fadeInLeftBig">
				<label for="email">Please enter your E-mail   :</label>
				<input id="email" name="email" type="email" placeholder="Email" onblur="validate(this.value)">
				<p style="display:none" id="errmsg">Please fill the correct email</p>
			</div>
			<div class="animated fadeInRightBig">
				<label class="form-check-label" for="rating">HOW DO YOU RATE OUR GAMES ON A SCALE OF 1-5?<i>1 is bad and 5 is good</i></label>
				<div id="rating">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" onclick="func(this.value)">
		  				<label class="form-check-label" for="inlineRadio1">1</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option2" onclick="func(this.value)">
		  				<label class="form-check-label" for="inlineRadio2">2</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option3" onclick="func(this.value)">
		  				<label class="form-check-label" for="inlineRadio3">3</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option4" onclick="func(this.value)">
		  				<label class="form-check-label" for="inlineRadio4">4</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option5" onclick="func(this.value)">
		  				<label class="form-check-label" for="inlineRadio5">5</label>
					</div>
				</div>
			</div>
			<div style="display: none;" id="feedback_text">
				<textarea width="400px" height="100px" placeholder="Please enter your views" name="uuu"></textarea>
			</div>
			<div class="animated fadeInDownBig">
				<input type="submit" id="submit" value="SUBMIT">
			</div>
		</form>

	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
	</body>
</html>
