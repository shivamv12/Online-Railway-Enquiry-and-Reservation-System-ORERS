<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String source = request.getParameter("source");
    String dest = request.getParameter("dest");
    String q = "select * from train where source = '"+source+"' and destination = '"+dest+"';";
    ResultSet rs = st.executeQuery(q);
    %>
    <style>
        th { border:2px solid black; color:#2778fc; font-size:1.2em; }
        td { text-align:center; color:whitesmoke; text-shadow:0px 0px 10px black; font-size:1.1em; }
    </style>
    <table style="border:2px solid #006699; border-radius:10px;">
        <tr><th>Train Number</th><th>Train Name</th><th>Source Station<th>Destination Station<th>Arrival Time<th>Departure Time<th>Weekly Status<th>Route Via<th>Select Train</tr>
    <!--String a, b, c, d, e, f, g;
    out.print("<table><tr><th>Train Number</th><th>Train Name</th><th>Source Station<th>Destination Station<th>Arrival Time<th>Departure Time<th>Weekly Status</tr>");  -->
    <% while(rs.next())   {
    //a = rs.getString(1);
    //b = rs.getString(2);
    //c = rs.getString(3);
    //d = rs.getString(4);
    //e = rs.getString(5);
    //f = rs.getString(6);
    //g = rs.getString(7);
    //out.print("<tr><td>"+a+"</td><td>"+b+"</td><td>"+c+"</td><td>"+d+"</td><td>"+e+"</td><td>"+f+"</td><td>"+g+"</td></tr><input type='radio' value='"+a+"'>");
    %>
        <tr><td><%= rs.getString(1) %><td><%= rs.getString(2) %>
            <td><%= rs.getString(3) %><td><%= rs.getString(4) %>
            <td><%= rs.getString(5) %><td><%= rs.getString(6) %>
            <td><%= rs.getString(7) %><td><%= rs.getString(8) %>
            <td><input type="checkbox" name="checktrain">
        </tr>   <% } %>
    </table>