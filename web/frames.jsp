<%-- 
    Document   : frames
    Created on : 02-Oct-2018, 13:22:37
    Author     : ARJUN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<frameset cols="50%,50%">
			<frame noresize="noresize" src="background.html">
			<frame noresize="noresize" src="pong.jsp">
		</frameset>
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
	</body>
</html>