<%-- 
    Document   : faculty
    Created on : 07-Jun-2022, 6:12:04 am
    Author     : praveen vuddagiri
--%>

<%@page import="com.learning.entities.faculty"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Page</title>
    </head>
    <%
            faculty fac = (faculty) session.getAttribute("Faculty");
            if (fac == null) {
                response.sendRedirect("facultyLogin.jsp");
            }
    %>
    <body>
        <h1>Faculty Home will be done by Nabinoy</h1>
        
        <a href="facultyLogout">Sing Out</a>
    </body>
</html>
