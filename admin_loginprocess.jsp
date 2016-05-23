<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String a = request.getParameter("usn");
    String b = request.getParameter("psd");
    out.print(a+" "+b);
    String q = "select * from admin where ad_username = '"+a+"' and ad_password = '"+b+"';";
    ResultSet rs = st.executeQuery(q);
    if(rs.next())   {
        out.print("<script> alert(); </script>");
        session.setAttribute("admin",a);
        response.sendRedirect("admin.jsp");
    }
%>