<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="description" content="GuessMyNumber Game">
<meta name="author" content="GAP">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>

<title>Guess My Number</title>

<script>

var guess;
var noofguess = 6;

function start(){

guess = Math.floor(Math.random() * 100) + 1; // generate random number between 1 and 100
document.getElementById("gametext").innerHTML = "Guess a number between 1 and 100";

}

function guessfun(){

var userguess = parseInt(document.getElementById("guesstext").value);

if(validateuserguess(userguess)){

  noofguess = noofguess-1;
  if(userguess == guess){

  alert("Congrats! You won. :) Answer "+guess);
  location.reload();

  }

  else if(noofguess>0){

  document.getElementById("guessrem").innerHTML = noofguess;

  if(userguess>guess){

  document.getElementById("gametext").innerHTML = "Guess is Less Than "+userguess;

  }
  else{

  document.getElementById("gametext").innerHTML = "Guess is Greater Than "+userguess;

  }

  }

  else{

    alert("Sorry. You Lost :(");

  }

}

else{

alert("Invalid input. Play Again.");
location.reload();

}

function validateuserguess(userguess){

  var re = /^[0-9]+$/;
  return re.test(userguess);

}

}

function restart(){

    document.getElementById('score').value = noofguess+"";

    document.forms["guessmynumberform"].action="GuessmynumberServlet";
    document.forms["guessmynumberform"].method="POST";
    document.forms["guessmynumberform"].onsubmit="return true;";
    document.forms["guessmynumberform"].submit();

}

</script>

<style>

body {

  color: #FF8000;
  position:relative;
  text-align: center;
  font-family: 'Luckiest Guy';
  background-color: #33ccff;
  background: linear-gradient(to right, #33ccff, white);

}

table{

  width: 50%;
  border:1;
  margin-left:25%;
  background:#DAF7A6;

}

button {

  padding: 5%;
  font-family: 'Luckiest Guy';
  color: #FF8000;
  background-color: #64FE2E;

}

#movesrem, #guesstext{

float: left;
margin-left: 20%;

}

#guessrem{

float: left;
margin-left: -1750%;

}

#guessbutton {

  float: left;
  margin-left: -475%;

}

</style>

</head>

<body>
<h1>Guess My Number!</h1>
<hr>
<marquee>Guess my number!! :)</marquee>
<hr>

<a href="main.jsp">Logout</a>

<table>
<tr><td><b>Rules:</b><ol><li>Click the Start Button</li><li>The aim of the game is to guess a number between 1 and 100 within 6 moves</li><li>Good Luck! :)</li></ol></td></tr>
<tr><td colspan="2"><button onclick="start();">Start!</button></td></tr>
<tr><td colspan="2"><p id="gametext"> Press <b>START!</b> to start game.</td></p></tr>
<tr><td colspan="1"><p id="movesrem">Attempts remaining:</p></td><td colspan="1"><p id="guessrem">6</p></td></tr>
<tr><td colspan="1"><input id="guesstext" type="text" placeholder="Enter guess."></td><td colspan="1"></td><td><button id="guessbutton" onclick="guessfun();">Guess!</button></td></tr>

</table>

<form name="guessmynumberform" onsubmit="return false;">
<input type="hidden" name="score" id="score" value="" />
<button onclick="restart()">Restart</button>
</form>

</body>

</html>