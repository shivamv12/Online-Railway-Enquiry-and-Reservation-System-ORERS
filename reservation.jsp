
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String no = request.getParameter("selecttrain");
    String qry = "select * from train where train_id = '"+no+"';";
    ResultSet rs = st.executeQuery(qry);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html"/>
        <meta charset="UTF-8">
        <meta name="Generator" content="EditPlus®">
        <meta name="Author" content="NetBeans">
        <meta name="Keywords" content="Online Reservation, Indian Railway Information.">
        <meta name="Description" content="Online Railway Reservation platform to Users, Indian Railway Information provide to Users, Railway Facilities to Journey..">
        <link rel="icon" type="image/x-icon" href="Images/reservation.png"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <title>Online Railway Reservation Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body onload="date(), setInterval(slider, 5000)">
        <%@include file="head.jsp"%>
        <div class="main-content">
            <%@include file="header.jsp"%>
            <%@include file="list.jsp"%>
            <div class="enquiry">
                <img src="Images/train.jpg" class="logo2" style="margin-left:0%;">
                <%
                    if(no == null)
                    out.print("<h1 style='margin-top:5%; margin-left:-3%;'>Please Select a Train .!&nbsp;<a href='enquiry.jsp' style='color:red;'>Enquiry</a></h1>");
                    else {  %>
                <h1>Selected Train Information.</h1>
                <table>
                    <tr><th>Train ID<th>Train Name<th>Departure Time<th>Arrival Time<th>Weekly Status</tr>
                <% while(rs.next()) {  %>
                <tr><th><%= rs.getString(1) %></th><th><%= rs.getString(2) %></th>
                    <th><%= rs.getString(6) %></th><th><%= rs.getString(5) %></th>
                    <th><%= rs.getString(7) %></th>
                <% } %>
                </table>
                <% } %>
            </div>
            <div class="train_table">
            <%
            String a = (String)session.getAttribute("user");
            if(a == null)
            {   %>
                <!--div style="border-radius:10px; height:30%; width:80%; padding:3%; background-color:red;"-->
                <img src="Images/alert-sign.png" style="padding-left:10%; padding-top:3%; float:left; height:20%;">
                <p style=" font-family:Verdana; padding:6%; padding-left:36%; font-size:1.2em;">You must logged in to fill reservation form.
                <a href="login.jsp" style="color:red; font-size:1em;">Log In</a></p>
                <!--/div-->
            <%  }   else   {   %>
            <h1 style="font-family:Bell MT;">Railway Reservation Form</h1><hr color="#006699"/>
                <form action="ticket.jsp">
                    <div id="x" class="reserv_form">
                        <label for="psg_name">Passenger's Name</label>
                        <input type="text" name="1a" id="psg_name" class="input_field1" style="margin-top:8%;" placeholder="Enter your name">
                        <label for="psg_age">Passenger's Age</label>
                        <input type="number" name="1b" id="psg_age" class="input_field1" style="margin-top:8%; margin-left:4.6%;" max="100" min="10" placeholder="Enter your age">
                        <label for="psg_age">Gender</label>
                        <!--input type="number" name="1b" id="psg_age" class="input_field1" placeholder="Enter your age"-->
                        <select class="sel" style="margin-left:4.6%;">
                            <option class="opt1" value="Male">Male</option><option class="opt1" value="Female">Female</option></select>
                        <input type="button" value="Add More Field" onclick="add_field()" class="add_field">
                        <input type="hidden" value="<%= no %>" name="num">
                    </div>
                    <div id="y"></div>
                    <!--input type="button" value="add more" onclick="add()"-->
                    <input type="number" hidden value="1" name="counter" id="count">
                    <input type="submit" value="Submit" class="add_field" style="margin-top:2%; margin-left:83.5%;">
                </form>
            <% } %>
            </div>
        <!--@include file="footer.jsp"%-->
        <div class="footer" style="background-color:transparent; width:100%; margin-left:0%; margin-top:75%; height:5%;">
            <%
                String p = (String)session.getAttribute("user");
                if(p!=null) {
            %>
            <input type="button" onclick="location.href='logout.jsp'" id="logoutbtn" name="logout" value="Log Out">
            <% } %>
            <a href="index.jsp?" target="_self">Home</a> |
            <a href="feedback.jsp?" target="_blank">Feedback</a> |
            <a href="site_map.jsp" target="_blank">Site Map</a> |
            <a href="terms_condition.jsp" target="_blank">Terms &amp; Condition</a>
            <p style="margin-top:0.5%;">&copy; 2016 Center for Railway Information System. All Rights Reserved. </p>
        </div>
    </body>
</html>