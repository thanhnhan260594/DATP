<%@page import="model.User_staff"%>
<%@page import="model.Order"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.OrderDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

        <title>Trang quản lý đơn hàng</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>

        <link href="${root}/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
        <link href="${root}/css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">


    </head>


    <body class="hold-transition skin-blue sidebar-mini">

        <%
            
            User_staff us = (User_staff) session.getAttribute("us");
            if (us == null) {
                response.sendRedirect("/SHOP02/admin/login.jsp");
            }            
        
            OrderDAO orderDAO = new OrderDAO();
            ArrayList<Order> listOrder = orderDAO.getListOrder();
        %>

        <jsp:include page="../_Header.jsp"></jsp:include>
        <jsp:include page="../_Slidebar.jsp"></jsp:include>

            <div class="content-wrapper">
                <div class="col-md-12">
                    <h1>Danh sách đơn hàng</h1>
                    <div class="box">
                        <div class="box-header">
                            <div class="col-sm-1 "></div>
                            <div class="col-sm-2">


                            </div>

                        </div>

                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row"><div class="col-sm-12"><table 
                                    id="example1" class="table table-bordered table-striped dataTable" role="grid" 
                                    aria-describedby="example1_info">
                                    <thead>
                                        <tr role="row">
                                            <th  style="width: 10%;">Mã đơn hàng</th>
                                            <th  style="width: 10%;">Mã khách hàng</th>
                                            <th  style="width: 10%;">Ngày đặt</th>
                                            <th  style="width: 10%;">Tổng tiền</th>
                                            <th  style="width: 10%;">Tình trạng</th>


                                            <th  style="width: 10%;"> </th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                    <%
                                        for (Order o : listOrder) {
                                    %>
                                    <tr role="row" class="odd">
                                        <td><%=o.getOrderID()%></td>
                                        <td><%=o.getCustomerID()%></td>
                                        <td><%=o.getDate()%></td>
                                        <td><%=o.getTotal()%> VNĐ</td>
                                        <td> </td>

                                        <td>
                                <center>
                                    <a href="#"><i class="fa fa-fw fa-edit"></i></a> &nbsp;&nbsp;|&nbsp;&nbsp;
                                    <a href="#"><i class="fa fa-fw fa-trash-o"></i></a>
                                </center>
                                </td>
                                </tr>
                                <%}%>
                                </tbody>

                            </table></div></div>
                    <div class="row">
                        <div class="col-sm-8"></div>
                        <div class="col-sm-4">
                            <div class="dataTables_paginate 
                                 paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li 
                                        class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li 
                                        class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" 
                                                                      tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li 
                                        class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" 
                                                                tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li 
                                        class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" 
                                                                tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li 
                                        class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div>
                        </div></div>
                </div>
            </div>
            <!-- /.box-body -->
        </div>


    </div>
</body>
</html>
