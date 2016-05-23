<html>
    <head>
        <link rel="icon" type="image/x-icon" href="Images/admin1.png"/>
        <!--link rel="stylesheet" type="text/css" href="external.css"/-->
        <style>
            @import url(ad_external.css);
        </style>
        <title>Online Railway Reservation Admin Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body bgcolor="whitesmoke">
        <div class="header">
            <img src="Images/logoad.png">
            <h1>Online Railway Enquiry &amp; Reservation System</h1>
            <h4>India Grows, where Railway Goes.</h4>
            <input type="button" onclick="location.href='index.jsp';" value="Home Page" class="home_btn">
            <% 
                String a = (String)session.getAttribute("admin");
                if (a!=null) {
            %>
            <input type="button" onclick="location.href='ad_logout.jsp';" value="Log Out" class="home_btn" style="margin-top:-2.2%; margin-left:5%; float:left;">
            <% } %>
            <img src="Images/homebtn.png" class="home" onclick="location.href='admin.jsp'">
        </div>
        <div class="main">
            <% 
                if (a!=null) {
            %>
            <div class="action">
                <div class="insert" value="1" onclick="location.href='adminupdate.jsp';">Update Database</div>
                <div class="insert" value="2" onclick="location.href='adminuserinfo.jsp';">User Information</div>
                <div class="insert" onclick="location.href='adminfeedback.jsp';">Check Feedbacks</div>
            </div>
            <% } %>
            <div class="ad_log">
                <form action="admin_loginprocess.jsp">
                    <label for="user">Username</label>
                    <input type="text" placeholder="Enter your username" name="usn" id="user">
                    <label for="pswd">Password</label>
                    <input type="password" placeholder="Enter your password" name="psd" id="pswd">
                    <input type="submit" value="Log In" class="login_btn">
                </form>
            </div>
        </div>
        <div class="footer"></div>
    </body>
</html>