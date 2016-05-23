<%-- 
    Document   : feedback
    Created on : 11 Mar, 2016, 2:07:38 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="Images/customer_feedback.jpg"/>
        <link rel="stylesheet" type="text/css" href="external.css"/>
        <script src="JvScript.js" type="text/javascript" language="javascript"></script>
        <title>Railway Enquiry Feedback Form</title>
    </head>
    <body bgcolor="#006699" onload="date()">
        <div class="headfeed">
            <img src="Images/national_emblem.svg.png" class="emb">
            <h2 class="rail_head">Indian Railway</h2>
            <h4 class="rail_head1">India Grows, Where Railway Goes ..</h4>
            <img src="Images/indian_railway.png" class="logo1">
            <!--hr style="clear:left; margin-top:-15%;"/-->
            <div class="inner">
                <img src="Images/varanasi.png" style="height:96%; width:24.5%; float:left; margin-left:0.5%; box-shadow:-2px 2px 10px black; border-top-left-radius: 10px; border-bottom-left-radius:10px;">
                <div class="innermost">
                    <img src="Images/Charbag(2).jpg" style="z-index:1; box-shadow:0px 2px 10px black; height:100%; width:100%; margin-left:1.1%;">
                </div>
                <div style="height:48.5%; width:43.8%; opacity:0.7; position:absolute; padding:3%; background-color:whitesmoke; margin-left:24.7%;">
                    <h1 style="font-family:Calibri; color:black; font-size:5vh; font-weight:bold; margin-top:-1.5%;">SMS, Web Complaints &amp; Suggestion Portal</h1>
                </div>
                <img src="Images/ltt.png" style="height:96%; width:25%; margin-left:49.5%; box-shadow:2px 2px 10px black; border-top-right-radius: 10px; border-bottom-right-radius:10px;">
            </div>
        </div>
        <div class="formHead">
            <h2>Website Feedback / Suggestion Form</h2>
        </div>
        <div class="feedback">
            <form action="storefeedback.jsp">
                <fieldset style="height:24%;">
                    <legend>Complaint Details :</legend>
                    <h5 style="margin-top:2%; float:left;">Complaint / Suggestions / Feedback :</h5>
                    <select class="input_field" name="optn" required>
                        <option class="opt" value="Select Issue" selected>- - - - - Select Issues - - - - -</option>
                        <option class="opt" value="Allotment of Seats">Allotment of Seats</option>
                        <option class="opt" value="Catering Services">Catering Services</option>
                        <option class="opt" value="Punctuality of Trains">Punctuality of Trains</option>
                        <option class="opt" value="Reservation Issue">Reservation Issue</option>
                        <option class="opt" value="Refund of Tickets">Refund of Tickets</option>
                        <option class="opt" value="Thefts / Pilferages">Thefts / Pilferages</option>
                    </select><br/>
                    <h5 style="margin-top:0%; margin-left:0%; float:left; clear:left;">Incident Date :</h5>
                    <input type="date" name="date" class="input_field" style="width:29.3%; padding:0.3%; margin-top:3%;" required>
                </fieldset>
                <fieldset style="height:54%;">
                    <legend>Complaint Reported By :</legend>
                    <h5 style="margin-top:2%; float:left;">Name :</h5>
                    <input type="text" placeholder="Enter your name" style="margin-left:42%; margin-top:2.3%; width:29.3%;" name="user" class="input_field" required>
                    <h5 style="margin-top:-0.3%; clear:left; float:left;">Email ID :</h5>
                    <input type="email" placeholder="Enter your mail" style="margin-left:40.3%; margin-top:1.7%; width:29.3%;" name="mail" class="input_field" required>
                    <h5 style="margin-top:-0.3%; clear:left; float:left;">Complaint Description :</h5>
                    <textarea rows="5" cols="50" placeholder="Enter your feedback message" name="mesg" style="margin-top:2.3%; resize:none; width:29.4%; margin-left:26.8%;" class="input_field" required></textarea>
                    <h5 style="margin-top:1%; clear:left; float:left; margin-right:33%;">Action :</h5>
                    <input class="btn" type="submit" style="margin-top:12%; margin-left:-35%;" value="Submit Form Data">
                    <input value="Reload Form" class="btn" style="margin-top:12%; margin-left:-12%;" type="reset">
                </fieldset>
            </form>
        </div>
    </body>
</html>
