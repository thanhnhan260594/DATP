
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <title>Trang quản trị</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link href="../css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link href="css/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link href="../css/admin/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>
    </head>


    <body class="hold-transition skin-blue sidebar-mini">
        <jsp:include page="_Header.jsp"></jsp:include>
        <jsp:include page="_Slidebar.jsp"></jsp:include>

            <div class="content-wrapper">
            <jsp:include page="_Content.jsp"></jsp:include>
            </div>
        <jsp:include page="_Footer.jsp"></jsp:include>
    </body>
</html>
