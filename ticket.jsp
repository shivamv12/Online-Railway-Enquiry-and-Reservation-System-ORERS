<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<script src="JvScript.js"></script>
<%
    int fare = 575;
    int c = Integer.parseInt(request.getParameter("counter"));
    int person = c;
    String[] arr = new String[10];
    String[] arr1 = new String[10];
    while(c > 0)  {
    String a = request.getParameter(c+"a");
    String b = request.getParameter(c+"b");
    arr[c] = a;
    arr1[c] = b;
    c--;
    }  
    fare = fare*person;
%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    String email = (String)session.getAttribute("user");
    String query = "select * from userdata where user_mail = '"+email+"';";
    ResultSet rs = st.executeQuery(query);
    String n = request.getParameter("num");
    String q = "select * from train where train_id = '"+n+"';";
    ResultSet r_set = st1.executeQuery(q);
    if(rs.next())   {
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
        <link rel="icon" type="image/x-icon" href="Images/enquiry_png.png"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <title>Online Railway Reservation Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body onload="date()">
        <%@include file="head.jsp"%>
        <div class="main-content">
            <%@include file="header.jsp"%>
            <%@include file="list.jsp"%>
            <div class="enquiry">
                <h1 style="margin-left:-6%;">User's Basic Info</h1><hr color="#006699" style="margin-top:5%;"/>
                <h3 style="padding:1%; padding-top:0%; float:left; font-size:1.3em; font-family:Comic Sans MS; color:#2778fc;">Username : <%= rs.getString(1) %></h3>
                <h3 style="padding:1%; clear:both; padding-top:0%; float:left; font-size:1.3em; font-family:Comic Sans MS; color:#2778fc; margin-top:-2%;">No of Persons : <%= person %></h3>
                <img src="Images/mail1.png" style="height:10%; margin-left:65.4%; margin-top:3%;"><h3 onclick="mail()" style="padding:1%; float:left; padding-top:0%; font-size:1.3em; font-family:Comic Sans MS; color:#2778fc; margin-top:-5.5%; margin-left:50%;">Mail This Page</h3>
                <h3 style="padding:1%; float:right; padding-top:0%; font-size:1.3em; font-family:Comic Sans MS; color:#2778fc; margin-top:-2%;">Reservation Date : <font id="d1"></font></h3>
            </div>
            <% } %>
        </div>
        <div class="ticket">
            <div class="ticket_inner">
                <h3>Happy Journey
                <img src="Images/Indian_Railway.svg.png"></h3>
                <table>
                    <tr><th>Train Number<th>Train Name<th>Departure Time<th>Arrival Time<th>Source Station<th>Destination Station</tr>
                    <% while(r_set.next())  {  %>
                    <tr><th><%= r_set.getString(1) %><th><%= r_set.getString(2) %>
                        <th><%= r_set.getString(5) %><th><%= r_set.getString(6) %>
                        <th><%= r_set.getString(3) %><th><%= r_set.getString(4) %>
                    <% } %>
                </table>
                <div class="info_travellor" id="data">
                    <table style='width:60%;'>
                        <tr><th>Passenger's Name<th> Passenger's Age</tr>
                    <%
                    for(int i=person;i>0;i--){
                        out.print("<tr>");
                        out.print("<th style='padding:1%; font-family:Verdana; color:#006699; font-size:1em;'>"+arr[i]+"</th>");
                        out.print("<th style='font-family:Verdana; color:#006699; font-size:1em;'>"+arr1[i]+"</th>");
                        out.print("</tr>");
                    }
                    %>
                    <h3>Total Fare : <%= fare %> Rs.</h3>
                    <input type="button" value="Print Ticket" onclick="window.print();" class="print">
                </div>
            </div>
        </div>
        <%--@include file="footer.jsp"--%>
        <div class="footer" style="background-color:transparent; width:100%; margin-left:-5%; margin-top:40%;">
            <%
                String p = (String)session.getAttribute("user");
                if(p!=null) {
            %>
            <input type="button" onclick="location.href='logout.jsp'" id="logoutbtn" name="logout" value="Log Out" style="margin-left:-4%;">
            <% } %>
            <a href="index.jsp?" target="_self">Home</a> |
            <a href="feedback.jsp?" target="_blank">Feedback</a> |
            <a href="site_map.jsp" target="_blank">Site Map</a> |
            <a href="terms_condition.jsp" target="_blank">Terms &amp; Condition</a>
            <p style="margin-top:0.5%;">&copy; 2016 Center for Railway Information System. All Rights Reserved. </p>
        </div>
    </body>
</html>