
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Đăng nhập</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'>
        <link href="${root}/css/style-login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="login-card">
            <h1>Đăng nhập</h1><br>
            <form role="form" action="/User_staffServlet" method="POST">
                <%if (session.getAttribute("error") != null) {%>
                <div>
                    <p style="color:red"><%=session.getAttribute("error")%></p>
                </div> 
                <%}%>
                <input type="text" name="username" placeholder="Username">
                <input type="password" name="password" placeholder="Password">
                <input type="hidden" value="Login" name="command">
                <input type="submit" name="Login" class="login login-submit" value="Đăng nhập">
            </form>       
        </div>

        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
    </body>
</html>
