<%-- 
    Document   : update
    Created on : Jan 12, 2017, 2:09:42 PM
    Author     : thanh_000
--%>

<%@page import="model.User_staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User_staff us = (User_staff) session.getAttribute("us");
            if (us == null) {
                response.sendRedirect("/admin/login.jsp");
            }            
        %>
    </body>
</html>
