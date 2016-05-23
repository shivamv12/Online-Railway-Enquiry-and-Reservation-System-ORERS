<%@page import="java.sql.*"%>
<%@page import="bean.Hash"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String a = request.getParameter("mail");
    String b = request.getParameter("psd");
    b = Hash.generateMD5(b);
    String query = "select * from userdata where user_mail = '"+a+"' and user_pswd = '"+b+"';";
    ResultSet rs = st.executeQuery(query);
    if(rs.next())
    {
        session.setAttribute("user",a);
        response.sendRedirect("reservation.jsp");
    }
    else {
        out.print("<script> alert('Username Password not matched.!'); </script>");
        out.print("<script> location.href='login.jsp'; </script>");
    }
%>
