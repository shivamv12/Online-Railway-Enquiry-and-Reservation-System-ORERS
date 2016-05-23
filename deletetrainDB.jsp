
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("tno");
    String qry = "delete from project.train where train_id = '"+a+"';";
    st.executeUpdate(qry);
    response.sendRedirect("adminupdate.jsp");
%>