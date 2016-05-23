
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    String q = "select city_name from city";
    ResultSet rs = st.executeQuery(q);
    ResultSet rs1 = st1.executeQuery(q);
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
                <img src="Images/enquiry.png">
                <form method="get" onsubmit="return validate();">
                    <span>Source </span>
                    <select onmouseover="round1()" name="sel" id="selct">
                        <option value="select" selected>Select Source</option>
                        <%  while (rs.next()) {%>
                            <option><%= rs.getString(1) %></option>
                        <% } %>
                    </select>
                    <img src="Images/arrow.png" id="arow" class="arrow">
                    <span style="margin-left:2%;">Destination </span>
                    <select onmouseover="round2()" name="sel" id="selct1" style="margin-left:2%;">
                        <option value="select" selected>Select Destination</option>
                        <%  while (rs1.next()) {%>
                            <option><%= rs1.getString(1) %></option>
                        <% }%>
                    </select>
                    <input type="button" value="Search Train" onclick="loadDoc(), validate()" class="srch_train">
                </form>
            </div>
            <div id="demo" class="train_table">
                <!--h1>Train Table</h1-->
            </div>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>