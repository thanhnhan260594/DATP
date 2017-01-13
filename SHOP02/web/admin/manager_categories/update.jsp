
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <title>Trang quản lý thương hiệu</title>

         <c:set var="root" value="${pageContext.request.contextPath}"/>
        
        <link href="${root}/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">


    </head>


    <body class="hold-transition skin-blue sidebar-mini">

       

        <jsp:include page="../_Header.jsp"></jsp:include>
        <jsp:include page="../_Slidebar.jsp"></jsp:include>

            <div class="content-wrapper">
                <div class="col-md-12">
                    <h1>Quản lý danh mục</h1>
                    <div class="box col-md-6 ">
                        <h3 class="box-title" style="text-align: center">Thêm danh mục mới</h3>
                        <div class="col-md-3"></div>
                        <div class="box-body col-md-6 ">
                            <form role="form" action="/SHOP02/ManagerSuppliesServlet" method="post">
                                <!-- text input -->                               
                                
                                <div class="form-group">
                                    <label>Tên danh mục</label>
                                    <input type="text" name="nameCategories" class="form-control" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label>Phân loại</label>
                                    <input type="text" name="idPar" class="form-control" placeholder="">
                                </div>
                                
                                <div class=" col-md-12">
                                    <div class=" col-md-6">                                    
                                        <input type="hidden" name="command" value="insert">
                                        <input type="submit" class="btn btn-block btn-info" value="Cập nhật">
                                    </div>
                                    <div class=" col-md-6">                                    
                                        <a href="${root}/admin/manager_categories/index.jsp"><button type="button" class="btn btn-block btn-warning">Trở về</button></a>
                                    </div>

                                </div>
                            </form>
                        </div>
                        <!-- /.box-body -->
                    </div>
                </div>
            </div>

        <jsp:include page="../_Footer.jsp"></jsp:include>

    </body>
</html>
