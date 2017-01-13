<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Category"%> 
<%@page import="dao.CategoryDAO"%>
<%@page import="model.User"%>
<%@page import="dao.UserDAO"%>
<%@page import="model.Supply"%>
<%@page import="dao.SupplyDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% CategoryDAO categoryDAO = new CategoryDAO(); %>
        <% SupplyDAO supplyDAO = new SupplyDAO(); %>
        <%
            User user = new User();
            if (session.getAttribute("user") != null) {
                user = (User) session.getAttribute("user");
            } else {
                user.setUserEmail("");
            }
        %>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <div class="header">
            <div class="container">
                <div class="head">
                    <div class=" logo">
                        <a href="index.jsp"><img src="images/logo.png" alt=""></a>	
                    </div>
                </div>
            </div>
            <div class="header-top">
                <div class="container">
                    <div class="col-sm-5 col-md-offset-2  header-login">
                        <ul >
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="register.jsp">Register</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                        </ul>
                    </div>

                    <div class="col-sm-5 header-social">		
                        <ul >
                            <li><a href="#"><%=user.getUserEmail()%></a> </li>
                            <li><a href="#"><i></i></a></li>
                            <li><a href="#"><i class="ic1"></i></a></li>
                            <li><a href="#"><i class="ic2"></i></a></li>
                            <li><a href="#"><i class="ic3"></i></a></li>
                            <li><a href="#"><i class="ic4"></i></a></li>
                        </ul>

                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="container">

                <div class="head-top">

                    <div class="col-sm-8 col-md-offset-2 h_menu4">
                        <nav class="navbar nav_bottom" role="navigation">

                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header nav_2">
                                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>

                            </div> 
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                <ul class="nav navbar-nav nav_1">
                                    <li><a class="color" href="index.jsp">Trang chủ</a></li>

                                    <li class="dropdown mega-dropdown active">
                                        <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Sản Phẩm<span class="caret"></span></a>				
                                        <div class="dropdown-menu ">
                                            <div class="menu-top">
                                                <div class="col1">
                                                    <div class="h_nav">
                                                        <h4>Nữ</h4>
                                                        <ul>
                                                            <%
                                                                for (Category c : categoryDAO.getListCategory(2)) {
                                                            %>
                                                            <li><a href="product.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>        
                                                                <%
                                                                    }
                                                                %>

                                                        </ul>	
                                                    </div>							
                                                </div>
                                                <div class="col1">
                                                    <div class="h_nav">
                                                        <h4>Nam</h4>
                                                        <ul>
                                                            <%
                                                                for (Category c : categoryDAO.getListCategory(1)) {
                                                            %>
                                                            <li><a href="product.jsp?categoryID=<%=c.getCategoryID()%>&pages=1"><%=c.getCategoryName()%></a></li>        
                                                                <%
                                                                    }
                                                                %>

                                                        </ul>	
                                                    </div>							
                                                </div>
                                                <div class="col1">
                                                    <div class="h_nav">
                                                        <h4>Trẻ em</h4>
                                                        <ul>
                                                            <%
                                                                for (Category c : categoryDAO.getListCategory(3)) {
                                                            %>
                                                            <li><a href="product.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>        
                                                                <%
                                                                    }
                                                                %>

                                                        </ul>	
                                                    </div>							
                                                </div>

                                                <div class="clearfix"></div>
                                            </div>                  
                                        </div>				
                                    </li>		
                                    <li><a class="color3" href="#" class="dropdown-toggle" data-toggle="dropdown">Thương hiệu</a>
                                        <div class="dropdown-menu ">

                                            <div class="col2">
                                                <div class="h_nav">
                                                    <h4 color:white>. </h4>
                                                    <ul>
                                                        <%
                                                            for (Supply s : supplyDAO.getListSupply()) {
                                                        %>
                                                        <li><a href="product.jsp?category=<%=s.getSupplyID()%>"><%=s.getSupplyName()%></a></li>        
                                                            <%
                                                                }
                                                            %>

                                                    </ul>	
                                                </div>							
                                            </div>



                                            <div class="clearfix"></div>

                                        </div>	
                                    </li>
                                    <li><a class="color4" href="404.jsp">Giới thiệu</a></li>
                                    <li><a class="color5" href="typo.html">Tin Tức</a></li>
                                    <li ><a class="color6" href="contact.jsp">Liên hệ</a></li>
                                </ul>
                            </div><!-- /.navbar-collapse -->

                        </nav>
                    </div>
                    <div class="col-sSm-2 search-right">

                        <div class="cart box_1">
                            <a href="cart.jsp">
                                <h3>
                                    <div class="total center-block">
                                        <img src="images/cart.png" alt=""/>
                                        <span><%=cart.countItem()%></span>
                                    </div>

                                </h3>
                                <h3>
                                    <div class="total"><%=cart.total()%>VNĐ</div>
                                </h3>    
                            </a>


                            <!----->

                            <!---pop-up-box---->					  
                            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                            <!---//pop-up-box---->
                            <div id="small-dialog" class="mfp-hide">
                                <div class="search-top">
                                    <div class="login-search">
                                        <input type="submit" value="">
                                        <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {
                                                    this.value = 'Search..';
                                                }">		
                                    </div>
                                    <p>Tìm kiếm</p>
                                </div>				
                            </div>
                            <script>
                                $(document).ready(function () {
                                    $('.popup-with-zoom-anim').magnificPopup({
                                        type: 'inline',
                                        fixedContentPos: false,
                                        fixedBgPos: true,
                                        overflowY: 'auto',
                                        closeBtnInside: true,
                                        preloader: false,
                                        midClick: true,
                                        removalDelay: 300,
                                        mainClass: 'my-mfp-zoom-in'
                                    });

                                });
                            </script>		
                            <!----->
                        </div>
                        <ul class="heart">                         
                            <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>	
                </div>	
            </div>
    </body>
</html>
