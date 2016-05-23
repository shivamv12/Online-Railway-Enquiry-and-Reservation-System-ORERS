<%-- 
    Document   : footer
    Created on : 9 Mar, 2016, 2:45:43 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="footer">
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