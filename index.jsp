
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
        <link rel="icon" type="image/x-icon" href="Images/indian_railway.png"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <title>Online Railway Reservation Portal</title>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
    </head>
    <body onload="date(), setInterval(slider, 5000)">
        <%@include file="head.jsp"%>
        <div class="main-content">
            <%@include file="header.jsp"%>
            <%@include file="list.jsp"%>
            <%@include file="slider.jsp"%>
                <img src="Images/indiamap.jpg" class="map">
            <%@include file="whatsnew.jsp"%>
            <div class="map" id="black_box1">
                <!--ul>
                    <li>&raquo; Electrification of Tracks</li>
                    <li>&raquo; HighTech Railway Stations</li>
                    <li>&raquo; </li>
                </ul-->
                <%@include file="newcontent.jsp"%>
                <!--input type="range" orient="vertical" style="transform:rotate(90deg); margin-left:46%; margin-top:48.5%; width:105.5%;"-->
            </div>
            <!--div class="new_content">
                <table border="1" style="float:left; position:absolute; color:#ff0000;">
                    <tr><th>&raquo; Electrification of Tracks
                    <tr><th>&raquo; HighTech Railway Stations
                    <tr><th>&raquo; Rail Budget 2016-2017
                    <tr><th>&raquo; Ministry Of Railway announced &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Four New Trains.<sup><img src="Images/new.gif"></sup>
                    <tr><th>&raquo; 
                </table>
            </div-->
            <div class="map_footer"></div>
            <%@include file="latest_news.jsp"%>
            <%@include file="media.jsp"%>
            <%@include file="experience.jsp"%>
            <%@include file="budget.jsp"%>
            <div class="likeus">                
                <%@include file="sharecontent.jsp"%>
            </div>
            <%--@include file="sms.jsp"--%>
        </div>
        <%@include file="footer.jsp"%>
    </body>
</html>