
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <% } else { %>
            <input type="button" onclick="location.href='admin.jsp';" value="Log In" class="home_btn" style="margin-top:-2.2%; margin-left:5%; float:left;">
            <% } %>
            <img src="Images/homebtn.png" class="home" onclick="location.href='admin.jsp'" style="margin-left:5%;">
        </div>
        <div class="outer">
            <%
                if(a!=null) {
            %>
            <div class="action" style="margin-left:79%;">
                <div class="insert" value="1" onclick="location.href='ad_showtrain.jsp';">Show Train Database</div>
                <div class="insert" value="2" onclick="location.href='adminuserinfo.jsp';">User Information</div>
                <div class="insert" onclick="location.href='adminfeedback.jsp';">Check Feedbacks</div>
            </div>
            <div class="inner">
                <h1>Update Train Information</h1>
                <form action="updatetrainDB.jsp">
                    <label>Train Number</label> <input type="number" name="no" placeholder="Enter train number"><br/>
                    <label>Train Name</label> <input type="text" name="tnme" placeholder="Enter train name"><br/>
                    <label>Source Station</label> <input type="text" name="src" placeholder="Enter source station"><br/>
                    <label>Destination Station</label> <input type="text" name="dest" placeholder="Enter destination station"><br/>
                    <label>Arrival Time</label> <input type="text" name="atim" placeholder="Enter arrival time"><br/>
                    <label>Departure Time</label> <input type="text" name="dtim" placeholder="Enter depart time"><br/>
                    <label>Weekly Status</label> <input type="text" name="status" placeholder="Enter weekly status"><br/>
                    <input type="submit" style="width:20%;">
                </form>
            </div>
            <div class="inner" style="margin-left:42%; height:21%;">
                <h1 style="margin-top:1%;">Delete Train Information</h1>
                <form action="deletetrainDB.jsp">
                    <label>Train Number</label> <input type="number" name="tno" placeholder="Enter train number"><br/>
                    <label>Train Name</label> <input type="text" name="tname" placeholder="Enter train name"><br/>
                    <!--label>Source Station</label> <input type="text" name="atim" placeholder="Enter source station"><br/>
                    <label>Destination Station</label> <input type="text" name="dtim" placeholder="Enter destination station"><br/>
                    <label>Arrival Time</label> <input type="text" name="atim" placeholder="Enter arrival time"><br/>
                    <label>Departure Time</label> <input type="text" name="dtim" placeholder="Enter depart time"><br/>
                    <label>Weekly Status</label> <input type="text" name="status" placeholder="Enter weekly status"><br/-->
                    <input type="submit" style="width:20%;">
                </form>
            </div>
            <div class="inner" style="margin-left:42%; margin-top:29%; height:21%;">
                <h1 style="margin-top:1%;">Update City Information</h1>
                <form action="updateCity.jsp">
                    <label>City Name</label> <input type="name" name="cty_nme" placeholder="Enter city name"><br/>
                    <label>City Code</label> <input type="text" name="c_code" placeholder="Enter city code"><br/>
                    <input type="submit" style="width:20%;">
                </form>
            </div>
            <% } %>
        </div>
        <div class="footer"></div>
    </body>
</html>