
<% 
    String x = (String)session.getAttribute("user");
    if(x == null)
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="Images/user-icon.jpg"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <title>User Log In Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body onload="date()">
        <%@include file="head.jsp"%>
        <div class="main-content">
            <%@include file="header.jsp"%>
            <%@include file="list.jsp"%>
            <!--img src="Images/maxresdefault.jpg" style="height:60%; width:45.5%; border-radius:5px; margin-top:5%; margin-left:2%; float:left;"-->
            <!--div class="outer"-->
                <div class="login">
                    <img src="Images/login1.png" style="height:30%; margin-left:5%; padding:5%; float:left;">
                    <h1>User Log In</h1>
                    <div class="innerLog">
                        <form action="loginprocess.jsp">
                            <label for="user">Username</label><br/>
                            <input type="text" placeholder="Enter your email address." id="user" name="mail">
                            <hr color="skyblue" style="margin-top:4%;"/>
                            <label for="pass">Password</label><br/>
                            <input type="password" placeholder="Enter your password." id="pass" name="psd">
                            <hr color="skyblue" style="margin-top:4%;"/>
                            <input type="submit" value="Log In" style="margin-top:1%; background-color:#2778fc; width:100%; padding:1.5%; font-family:Book Antiqua; font-size:1.5em; color:whitesmoke; box-shadow:inset 0px 0px 5px black;">
                        </form>
                    </div>
                    <a href="signup.jsp">
                        Not a registered user?</a>
                    <!--hr color="skyblue" style="position:absolute; clear:left;"/-->
                    <a href="index.jsp" style="position:absolute; margin-top:100%;">
                        Return to Home Page</a>
                </div>
            <!--/div-->
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>
<% }
else
    response.sendRedirect("index.jsp");
    %>