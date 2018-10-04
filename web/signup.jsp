<%-- 
    Document   : signup
    Created on : 03-Oct-2018, 14:53:57
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">
  <meta name="description" content="signup frame">
  <meta name="author" content="GAP">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>

<title>signupframe</title>

<script>

function signup(){

    var flag=0;
    var email = document.getElementById("signupemail").value;
    var tel = document.getElementById("signuptel").value;
    var age = document.getElementById("signupage").value;
    var username = document.getElementById("signupuname").value;
    var password = document.getElementById("signuppass").value;
    var passwordrepeat = document.getElementById("signuppassrepeat").value;

    if (validateEmail(email)) {


      document.getElementById("signupemailp").innerHTML="";

    }

    else {

      document.getElementById("signupemailp").innerHTML="Invalid Email.";
      flag = 1;

    }

    if (validateTel(tel)){

      document.getElementById("signuptelp").innerHTML="";

    }

    else{

      document.getElementById("signuptelp").innerHTML="Invalid Telephone.";
      flag=1;

    }

    if(age>12 && age<100){

      document.getElementById("signupagep").innerHTML="";

    }

    else{

      document.getElementById("signupagep").innerHTML="Invalid age.";

    }

    if (document.getElementById("signupgendermale").checked || document.getElementById("signupgenderfemale").checked ) {

      document.getElementById("signupgenderp").innerHTML="";

    }

    else{

      document.getElementById("signupgenderp").innerHTML="Please select gender.";
      flag=1;

    }

    if(validateUname(username)){

      document.getElementById("signupnamep").innerHTML="";

    }

    else{

      document.getElementById("signupnamep").innerHTML="Invalid Username.";
      flag=1;

    }

    if(validatePassLength(password)){

      document.getElementById("signuppassp").innerHTML="";
      document.getElementById("signuppassrepeatp").innerHTML="";

      if(validatePass(password, passwordrepeat)){

        document.getElementById("signuppassp").style.color="green";
        document.getElementById("signuppassrepeatp").style.color="green";

        document.getElementById("signuppassp").innerHTML="Valid.";
        document.getElementById("signuppassrepeatp").innerHTML="Valid.";


      }

      else{

        document.getElementById("signuppassp").innerHTML="Passwords don't match.";
        document.getElementById("signuppassrepeatp").innerHTML="Passwords dont't match.";
        flag=1;

      }


    }

    else{

      document.getElementById("signuppassp").innerHTML="Password Too Short.";
      document.getElementById("signuppassrepeatp").innerHTML="Password Too Short.";
      flag=1;

    }

    if(flag==1){

      alert("Invalid Entry!");

    }
    else{

      alert("Details recorded!");

      document.forms["signupform"].action="SignupServlet";
      document.forms["signupform"].method="POST";
      document.forms["signupform"].onsubmit="return true;";
      document.forms["signupform"].submit();

    }

}

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

function validateTel(tel){

  var re = /^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im;
  return re.test(tel);

}

function validateUname(username){

  var re = /^[a-zA-Z0-9]+$/;
  return re.test(username);

}


function validatePassLength(password){

  return (password.length>6);

}

function validatePass(password, passwordrepeat){

  return (password==passwordrepeat);

}

</script>

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

    <h1>Sign Up</h1>
    <a href="login.jsp">Log in</a><br><br>
<form name="signupform" onsubmit="return false;">
    <input name="signupemail" id="signupemail" type = "email" placeholder = "Email"> <p id="signupemailp"> </p>
    <br>
    <input name="signuptel" id="signuptel" type = "tel" placeholder = "Phone Number"> <p id="signuptelp"> </p>
    <br>
    <input name="signupage" id="signupage" type = "number" placeholder = "Age"> <p id="signupagep"> </p>
    <br>
    Gender:<br>
    <input id="signupgendermale" type="radio" name="gender" value="male"> Male
    <input id="signupgenderfemale" type="radio" name="gender" value="female"> Female<p id="signupgenderp"> </p><br><br>
    <input name="signupname" id="signupuname" type = "username" placeholder = "Username"> <p id="signupnamep"> </p>
    <br>
    <input name="signuppass" id="signuppass" type = "password" placeholder = "Password (at least 6 chars)"> <p id="signuppassp"> </p>
    <br>
    <input name="signuppassrepeat" id="signuppassrepeat" type = "password" placeholder="Repeat Password"> <p id="signuppassrepeatp"> </p>
    <br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="signup();">Sign Up</button>
</form>

</body>

</html>
