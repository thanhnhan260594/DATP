<%@page import="dao.UserDAO"%>
<%@page import="dao.OrderDAO"%>
<%@page import="dao.ProductDAO"%>
<%
    User_staff us = (User_staff) session.getAttribute("us");
    if (us == null) {
        response.sendRedirect("/admin/login.jsp");
    }
%>

<%@page import="model.Product"%>
<%@page import="model.User_staff"%>
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
        <link href="${root}/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

        <script type="text/javascript" src="http://www.google.com/jsapi"></script>
        <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
                var data = google.visualization.arrayToDataTable([
                    ['Country', 'Area(square km)'],
            <c:forEach var="item" items="${listItem}">['${item.name}',${item.value}],</c:forEach>
                ]);
                // Set chart options
                var options = {
                    'title': 'Thống kê sản phẩm theo thương hiệu',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 950,
                    'height': 400
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('Chart'));
                chart.draw(data, options);
            }
            </script>

      
    </head>

    <body class="hold-transition skin-green sidebar-mini">
        <%
            ProductDAO productDAO = new ProductDAO();
            OrderDAO orderDAO = new OrderDAO();
            UserDAO userDAO = new UserDAO();
            int countProduct, countOrder, countUser;
            countProduct = productDAO.countProduct();
            countOrder = orderDAO.countOrder();
            countUser = userDAO.countUser();
        %>
        <jsp:include page="_Header.jsp"></jsp:include>
        <jsp:include page="_Slidebar.jsp"></jsp:include>

            <div class="content-wrapper">
                <section class="content-header">
                    <h1>Trang chủ</h1>            
                </section>
                
                <section class="content">
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="info-box">
                            <span class="info-box-icon bg-aqua"><i class="ion ion-ios-people-outline"></i></span>
                            <div class="info-box-content">
                                <span class="info-box-text">Tài khoản</span>
                                <span class="info-box-number"><%=countUser%></span>
                        </div><!-- /.info-box-content -->
                    </div><!-- /.info-box -->
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-green"><i class="fa fa-balance-scale"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Đơn hàng</span>
                            <span class="info-box-number"><%=countOrder%></span>
                        </div><!-- /.info-box-content -->
                    </div><!-- /.info-box -->
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="info-box">
                        <span class="info-box-icon bg-yellow"><i class="fa fa-files-o"></i></span>
                        <div class="info-box-content">
                            <span class="info-box-text">Sản Phẩm</span>
                            <span class="info-box-number"><%=countProduct%></span>
                        </div><!-- /.info-box-content -->
                    </div><!-- /.info-box -->
                </div>

                <!-- /.row -->
                <!-- Main row -->
                <div class="row" >
                    <!-- Left col -->
                    <div class="col-md-12" >
                        <div class="box">                      
                            <!-- /.box-header -->
                            <div class="box-body" style="display: block;">
                                <div id="Chart"></div>
                                <div id='calendar'></div>
                                <div id="calendar" style="width: 100%"></div>
                            </div>
                            <!-- /.box -->
                        </div>
                        <div class="col-lg-7 connectedSortable">

                            <div id="calendar" style="width: 100%"></div>

                        </div>

                        <section class="col-lg-5 connectedSortable">
                            <!-- Calendar -->
                            <div class="box box-solid bg-green-gradient">
                                <div class="box-header">
                                    <i class="fa fa-calendar"></i>

                                    <h3 class="box-title">Calendar</h3>
                                    <!-- tools box -->
                                    <div class="pull-right box-tools">
                                        <!-- button with a dropdown -->
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown">
                                                <i class="fa fa-bars"></i></button>
                                            <ul class="dropdown-menu pull-right" role="menu">
                                                <li><a href="#">Add new event</a></li>
                                                <li><a href="#">Clear events</a></li>
                                                <li class="divider"></li>
                                                <li><a href="#">View calendar</a></li>
                                            </ul>
                                        </div>
                                        <button type="button" class="btn btn-success btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                                        </button>
                                        <button type="button" class="btn btn-success btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="box-body no-padding">
                                    <div id="calendar" style="width: 100%"></div>
                                </div>

                            </div>
                        </section>
                    </div>
                </div>
            </section>                
        </div>





        <jsp:include page="_Footer.jsp"></jsp:include>

    </body>
</html>
