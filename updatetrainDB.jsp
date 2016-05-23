<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project?zeroDateTimeBehavior=convertToNull", "root", "password");
    Statement st = con.createStatement();
    String a = request.getParameter("no");    
    String b = request.getParameter("tnme");
    String c = request.getParameter("src");
    String d = request.getParameter("dest");
    String e = request.getParameter("atim");
    String f = request.getParameter("dtim");
    String g = request.getParameter("status");
    String query = "insert into train values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"');";
    int check = st.executeUpdate(query);
    if(check == 1)  {
    out.print("<script> alert('Entry Successfull.!'); </script>");
    //response.sendRedirect("adminupdate.jsp");
    out.print("<script> location.href='adminupdate.jsp'; </script>");
    }
    %>