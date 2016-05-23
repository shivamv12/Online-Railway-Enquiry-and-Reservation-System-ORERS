
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"/>
        <meta charset="UTF-8">
        <meta name="Generator" content="EditPlus®">
        <meta name="Author" content="NetBeans">
        <meta name="Keywords" content="Online Reservation, Indian Railway Information.">
        <meta name="Description" content="Online Railway Reservation platform to Users, Indian Railway Information provide to Users, Railway Facilities to Journey..">
        <link rel="icon" type="image/x-icon" href="Images/rehr_user_icon.png"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <title>User Sign Up Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body onload="date()">
        <%@include file="head.jsp"%>
        <div class="main-content">
            <%@include file="header.jsp"%>
            <%@include file="list.jsp"%>
            <div class="signup">
                <img src="Images/signup.png" style="height:22%; margin-left:5%; margin-top:-3%; padding:5%; float:left;">
                <h1>User Sign Up Form</h1>
                <div class="innerLog1">
                    <form action="storeuserinfo.jsp">
                        <label for="user">Name</label><br/>
                        <input style="width:44%; float:left; margin-top:4%;" type="text" placeholder="Enter your first name." name="usn" id="user" required>
                        <input style="width:44%; margin-left:2%; margin-top:4%;" type="text" placeholder="Enter your surname." name="sur" required>
                        <label for="email" style="margin-top:1%; margin-left:0%;">Email ID</label><br/>
                        <input type="email" placeholder="Enter your Email address" name="mail" id="email" required>
                        <label for="pass" style="margin-top:1%;">Password</label><br/>
                        <input type="password" placeholder="Enter password" name="pswd" id="pass" required>
                        <label for="date" style="margin-top:1%;">Date of Birth</label><br/>
                        <input type="date" name="day" id="date" required>
                        <label style="margin-top:1%;">Gender</label><br/>
                        <input name="gen" value="male" type="radio" style="width:3%; box-shadow:inset 0px 0px 5px transparent; margin-left:20%;">
                            <span>Male</span>
                        <input name="gen" value="female" type="radio" style="width:3%; box-shadow:inset 0px 0px 5px transparent; margin-left:20%;">
                            <span>Female</span>
                        <input name="gen" type="radio" value="other" style="width:3%; box-shadow:inset 0px 0px 5px transparent; margin-left:25%;">
                            <span>Other</span>
                        <input class="sbmt" type="submit" value="Create an user account">
                    </form>    
                </div>
            </div>        
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>