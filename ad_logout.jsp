<%
    session.setAttribute("admin", null);
    session.invalidate();
    response.sendRedirect("admin.jsp");
%>