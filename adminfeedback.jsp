
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String q = "select * from feedback";
    ResultSet rs = st.executeQuery(q);
%>
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
        <div class="header" style="position:fixed;">
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
        <div class="outer" style="background-image:url('Images/hd3.jpg'); background-attachment:fixed;">
            <%
                if(a!=null) {
            %>
            <div class="action" style="margin-left:79%; position:fixed;">
                <div class="insert" onclick="location.href='adminuserinfo.jsp';">Show User Database</div>
                <div class="insert" onclick="location.href='adminupdate.jsp';">Update Database</div>
                <div class="insert" onclick="location.href='adminfeedback.jsp';">Check Feedbacks</div>
            </div>
            <% } %>
            <%
                if(a!=null) {
            %>
            <div class="inner" style="margin-top:13%; margin-left:1%; width:77%; height:auto;">
                <h1>User's Feedback</h1>
                <table cellspacing="3px" cellpadding="3px" align="center">
                    <tr><th class="head1"> Feedback Issue <th class="head1"> Occurring Date <th class="head1"> Name of user <th class="head1"> Email Address <th class="head1"> Feedback Message
                    <%  while(rs.next())  {  %>
                    <tr><th><%= rs.getString(1) %>
                        <th><%= rs.getString(2) %>
                        <th><%= rs.getString(3) %>
                        <th><%= rs.getString(4) %>
                        <th><%= rs.getString(5) %>
                    <% } %>
                </table>
            </div>
            <% } %>
        </div>
        <div class="footer" style="position:fixed;"></div>
    </body>
</html>