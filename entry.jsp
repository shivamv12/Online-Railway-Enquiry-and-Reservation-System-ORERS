<%-- 
    Document   : entry
    Created on : 11 Apr, 2016, 2:20:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="updatetrainDB.jsp">
            no <input type="number" placeholder="enter no" name="tid"><br/>
            name <input type="text" placeholder="enter name" name="tname"><br/>
            sorce <input type="text" value="Kanpur" name="src"><br/>
            destn <input type="text" value="Allahabad" name="dest"><br/>
            arr <input type="text" name="arrtime"><br/>
            dept <input type="text" name="depttime"><br/>
            status <input type="text" name="day"><br/>
            <input type="submit">
        </form>
    </body>
</html>
