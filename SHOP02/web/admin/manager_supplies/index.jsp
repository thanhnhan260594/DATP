<%@page import="model.User_staff"%>
<%@page import="model.Supply"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.SupplyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    User_staff us = (User_staff) session.getAttribute("us");
    if (us == null) {
        response.sendRedirect("/admin/login.jsp");
    }
%>
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


    <body class="hold-transition skin-green sidebar-mini">

        <%            SupplyDAO supplyDAO = new SupplyDAO();
            ArrayList<Supply> listSupply = supplyDAO.getListSupply();
        %>

        <jsp:include page="../_Header.jsp"></jsp:include>
        <jsp:include page="../_Slidebar.jsp"></jsp:include>

            <div class="content-wrapper">
                <div class="col-md-12">
                    <h1>Danh sách nhà cung cấp</h1>
                    <div class="box">
                        <div class="box-header">
                            <div class="col-sm-1 "></div>
                            <div class="col-sm-2">

                                <a href="${root}/admin/manager_supplies/insert.jsp">
                                <button type="button" class="btn btn-block btn-info btn-xs"><i class="fa fa-plus"></i> Thêm nhà cung cấp</button>
                            </a>
                        </div>

                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <div class="row"><div class="col-sm-12"><table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                                    <thead>
                                        <tr role="row">
                                            <th  style="width: 13%;">Mã nhà cung cấp</th>
                                            <th  style="width: 25%;">Tên nhà cung cấp</th>
                                            <th  style="width: 32%;">Địa chỉ</th>
                                            <th  style="width: 20%;">Điện thoại</th>
                                            <th  style="width: 10%;"> </th>

                                        </tr>
                                    </thead>

                                    <tbody>
                                        <%
                                            for (Supply supply : listSupply) {
                                        %>
                                        <tr role="row" class="odd">
                                            <td class="sorting_1"><%=supply.getSupplyID()%></td>
                                            <td><%=supply.getSupplyName()%></td>
                                            <td><%=supply.getSuppleAddress()%> </td>
                                            <td><%=supply.getSupplePhone()%></td>
                                            <td>
                                    <center>
                                        <a href="${root}/admin/manager_supplies/update.jsp?command=update&id_sup=<%=supply.getSupplyID()%>&nameSupplies=<%=supply.getSupplyName()%>&address=<%=supply.getSuppleAddress()%>&phone=<%=supply.getSupplePhone()%>"><i class="fa fa-fw fa-edit"></i></a> &nbsp;&nbsp;|&nbsp;&nbsp;
                                        <a href="${root}/ManagerSuppliesServlet?command=delete&id_sup=<%=supply.getSupplyID()%>"><i class="fa fa-fw fa-trash-o"></i></a>
                                    </center>
                                    </td>
                                    </tr>
                                    <%}%>
                                    </tbody>

                                </table></div></div>
                        <div class="row">
                            <div class="col-sm-8"></div>
                            <div class="col-sm-4">
                                <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination"><li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li><li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li><li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li><li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li></ul></div>
                            </div></div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
        </div>



    </body>
</html>
