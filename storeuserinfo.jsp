<%@page import="java.sql.*"%>
<%@page import="bean.Hash"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String a = request.getParameter("usn");    
    String b = request.getParameter("sur");
    String c = request.getParameter("mail");
    String d = request.getParameter("pswd");
    d = Hash.generateMD5(d);
    String e = request.getParameter("day");
    String f = request.getParameter("gen");
    a = (a + " " + b);
    String query = "insert into userdata values ('" + a + "','" + c + "','" + d + "','" + e + "','" + f + "');";
    int x = st.executeUpdate(query);
    if (x == 1)
        response.sendRedirect("login.jsp");
    else {
        out.print("<script> alert('Registration Error.!'); </script>");
        response.sendRedirect("signup.jsp");
    }
%>