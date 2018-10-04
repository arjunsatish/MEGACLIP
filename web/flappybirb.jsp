<%-- 
    Document   : flappybirb
    Created on : 03-Oct-2018, 14:31:36
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0"/>

<title>

Flappy Rectangles!

</title>

<style>

canvas {

    border:1px solid #d3d3d3;

    background-color: #f1f1f1;

        position:relative;

    padding-left: 0;

    padding-right: 0;

    margin-left: auto;

    margin-right: auto;

    display: block;

}



body{

        background-color: #464;

}

div.Top_div_name{

        border: 1px solid #000;

        margin: auto;

        top: 0;

        bottom: 0;

}

</style>

</head>

<body onload="startGame()">
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
<script>



var myGamePiece;

var myObstacles = [];

var myScore;



function startGame() {

    myGamePiece = new component(30, 30, "red", 10, 120);

    myScore = new component("30px", "Consolas", "black", 280, 40, "text");

    myGameArea.start();

}



var myGameArea = {

    canvas : document.createElement("canvas"),

    start : function() {

        this.canvas.width = 500;

        this.canvas.height = 450;

        this.context = this.canvas.getContext("2d");

        document.body.insertBefore(this.canvas, document.body.childNodes[0]);

        this.frameNo = 0;

        this.interval = setInterval(updateGameArea, 20);

                window.addEventListener('keydown', function (e) {

            myGameArea.key = e.keyCode;

        })

        window.addEventListener('keyup', function (e) {

            myGameArea.key = false;

        })

        },

    clear : function() {

        this.context.clearRect(0, 0, this.canvas.width, this.canvas.height);

    },

    stop : function() {

        clearInterval(this.interval);

    }

}



function component(width, height, color, x, y, type) {

    this.type = type;

    this.width = width;

    this.height = height;

    this.speedX = 0;

    this.speedY = 0;   

    this.x = x;

    this.y = y;   

    this.update = function() {

        ctx = myGameArea.context;

        if (this.type == "text") {

            ctx.font = this.width + " " + this.height;

            ctx.fillStyle = color;

            ctx.fillText(this.text, this.x, this.y);

        } else {

            ctx.fillStyle = color;

            ctx.fillRect(this.x, this.y, this.width, this.height);

        }

    }

    this.newPos = function() {

        this.x += this.speedX;

        this.y += this.speedY;       

    }

    this.crashWith = function(otherobj) {

        var myleft = this.x;

        var myright = this.x + (this.width);

        var mytop = this.y;

        var mybottom = this.y + (this.height);

        var otherleft = otherobj.x;

        var otherright = otherobj.x + (otherobj.width);

        var othertop = otherobj.y;

        var otherbottom = otherobj.y + (otherobj.height);

        var crash = true;

        if ((mybottom < othertop) || (mytop > otherbottom) || (myright < otherleft) || (myleft > otherright)) {

            crash = false;

        }

        return crash;

    }

}



function updateGameArea() {

    var x, height, gap, minHeight, maxHeight, minGap, maxGap;

    for (i = 0; i < myObstacles.length; i += 1) {

        if (myGamePiece.crashWith(myObstacles[i])) {

            myGameArea.stop();

            return;

        }

    }

        if (myGameArea.key && myGameArea.key == 37) {myGamePiece.speedX = -1; }

    if (myGameArea.key && myGameArea.key == 39) {myGamePiece.speedX = 1; }

    if (myGameArea.key && myGameArea.key == 38) {myGamePiece.speedY = -1; }

    if (myGameArea.key && myGameArea.key == 40) {myGamePiece.speedY = 1; }

    myGameArea.clear();

    myGameArea.frameNo += 1;

    if (myGameArea.frameNo == 1 || everyinterval(150)) {

        x = myGameArea.canvas.width;

        minHeight = 20;

        maxHeight = 200;

        height = Math.floor(Math.random()*(maxHeight-minHeight+1)+minHeight);

        minGap = 50;

        maxGap = 200;

        gap = Math.floor(Math.random()*(maxGap-minGap+1)+minGap);

        myObstacles.push(new component(10, height, "green", x, 0));

        myObstacles.push(new component(10, x - height - gap, "green", x, height + gap));

    }

    for (i = 0; i < myObstacles.length; i += 1) {

        myObstacles[i].speedX = -1;

        myObstacles[i].newPos();

        myObstacles[i].update();

    }

    myScore.text="SCORE: " + myGameArea.frameNo;

    myScore.update();

    myGamePiece.newPos();   

    myGamePiece.update();

}



function everyinterval(n) {

    if ((myGameArea.frameNo / n) % 1 == 0) {return true;}

    return false;

}



function moveup() {

    myGamePiece.speedY = -1;

}



function movedown() {

    myGamePiece.speedY = 1;

}



function moveleft() {

    myGamePiece.speedX = -1;

}



function moveright() {

    myGamePiece.speedX = 1;

}



function clearmove() {

    myGamePiece.speedX = 0;

    myGamePiece.speedY = 0;

}

function restart() {
    document.getElementById('score').value = myGameArea.frameNo+"";
    document.forms["flappytryform"].action="FlappytryServlet";
    document.forms["flappytryform"].method="POST";
    document.forms["flappytryform"].onsubmit="return true;";
    document.forms["flappytryform"].submit();
}


</script>

<div style="text-align:center;">

  <button onmousedown="moveup()" onmouseup="clearmove()" ontouchstart="moveup()">UP</button><br><br>

  <button onmousedown="moveleft()" onmouseup="clearmove()" ontouchstart="moveleft()">LEFT</button>

  <button onmousedown="moveright()" onmouseup="clearmove()" ontouchstart="moveright()">RIGHT</button><br><br>

  <button onmousedown="movedown()" onmouseup="clearmove()" ontouchstart="movedown()">DOWN</button>

  <form name="flappytryform" onsubmit="return false;">
    <input type="hidden" name="score" id="score" value="" />
    <button onclick="restart()"> PLAY AGAIN? </button>
  </form>

</div>



<p style= "text-align:center;">The score will count one point for each frame you manage to "stay alive".</p>

</body>

</html>
