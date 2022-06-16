<%-- 
    Document   : temp
    Created on : 24-May-2022, 11:01:51 pm
    Author     : praveen vuddagiri
--%>

<%@page import="com.learning.entities.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            student st = (student)session.getAttribute("Student");
            out.println(st.getId()+"<br>");            
            out.println(st.getName()+"<br>");
            out.println(st.getEmail()+"<br>");
            out.println(st.getPhone()+"<br>");
            out.println(st.getDob()+"<br>");
            out.println(st.getAdd()+"<br>");
            out.println(st.getGen()+"<br>");
            out.println(st.getClg()+"<br>");
            out.println(st.getPass()+"<br>");
            out.println(st.getImg()+"<br>");

        %>
        <img src="src/stud-img/<%=st.getImg()%>" height="200px" alt='studentImage'/>
    </body>
</html>
