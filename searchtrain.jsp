<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String source = request.getParameter("source");
    String dest = request.getParameter("dest");
    String q = "select * from train where source = '"+source+"' and destination = '"+dest+"';";
    ResultSet rs = st.executeQuery(q);  %>
    <style>
        th { border-bottom:1px solid black; font-family:Arial Rounded MT; border-radius:5px; text-align:center; color:#006699; padding:0.4%; font-size:1.1em; }
        .data { border-bottom:1px dashed black; color:#003366; font-size:1em; text-align:center; }
    </style>
    <h1 style="font-family:Bookman Old Style; text-shadow:0px 0px 5px;">Train Table</h1>
    <form action="reservation.jsp">
    <table style="width:100%; margin-top:-1%;">
        <tr><th>Train ID<th>Train Name<th>Source<th>Destination<th>Arrival<th>Departure<th>Weekly Status<th>Select</tr>
    <!--String a, b, c, d, e, f, g;
    out.print("<table border='1'><tr><th>Train Number</th><th>Train Name</th><th>Source Station<th>Destination Station<th>Arrival Time<th>Departure Time<th>Weekly Status</tr>");-->
    <%
    while(rs.next())    {
    //a = rs.getString(1);
    //b = rs.getString(2);
    //c = rs.getString(3);
    //d = rs.getString(4);
    //e = rs.getString(5);
    //f = rs.getString(6);
    //g = rs.getString(7);
    //out.print("<tr><td>"+a+"</td><td>"+b+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+f+"</td><td>"+g+"</td></tr>"); //<input type='radio' value='"+a+"'>");
    %>
    <tr><th class="data"><%= rs.getString(1) %><th class="data"><%= rs.getString(2) %>
        <th class="data"><%= rs.getString(3) %><th class="data"><%= rs.getString(4) %>
        <th class="data"><%= rs.getString(5) %><th class="data"><%= rs.getString(6) %>
        <th class="data"><%= rs.getString(7) %><!--th class="data"><%--= rs.getString(8) --%> -->
        <th class="data"><input type="radio" name="selecttrain" onclick="change()" value="<%= rs.getString(1) %>">
    </tr>   <% } %>
</table>
<input type="submit" value="Next" id="btn1" class="next_page" disabled>
</form>