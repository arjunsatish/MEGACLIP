<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="description" content="MaximumClicks Game">
<meta name="author" content="GAP">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>

<title>MaximumClicks</title>

<script>

var total = 0;
var play = false;

function display(element) {

var now = new Date();

if (!play) {
play = true;
startTime = now.getTime();
}

if (now.getTime() - startTime > 20000) {
element.checked = !element.checked;
alert("Time Up! Score: "+total);

}

if (element.checked)
total++;
else
total--;

element.form.num.value = total;

}

function restart() {
    document.getElementById('score').value = total+"";
    document.forms["maximumclicksform"].action="MaximumclicksServlet";
    document.forms["maximumclicksform"].method="POST";
    document.forms["maximumclicksform"].onsubmit="return true;";
    document.forms["maximumclicksform"].submit();
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

button {

  padding: 5%;
  font-family: 'Luckiest Guy';
  color: #FF8000;
  background-color: #64FE2E;

}

</style>

</head>

<body>

<h1>Maximum Clicks!</h1>
<hr>
<marquee>Click as many as possible!! :)</marquee>
<hr>

<a href="main.jsp">Logout</a><br><br><br>

<b>Rules</b>
<p>1. How many boxes can you check in 20 seconds?</p>
<p>2. Good luck! :) </p>

<script language="JavaScript">

document.write("<FORM><CENTER>");
document.write('<INPUT TYPE="text" VALUE="0" NAME="num" ');
document.write('SIZE=10 onFocus="this.blur()"><BR>');
document.write("<HR SIZE=1 WIDTH=40%>");
for (var i = 0; i < 10; ++i) {
for (var j = 0; j < 10; ++j) {
document.write('<INPUT TYPE="checkbox" onClick="display(this)">');
}
document.write("<BR>");
}
document.write("<HR SIZE=1 WIDTH=40%>");
document.write("</FORM>");



</script>

<form name="maximumclicksform" onsubmit="return false;">
<input type="hidden" name="score" id="score" value="" />
<button onclick="restart();">Restart</button>
</form>


</body>

</html>