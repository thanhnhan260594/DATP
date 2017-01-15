
<%@page import="dao.ProductDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link href="${root}/css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link href="${root}/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="${root}/css/admin/AdminLTE.css" rel="stylesheet" type="text/css"/>
    <link href="${root}/css/admin/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
    <link href="${root}/css/admin/skins/_all-skins.css" rel="stylesheet" type="text/css"/>
    <link href="${root}/css/admin/skins/_all-skins.min.css" rel="stylesheet" type="text/css"/>



    <aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

            <!-- Sidebar user panel -->
            <div class="user-panel">
                <div class="pull-left image">
                    <img src="${root}/images/admin/user2-160x160.jpg" class="img-circle" alt="User Image">
                </div>
                <div class="pull-left info">
                    <p>Alexander Pierce</p>
                    <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                </div>
            </div>
            <!-- search form -->
            <form action="#" method="get" class="sidebar-form">
                <div class="input-group">
                    <input type="text" name="q" class="form-control" placeholder="Search...">
                    <span class="input-group-btn">
                        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                        </button>
                    </span>
                </div>
            </form>
            <!-- /.search form -->
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header">
                </li>
                <li class="treeview">
                    <a href="${root}/StatisticsServlet">
                        <i class="fa fa-dashboard"></i> <span>Trang chủ</span>                         
                    </a>                        
                </li>
                <li class="treeview">
                    <a href="${root}/admin/manager_products/index.jsp">
                        <i class="fa fa-th-list"></i>
                        <span>Sản Phẩm</span> 
                        <small class="label pull-right bg-yellow"></small>
                    </a>

                </li>
                <li>
                    <a href="${root}/admin/manager_categories/index.jsp">
                        <i class="fa fa-th"></i> 
                        <span>Phân loại</span>
                        <span class="pull-right-container">
                            <small class="label pull-right bg-green">new</small>
                        </span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="${root}/admin/manager_supplies/index.jsp">
                        <i class="fa fa-sitemap"></i> 
                        <span>Thương hiệu</span>
                    </a>
                </li>

                <li class="treeview">
                    <a href="${root}/admin/manager_orders/index.jsp">
                        <i class="fa fa-edit"></i> 
                        <span>Đơn hàng</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>                        
                </li>

                <li>
                    <a href="pages/calendar.html">
                        <i class="fa fa-calendar"></i> <span>Calendar</span>
                        <span class="pull-right-container">
                            <small class="label pull-right bg-red">3</small>
                            <small class="label pull-right bg-blue">17</small>
                        </span>
                    </a>
                </li>
                <li>
                    <a href="pages/mailbox/mailbox.html">
                        <i class="fa fa-envelope"></i> <span>Mailbox</span>
                        <span class="pull-right-container">
                            <small class="label pull-right bg-yellow">12</small>
                            <small class="label pull-right bg-green">16</small>
                            <small class="label pull-right bg-red">5</small>
                        </span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-folder"></i> <span>Examples</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
                        <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
                        <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
                        <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
                        <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
                        <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
                        <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
                        <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
                        <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
                    </ul>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-share"></i> <span>Multilevel</span>
                        <span class="pull-right-container">
                            <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                        <li>
                            <a href="#"><i class="fa fa-circle-o"></i> Level One
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                                <li>
                                    <a href="#"><i class="fa fa-circle-o"></i> Level Two
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                        <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                    </ul>
                </li>
                <li><a href="documentation/index.html"><i class="fa fa-book"></i> <span>Documentation</span></a></li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>

</html>
