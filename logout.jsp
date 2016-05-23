
<%
    session.setAttribute("user", null);
    session.invalidate();
    response.sendRedirect("index.jsp");
%>