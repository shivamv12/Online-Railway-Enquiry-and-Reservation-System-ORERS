<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("optn");
    String b = request.getParameter("date");
    String c = request.getParameter("user");
    String d = request.getParameter("mail");
    String e = request.getParameter("mesg");
    String qry = "insert into feedback values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"');";
    int check = st.executeUpdate(qry);
    if(check == 1)
        {   %>
<html>
    <head>
        <script>
            document.title = ":: Thank You ::";
            function show() {
                document.getElementById('para').style.display = "block";
            }
            function hide() {
                document.getElementById('img').style.display = "none";
            }
        </script>
    </head>
    <body bgcolor="#006699" onload="setInterval(show, 5000), setInterval(hide, 5000)">
        <div style="border:2px solid white; position:absolute; height:40%; border-radius:10px; padding:3%; width:92.5%; font-size:1.5em;">
            <div style="border:2px solid transparent; width:80%; float:left;">
                <h2 style="text-align:center; margin-top:2%; margin-left:20%; color:black; text-shadow:2px 2px 10px whitesmoke;">Storing Feedback to Database</h2>
                <img id="img" src="Images/FBload.gif" style="display:block; margin-left:58%; margin-top:10%;">
                <p id="para" style="margin-top:10%; color:whitesmoke; display:none; text-shadow:2px 2px 5px blue; margin-left:25%;">
                    Thanks for giving your feedback. Your suggestion is important for us.<br/>
                    <input type="button" onclick="window.close('storefeedback.jsp');" value="close" style="padding:3px; font-family:Verdana; background-color:#006699; color:whitesmoke; border:2px ridge #eee; cursor:Hand; font-size:0.8em; border-radius:5px; width:15%; margin-top:5%; margin-left:39%;"></p>
            </div>
            <div style="width:20%; height:60%; position:absolute; margin-left:75%; border:2px solid transparent;">
                <img src="Images/feedback.png" style="height:30%; position:fixed; margin-left:2%; margin-top:2%;">
            </div>
        </div>
<%      }
    else  {  %>
        <p id="para" style="color:whitesmoke; display:none; text-shadow:2px 2px 5px blue;">
        Unable to access Database .!</p>
    </body>
</html>
<% } %>