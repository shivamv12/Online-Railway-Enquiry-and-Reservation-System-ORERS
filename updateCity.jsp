<%@page import="java.sql.*"%>
<%
    Connection con = null;
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("cty_name");
    String b = request.getParameter("c_code");
    String query = "insert into project.city values ('"+a+"','"+b+"');";
    st.executeUpdate(query);
    response.sendRedirect("adminupdate.jsp");
%>